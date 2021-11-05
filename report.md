# AttackLab实验报告

致理-信计01 姚嘉宸 2020012700

## Phase 1

### 实验目的

通过缓冲区溢出攻击，使`getbuf`返回时执行`touch1`函数。

### 实验原理

`getbuf`函数读入数据时，不会判断`buf`数组大小是否$\ge$输入长度。因此当输入长度超过了`BUFFER_SIZE`后，将可以修改栈上`buf`更高地址的内存。

根据x86的运行栈结构，函数调用时会将return address压栈，如图：

<img src="https://img.i207m.top/2021/10_ed4ef60cdd9772ec68d8bdbe85503df7.png" height=300/>

设计输入数据，在恰当的位置（`%rsp`初始位置）填入`touch1`的地址，恰好覆盖return address，就可以在`getbuf`返回后调用`touch1`了。

### 实验过程

反汇编`getbuf`函数：

```assembly
00000000004017ae <getbuf>:
  4017ae:	48 83 ec 38          	sub    $0x38,%rsp  # buffer_size = 0x38
  4017b2:	48 89 e7             	mov    %rsp,%rdi
  4017b5:	e8 94 02 00 00       	callq  401a4e <Gets>
  4017ba:	b8 01 00 00 00       	mov    $0x1,%eax
  4017bf:	48 83 c4 38          	add    $0x38,%rsp
  4017c3:	c3                   	retq 
```

发现编译器为`buf`预留了0x38位空间。因此不妨输入数据前0x38位填入`00`，然后紧跟`touch1`的地址，就可以恰好修改return address，完成攻击。

### 心得技巧

注意数组下标从低到高，对应的内存地址也是从低到高。也即，`touch1`的地址`0x4017c4`应该这样输入：`c4 17 40`。

## Phase 2

### 实验目的

通过缓冲区溢出攻击，使`getbuf`返回时执行`touch2`函数，并传入某个unsigned类型参数。

### 实验原理

基于Phase 1的做法，现在我们在调用`touch2`之前要将立即数`cookie`存入`%rdi`寄存器。也就是我们想先执行：

```assembly
inject:
    movq $0x72326992,%rdi  # my cookie
    ret
```

我们可以将这段汇编的二进制代码存在`buf`内，执行完这段代码，再调用`touch2`。注意到`ret`会自动将`%rsp`-8，因此只需要在原来的return address存`inject`函数地址，在它之上存`touch2`函数地址即可。

### 实验过程

为了获得`buf`的地址（这依赖于ASLR未打开），需要使用gdb工具。在`getbuf`函数处打断点，然后用`p &buf[0]`获得`buf`首地址。

![image-20211026212811527](https://img.i207m.top/2021/10_1a676f53a6c158bd9e3b3cf592ca1c02.png)

使用gcc将实验原理中的汇编代码编译为二进制，然后把它从`buf[0]`开始存放。用`00`填充至0x38位，接下来存`buf[0]`地址（`getbuf`的return address），然后存`touch2`地址。

### 心得技巧

注意填充机器码的顺序，是从低地址到高地址。

我最初尝试时，构思的调用`touch2`函数方法是：修改`(%rsp)`的值，然后`ret`。但是多次尝试均发现这条指令会导致RE，花费了很多时间解决无果，遂更换成现在的做法。

## Phase 3

### 实验目的

通过缓冲区溢出攻击，使`getbuf`返回时执行`touch3`函数，并传入字符串指针，它指向cookie字符串。

### 实验原理

这个实验相比Phase 2，最主要的区别就是要找到空间储存cookie字符串。它不能直接存在`buf`里，因为`getbuf`返回后会释放`buf`空间。我们可以尝试在return address更高的地址找空间。经过测试，`%rsp`+16地址可以储存cookie而不发生异常。因此，只需令`getbuf`返回后，将`%edi`置为原`%rsp`+16，再调用`touch3`即可。

此时栈上情况：

<img src="https://img.i207m.top/2021/11_dde916f0036fc67cf5cafa4199fe2954.png" height=300/>

### 实验过程

经过测试，在栈中，return address之上为main函数的返回地址，如果它被修改会产生RE。但是再往上的内存地址可以修改而不会产生RE，也就是原`%rsp`+16地址可以储存cookie而不发生异常。

我们要将`%edi`置为原`%rsp`+16，汇编代码如下：

```assembly
inject:
    movq $0x556447C8,%rdi
    ret
```

接下来开始构造数据，前0x38用`00`填充，然后填`inject`代码地址（也就是`buf`首地址），然后填main函数返回地址（不填会RE），然后填cookie字符串。覆写后的内存情况请见“实验原理”中的图。

### 心得技巧

注意：字符串结束后要加上`\0`。当然，`gets`读入后也会自动在最后补`\0`的。

事后发现有一个简单做法：cookie就存放在`buf`数组内，`getbuf`返回后，将`%rsp`减去一定大小（在此题中，0x38），这样，再调用`touch3`及其他函数，cookie就不会被覆盖了。

## Phase 4

### 实验目的

现代平台为了避免简单的缓冲区溢出攻击，设计了两个机制：

- ASLR，地址空间配置随机加载
- 数据执行保护，阻止代码从仅数据内存页中运行

面对以上两个机制，我们需要调用`touch2`并传入cookie作为整型参数。

### 实验原理

这样的攻击方式称为ROP。我们可以通过修改return address及以上的内存，使其依次执行特定的机器语言指令序列（称为为gadgets）。Gadgets就是以ret结尾的若干指令。程序从`%rsp`取出地址，并将`%rsp`-8，执行取出地址对应的gadget；`ret`后，程序再从`%rsp`（这时已经-8了）取出地址，修改`%rsp`，执行第二个gadget……以此类推，可以按顺序执行我们给定的gadgets。

由于libc库（在本题中，是farm）所在的内存地址是确定的，因此不受ASLR影响。由于我们选择的gadgets本身处在可以被执行的内存段中，因此也不受“数据执行保护”的影响。

### 实验过程

我们要用gadgets凑出想实现的函数，首先要获取所有可能的gadgets。这里我们可以使用gdb-peda的dumprop方法，获得指定内存范围内的rop gadgets。如图：

![image-20211102205852411](https://img.i207m.top/2021/11_e8bcc2a26cc97cf159c961aa64e1e7e0.png)

我们希望修改`%rdi`，通过查找，可用的修改`%rdi`的gadgets为`0x4019b5: mov %rax,%rdi; nop; retq`。这就需要我们修改`%rax`，继续搜索，可得`0x4019d0: pop %rax; nop; nop; nop; retq`。考虑`pop`指令是从`%rsp`地址拿出数据，存到寄存器，因此我们在栈的上一个位置存cookie的值即可。最后跟上`touch2`的地址。栈结构如图：

<img src="https://img.i207m.top/2021/11_01e4d859656691901b12bd96e5b0d783.png" height=300/>

### 心得技巧

借助外部工具可以极大提高效率（即，使用gdb-peda的dumprop）。

做ROP编程要有清晰的目的，我们要修改`%rdi`，然后寻找，发现可以用`%rax`修改，然后再找修改`%rax`的方法，最终得到答案。

## Phase 5

### 实验目的

使用ROP方法，使`getbuf`返回时执行`touch3`函数，并传入字符串指针，它指向cookie字符串。

### 实验原理

Phase 4和Phase 5的原理都是ROP编程。关于它的原理请见Phase4-实验原理。

对于Phase 5，观察farm中的函数，注意到大部分函数都形如`setval_XXX`，但有一个特殊的`add_xy`函数，推断这个函数是解题关键。

如何利用`add_xy`？由于ASLR，我们不知道栈地址，但是，我们知道栈上每个变量的相对位置，因此我们可以利用`add_xy`，将`%rsp`加上偏移量，使其恰好指向cookie字符串，然后传参调用`touch3`即可。当然，具体如何修改`%rdi,%rsi,%rax`，需要进行寻找和尝试，将在实验过程中描述。

### 实验过程

根据实验原理的叙述，我们需要实现三个任务：修改`%rdi`，修改`%rsi`，把`%rax`赋值给`%rdi`。其中前两件事是为了调用`add_xy`函数。

在gadgets中搜索`%rdi`，发现`0x4019b5: mov %rax,%rdi; nop; retq`（只有）这条指令能修改`%rdi`。事实上它就是第三个任务：把`%rax`赋值给`%rdi`。

然后，`%rdi`和`%rsi`中，有一个要存`%rsp`的值，另一个要存偏移量。

搜索一下哪条指令能修改`%rsi`，发现我们不能修改`%rsi`，但是可以用`mov %ecx,%esi`修改`%esi`。继续搜索可以修改`%ecx`的指令，得到`mov %edx,%ecx`。再搜索可以修改`%edx`的指令，得到`mov %eax,%edx`。我们怎样修改`%eax`？搜索发现`pop %rax`可以从栈中取值赋给`%rax`。很好，我们终于绕出来了。总结一下修改`%esi`的过程：`%eax -> %edx -> %ecx -> %esi`。从过程中我们可以看到，`%esi`是32位的，不能存64位的地址，因此应该用`%esi`存偏移量。

如何把`%rsp`的值存到`%rdi`？搜索gadgets得到`0x401a11: mov %rsp,%rax; retq`。

最后我们要确定一下偏移量的大小，实际就是数指令条数×8。

总计需要8条gadgets。汇总一下执行指令的总过程：

```assembly
11 1a 40 00 00 00 00 00 /* 0x401a11: mov %rsp,%rax; retq  存rsp，希望+0x48 */
b5 19 40 00 00 00 00 00 /* 0x4019b5: mov %rax,%rdi; nop; retq  用来改rdi */
dd 19 40 00 00 00 00 00 /* 0x4019dd: pop %rax; nop; nop; retq  任意改rax */
48 00 00 00 00 00 00 00 /* 0x48，偏移量 */
95 1a 40 00 00 00 00 00 /* 0x401a95: mov %eax,%edx; retq  把eax暂存edx */
55 1a 40 00 00 00 00 00 /* 0x401a55: mov %edx,%ecx; and %dl,%dl; retq  改%ecx */
7f 1a 40 00 00 00 00 00 /* 0x401a7f: mov %ecx,%esi; retq  改esi，现在esi存0x48 */
e8 19 40 00 00 00 00 00 /* 0x4019e8: lea (%rdi,%rsi,1),%rax; retq  用来做加法 */
b5 19 40 00 00 00 00 00 /* 0x4019b5: mov %rax,%rdi; nop; retq  只有这一个用来改rdi */
09 19 40 00 00 00 00 00 /* 用来调用touch3 */
37 32 33 32 36 39 39 32 /* cookie */
```

### 心得技巧

- 需要注意指令的宽度，有关内存地址的操作要使用`q`后缀的指令、`r`开头的寄存器。
- 不能使用地址中含有`0a`的gadgets！它是换行符，会停止读入。我在做实验时卡在这里一段时间。

在实验过程中，我还发现了一个7步做法，可能不具有普适性（因为每个人的gadgets有随机性），陈述如下：

我在farm里发现了这个指令：`0x4019da: xchg %eax,%ecx; retq`。查询可得这条指令的作用是把`%eax`和`%ecx`交换。我们可以用这条指令缩短修改`%rsi`的路线，通过测试：

- 原路线：`%eax -> %edx -> %ecx -> %esi`
- 新路线：`%eax -> %ecx -> %esi`

这样，我们就把8条指令压到了7条。
