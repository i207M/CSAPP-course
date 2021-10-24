b *(0x4017c3)
run -q -i 5.hex
set disassembly-flavor att

## Level 1

注意/0

## Level 2

这道小题写了很久，实际是因为自己傻了。需要修改的是%rsp所指向的栈地址，而不是修改%rsp，其实我早就做完了，就是多改了一步导致RE了！

不过起码环境配好了。

## Level 3

~~很奇怪，栈里的东西不能随便改，也不能随便开空间，能修改的地方只有栈里面main的retrun address之上的内容。少用和%rsp相关的东西，它很乱。~~

很奇怪，第二天再试，它又可以了，就是往上存就行。

## Level 4

见注释
