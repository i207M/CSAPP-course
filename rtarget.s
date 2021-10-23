
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	48 83 ec 08          	sub    $0x8,%rsp
  400c4c:	48 8b 05 a5 43 20 00 	mov    0x2043a5(%rip),%rax        # 604ff8 <__gmon_start__>
  400c53:	48 85 c0             	test   %rax,%rax
  400c56:	74 02                	je     400c5a <_init+0x12>
  400c58:	ff d0                	callq  *%rax
  400c5a:	48 83 c4 08          	add    $0x8,%rsp
  400c5e:	c3                   	retq   

Disassembly of section .plt:

0000000000400c60 <.plt>:
  400c60:	ff 35 a2 43 20 00    	pushq  0x2043a2(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c66:	ff 25 a4 43 20 00    	jmpq   *0x2043a4(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c70 <strcasecmp@plt>:
  400c70:	ff 25 a2 43 20 00    	jmpq   *0x2043a2(%rip)        # 605018 <strcasecmp@GLIBC_2.2.5>
  400c76:	68 00 00 00 00       	pushq  $0x0
  400c7b:	e9 e0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c80 <__errno_location@plt>:
  400c80:	ff 25 9a 43 20 00    	jmpq   *0x20439a(%rip)        # 605020 <__errno_location@GLIBC_2.2.5>
  400c86:	68 01 00 00 00       	pushq  $0x1
  400c8b:	e9 d0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c90 <srandom@plt>:
  400c90:	ff 25 92 43 20 00    	jmpq   *0x204392(%rip)        # 605028 <srandom@GLIBC_2.2.5>
  400c96:	68 02 00 00 00       	pushq  $0x2
  400c9b:	e9 c0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ca0 <strncmp@plt>:
  400ca0:	ff 25 8a 43 20 00    	jmpq   *0x20438a(%rip)        # 605030 <strncmp@GLIBC_2.2.5>
  400ca6:	68 03 00 00 00       	pushq  $0x3
  400cab:	e9 b0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cb0 <strcpy@plt>:
  400cb0:	ff 25 82 43 20 00    	jmpq   *0x204382(%rip)        # 605038 <strcpy@GLIBC_2.2.5>
  400cb6:	68 04 00 00 00       	pushq  $0x4
  400cbb:	e9 a0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cc0 <puts@plt>:
  400cc0:	ff 25 7a 43 20 00    	jmpq   *0x20437a(%rip)        # 605040 <puts@GLIBC_2.2.5>
  400cc6:	68 05 00 00 00       	pushq  $0x5
  400ccb:	e9 90 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cd0 <write@plt>:
  400cd0:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 605048 <write@GLIBC_2.2.5>
  400cd6:	68 06 00 00 00       	pushq  $0x6
  400cdb:	e9 80 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ce0 <__stack_chk_fail@plt>:
  400ce0:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 605050 <__stack_chk_fail@GLIBC_2.4>
  400ce6:	68 07 00 00 00       	pushq  $0x7
  400ceb:	e9 70 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cf0 <mmap@plt>:
  400cf0:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 605058 <mmap@GLIBC_2.2.5>
  400cf6:	68 08 00 00 00       	pushq  $0x8
  400cfb:	e9 60 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d00 <memset@plt>:
  400d00:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 605060 <memset@GLIBC_2.2.5>
  400d06:	68 09 00 00 00       	pushq  $0x9
  400d0b:	e9 50 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d10 <alarm@plt>:
  400d10:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 605068 <alarm@GLIBC_2.2.5>
  400d16:	68 0a 00 00 00       	pushq  $0xa
  400d1b:	e9 40 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d20 <close@plt>:
  400d20:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 605070 <close@GLIBC_2.2.5>
  400d26:	68 0b 00 00 00       	pushq  $0xb
  400d2b:	e9 30 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d30 <read@plt>:
  400d30:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 605078 <read@GLIBC_2.2.5>
  400d36:	68 0c 00 00 00       	pushq  $0xc
  400d3b:	e9 20 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d40 <signal@plt>:
  400d40:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 605080 <signal@GLIBC_2.2.5>
  400d46:	68 0d 00 00 00       	pushq  $0xd
  400d4b:	e9 10 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d50 <gethostbyname@plt>:
  400d50:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605088 <gethostbyname@GLIBC_2.2.5>
  400d56:	68 0e 00 00 00       	pushq  $0xe
  400d5b:	e9 00 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d60 <__memmove_chk@plt>:
  400d60:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605090 <__memmove_chk@GLIBC_2.3.4>
  400d66:	68 0f 00 00 00       	pushq  $0xf
  400d6b:	e9 f0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d70 <strtol@plt>:
  400d70:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605098 <strtol@GLIBC_2.2.5>
  400d76:	68 10 00 00 00       	pushq  $0x10
  400d7b:	e9 e0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d80 <memcpy@plt>:
  400d80:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 6050a0 <memcpy@GLIBC_2.14>
  400d86:	68 11 00 00 00       	pushq  $0x11
  400d8b:	e9 d0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d90 <time@plt>:
  400d90:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 6050a8 <time@GLIBC_2.2.5>
  400d96:	68 12 00 00 00       	pushq  $0x12
  400d9b:	e9 c0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400da0 <random@plt>:
  400da0:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 6050b0 <random@GLIBC_2.2.5>
  400da6:	68 13 00 00 00       	pushq  $0x13
  400dab:	e9 b0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400db0 <_IO_getc@plt>:
  400db0:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 6050b8 <_IO_getc@GLIBC_2.2.5>
  400db6:	68 14 00 00 00       	pushq  $0x14
  400dbb:	e9 a0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dc0 <__isoc99_sscanf@plt>:
  400dc0:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 6050c0 <__isoc99_sscanf@GLIBC_2.7>
  400dc6:	68 15 00 00 00       	pushq  $0x15
  400dcb:	e9 90 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dd0 <munmap@plt>:
  400dd0:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 6050c8 <munmap@GLIBC_2.2.5>
  400dd6:	68 16 00 00 00       	pushq  $0x16
  400ddb:	e9 80 fe ff ff       	jmpq   400c60 <.plt>

0000000000400de0 <__printf_chk@plt>:
  400de0:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 6050d0 <__printf_chk@GLIBC_2.3.4>
  400de6:	68 17 00 00 00       	pushq  $0x17
  400deb:	e9 70 fe ff ff       	jmpq   400c60 <.plt>

0000000000400df0 <fopen@plt>:
  400df0:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 6050d8 <fopen@GLIBC_2.2.5>
  400df6:	68 18 00 00 00       	pushq  $0x18
  400dfb:	e9 60 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e00 <getopt@plt>:
  400e00:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 6050e0 <getopt@GLIBC_2.2.5>
  400e06:	68 19 00 00 00       	pushq  $0x19
  400e0b:	e9 50 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e10 <strtoul@plt>:
  400e10:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 6050e8 <strtoul@GLIBC_2.2.5>
  400e16:	68 1a 00 00 00       	pushq  $0x1a
  400e1b:	e9 40 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e20 <gethostname@plt>:
  400e20:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 6050f0 <gethostname@GLIBC_2.2.5>
  400e26:	68 1b 00 00 00       	pushq  $0x1b
  400e2b:	e9 30 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e30 <exit@plt>:
  400e30:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 6050f8 <exit@GLIBC_2.2.5>
  400e36:	68 1c 00 00 00       	pushq  $0x1c
  400e3b:	e9 20 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e40 <connect@plt>:
  400e40:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 605100 <connect@GLIBC_2.2.5>
  400e46:	68 1d 00 00 00       	pushq  $0x1d
  400e4b:	e9 10 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e50 <__fprintf_chk@plt>:
  400e50:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 605108 <__fprintf_chk@GLIBC_2.3.4>
  400e56:	68 1e 00 00 00       	pushq  $0x1e
  400e5b:	e9 00 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e60 <__sprintf_chk@plt>:
  400e60:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 605110 <__sprintf_chk@GLIBC_2.3.4>
  400e66:	68 1f 00 00 00       	pushq  $0x1f
  400e6b:	e9 f0 fd ff ff       	jmpq   400c60 <.plt>

0000000000400e70 <socket@plt>:
  400e70:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 605118 <socket@GLIBC_2.2.5>
  400e76:	68 20 00 00 00       	pushq  $0x20
  400e7b:	e9 e0 fd ff ff       	jmpq   400c60 <.plt>

Disassembly of section .text:

0000000000400e80 <_start>:
  400e80:	31 ed                	xor    %ebp,%ebp
  400e82:	49 89 d1             	mov    %rdx,%r9
  400e85:	5e                   	pop    %rsi
  400e86:	48 89 e2             	mov    %rsp,%rdx
  400e89:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400e8d:	50                   	push   %rax
  400e8e:	54                   	push   %rsp
  400e8f:	49 c7 c0 90 2f 40 00 	mov    $0x402f90,%r8
  400e96:	48 c7 c1 20 2f 40 00 	mov    $0x402f20,%rcx
  400e9d:	48 c7 c7 8e 11 40 00 	mov    $0x40118e,%rdi
  400ea4:	ff 15 46 41 20 00    	callq  *0x204146(%rip)        # 604ff0 <__libc_start_main@GLIBC_2.2.5>
  400eaa:	f4                   	hlt    
  400eab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400eb0 <_dl_relocate_static_pie>:
  400eb0:	f3 c3                	repz retq 
  400eb2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400eb9:	00 00 00 
  400ebc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ec0 <deregister_tm_clones>:
  400ec0:	55                   	push   %rbp
  400ec1:	b8 90 54 60 00       	mov    $0x605490,%eax
  400ec6:	48 3d 90 54 60 00    	cmp    $0x605490,%rax
  400ecc:	48 89 e5             	mov    %rsp,%rbp
  400ecf:	74 17                	je     400ee8 <deregister_tm_clones+0x28>
  400ed1:	b8 00 00 00 00       	mov    $0x0,%eax
  400ed6:	48 85 c0             	test   %rax,%rax
  400ed9:	74 0d                	je     400ee8 <deregister_tm_clones+0x28>
  400edb:	5d                   	pop    %rbp
  400edc:	bf 90 54 60 00       	mov    $0x605490,%edi
  400ee1:	ff e0                	jmpq   *%rax
  400ee3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400ee8:	5d                   	pop    %rbp
  400ee9:	c3                   	retq   
  400eea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ef0 <register_tm_clones>:
  400ef0:	be 90 54 60 00       	mov    $0x605490,%esi
  400ef5:	55                   	push   %rbp
  400ef6:	48 81 ee 90 54 60 00 	sub    $0x605490,%rsi
  400efd:	48 89 e5             	mov    %rsp,%rbp
  400f00:	48 c1 fe 03          	sar    $0x3,%rsi
  400f04:	48 89 f0             	mov    %rsi,%rax
  400f07:	48 c1 e8 3f          	shr    $0x3f,%rax
  400f0b:	48 01 c6             	add    %rax,%rsi
  400f0e:	48 d1 fe             	sar    %rsi
  400f11:	74 15                	je     400f28 <register_tm_clones+0x38>
  400f13:	b8 00 00 00 00       	mov    $0x0,%eax
  400f18:	48 85 c0             	test   %rax,%rax
  400f1b:	74 0b                	je     400f28 <register_tm_clones+0x38>
  400f1d:	5d                   	pop    %rbp
  400f1e:	bf 90 54 60 00       	mov    $0x605490,%edi
  400f23:	ff e0                	jmpq   *%rax
  400f25:	0f 1f 00             	nopl   (%rax)
  400f28:	5d                   	pop    %rbp
  400f29:	c3                   	retq   
  400f2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f30 <__do_global_dtors_aux>:
  400f30:	80 3d 91 45 20 00 00 	cmpb   $0x0,0x204591(%rip)        # 6054c8 <completed.7698>
  400f37:	75 17                	jne    400f50 <__do_global_dtors_aux+0x20>
  400f39:	55                   	push   %rbp
  400f3a:	48 89 e5             	mov    %rsp,%rbp
  400f3d:	e8 7e ff ff ff       	callq  400ec0 <deregister_tm_clones>
  400f42:	c6 05 7f 45 20 00 01 	movb   $0x1,0x20457f(%rip)        # 6054c8 <completed.7698>
  400f49:	5d                   	pop    %rbp
  400f4a:	c3                   	retq   
  400f4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400f50:	f3 c3                	repz retq 
  400f52:	0f 1f 40 00          	nopl   0x0(%rax)
  400f56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f5d:	00 00 00 

0000000000400f60 <frame_dummy>:
  400f60:	55                   	push   %rbp
  400f61:	48 89 e5             	mov    %rsp,%rbp
  400f64:	5d                   	pop    %rbp
  400f65:	eb 89                	jmp    400ef0 <register_tm_clones>

0000000000400f67 <usage>:
  400f67:	48 83 ec 08          	sub    $0x8,%rsp
  400f6b:	48 89 fa             	mov    %rdi,%rdx
  400f6e:	83 3d 93 45 20 00 00 	cmpl   $0x0,0x204593(%rip)        # 605508 <is_checker>
  400f75:	74 50                	je     400fc7 <usage+0x60>
  400f77:	48 8d 35 2a 20 00 00 	lea    0x202a(%rip),%rsi        # 402fa8 <_IO_stdin_used+0x8>
  400f7e:	bf 01 00 00 00       	mov    $0x1,%edi
  400f83:	b8 00 00 00 00       	mov    $0x0,%eax
  400f88:	e8 53 fe ff ff       	callq  400de0 <__printf_chk@plt>
  400f8d:	48 8d 3d 4c 20 00 00 	lea    0x204c(%rip),%rdi        # 402fe0 <_IO_stdin_used+0x40>
  400f94:	e8 27 fd ff ff       	callq  400cc0 <puts@plt>
  400f99:	48 8d 3d b8 21 00 00 	lea    0x21b8(%rip),%rdi        # 403158 <_IO_stdin_used+0x1b8>
  400fa0:	e8 1b fd ff ff       	callq  400cc0 <puts@plt>
  400fa5:	48 8d 3d 5c 20 00 00 	lea    0x205c(%rip),%rdi        # 403008 <_IO_stdin_used+0x68>
  400fac:	e8 0f fd ff ff       	callq  400cc0 <puts@plt>
  400fb1:	48 8d 3d ba 21 00 00 	lea    0x21ba(%rip),%rdi        # 403172 <_IO_stdin_used+0x1d2>
  400fb8:	e8 03 fd ff ff       	callq  400cc0 <puts@plt>
  400fbd:	bf 00 00 00 00       	mov    $0x0,%edi
  400fc2:	e8 69 fe ff ff       	callq  400e30 <exit@plt>
  400fc7:	48 8d 35 c0 21 00 00 	lea    0x21c0(%rip),%rsi        # 40318e <_IO_stdin_used+0x1ee>
  400fce:	bf 01 00 00 00       	mov    $0x1,%edi
  400fd3:	b8 00 00 00 00       	mov    $0x0,%eax
  400fd8:	e8 03 fe ff ff       	callq  400de0 <__printf_chk@plt>
  400fdd:	48 8d 3d 4c 20 00 00 	lea    0x204c(%rip),%rdi        # 403030 <_IO_stdin_used+0x90>
  400fe4:	e8 d7 fc ff ff       	callq  400cc0 <puts@plt>
  400fe9:	48 8d 3d 68 20 00 00 	lea    0x2068(%rip),%rdi        # 403058 <_IO_stdin_used+0xb8>
  400ff0:	e8 cb fc ff ff       	callq  400cc0 <puts@plt>
  400ff5:	48 8d 3d b0 21 00 00 	lea    0x21b0(%rip),%rdi        # 4031ac <_IO_stdin_used+0x20c>
  400ffc:	e8 bf fc ff ff       	callq  400cc0 <puts@plt>
  401001:	eb ba                	jmp    400fbd <usage+0x56>

0000000000401003 <initialize_target>:
  401003:	55                   	push   %rbp
  401004:	53                   	push   %rbx
  401005:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  40100c:	89 f5                	mov    %esi,%ebp
  40100e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401015:	00 00 
  401017:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  40101e:	00 
  40101f:	31 c0                	xor    %eax,%eax
  401021:	89 3d d1 44 20 00    	mov    %edi,0x2044d1(%rip)        # 6054f8 <check_level>
  401027:	8b 3d 03 41 20 00    	mov    0x204103(%rip),%edi        # 605130 <target_id>
  40102d:	e8 ca 1e 00 00       	callq  402efc <gencookie>
  401032:	89 05 cc 44 20 00    	mov    %eax,0x2044cc(%rip)        # 605504 <cookie>
  401038:	89 c7                	mov    %eax,%edi
  40103a:	e8 bd 1e 00 00       	callq  402efc <gencookie>
  40103f:	89 05 bb 44 20 00    	mov    %eax,0x2044bb(%rip)        # 605500 <authkey>
  401045:	8b 05 e5 40 20 00    	mov    0x2040e5(%rip),%eax        # 605130 <target_id>
  40104b:	8d 78 01             	lea    0x1(%rax),%edi
  40104e:	e8 3d fc ff ff       	callq  400c90 <srandom@plt>
  401053:	e8 48 fd ff ff       	callq  400da0 <random@plt>
  401058:	89 c7                	mov    %eax,%edi
  40105a:	e8 1a 03 00 00       	callq  401379 <scramble>
  40105f:	89 c3                	mov    %eax,%ebx
  401061:	85 ed                	test   %ebp,%ebp
  401063:	75 54                	jne    4010b9 <initialize_target+0xb6>
  401065:	b8 00 00 00 00       	mov    $0x0,%eax
  40106a:	01 d8                	add    %ebx,%eax
  40106c:	0f b7 c0             	movzwl %ax,%eax
  40106f:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401076:	89 c0                	mov    %eax,%eax
  401078:	48 89 05 01 44 20 00 	mov    %rax,0x204401(%rip)        # 605480 <buf_offset>
  40107f:	c6 05 a2 50 20 00 72 	movb   $0x72,0x2050a2(%rip)        # 606128 <target_prefix>
  401086:	83 3d fb 43 20 00 00 	cmpl   $0x0,0x2043fb(%rip)        # 605488 <notify>
  40108d:	74 09                	je     401098 <initialize_target+0x95>
  40108f:	83 3d 72 44 20 00 00 	cmpl   $0x0,0x204472(%rip)        # 605508 <is_checker>
  401096:	74 39                	je     4010d1 <initialize_target+0xce>
  401098:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  40109f:	00 
  4010a0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4010a7:	00 00 
  4010a9:	0f 85 da 00 00 00    	jne    401189 <initialize_target+0x186>
  4010af:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4010b6:	5b                   	pop    %rbx
  4010b7:	5d                   	pop    %rbp
  4010b8:	c3                   	retq   
  4010b9:	bf 00 00 00 00       	mov    $0x0,%edi
  4010be:	e8 cd fc ff ff       	callq  400d90 <time@plt>
  4010c3:	89 c7                	mov    %eax,%edi
  4010c5:	e8 c6 fb ff ff       	callq  400c90 <srandom@plt>
  4010ca:	e8 d1 fc ff ff       	callq  400da0 <random@plt>
  4010cf:	eb 99                	jmp    40106a <initialize_target+0x67>
  4010d1:	48 89 e7             	mov    %rsp,%rdi
  4010d4:	be 00 01 00 00       	mov    $0x100,%esi
  4010d9:	e8 42 fd ff ff       	callq  400e20 <gethostname@plt>
  4010de:	89 c5                	mov    %eax,%ebp
  4010e0:	85 c0                	test   %eax,%eax
  4010e2:	75 26                	jne    40110a <initialize_target+0x107>
  4010e4:	89 c3                	mov    %eax,%ebx
  4010e6:	48 63 c3             	movslq %ebx,%rax
  4010e9:	48 8d 15 70 40 20 00 	lea    0x204070(%rip),%rdx        # 605160 <host_table>
  4010f0:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  4010f4:	48 85 ff             	test   %rdi,%rdi
  4010f7:	74 2c                	je     401125 <initialize_target+0x122>
  4010f9:	48 89 e6             	mov    %rsp,%rsi
  4010fc:	e8 6f fb ff ff       	callq  400c70 <strcasecmp@plt>
  401101:	85 c0                	test   %eax,%eax
  401103:	74 1b                	je     401120 <initialize_target+0x11d>
  401105:	83 c3 01             	add    $0x1,%ebx
  401108:	eb dc                	jmp    4010e6 <initialize_target+0xe3>
  40110a:	48 8d 3d 77 1f 00 00 	lea    0x1f77(%rip),%rdi        # 403088 <_IO_stdin_used+0xe8>
  401111:	e8 aa fb ff ff       	callq  400cc0 <puts@plt>
  401116:	bf 08 00 00 00       	mov    $0x8,%edi
  40111b:	e8 10 fd ff ff       	callq  400e30 <exit@plt>
  401120:	bd 01 00 00 00       	mov    $0x1,%ebp
  401125:	85 ed                	test   %ebp,%ebp
  401127:	74 3d                	je     401166 <initialize_target+0x163>
  401129:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401130:	00 
  401131:	e8 f6 1a 00 00       	callq  402c2c <init_driver>
  401136:	85 c0                	test   %eax,%eax
  401138:	0f 89 5a ff ff ff    	jns    401098 <initialize_target+0x95>
  40113e:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401145:	00 
  401146:	48 8d 35 b3 1f 00 00 	lea    0x1fb3(%rip),%rsi        # 403100 <_IO_stdin_used+0x160>
  40114d:	bf 01 00 00 00       	mov    $0x1,%edi
  401152:	b8 00 00 00 00       	mov    $0x0,%eax
  401157:	e8 84 fc ff ff       	callq  400de0 <__printf_chk@plt>
  40115c:	bf 08 00 00 00       	mov    $0x8,%edi
  401161:	e8 ca fc ff ff       	callq  400e30 <exit@plt>
  401166:	48 89 e2             	mov    %rsp,%rdx
  401169:	48 8d 35 50 1f 00 00 	lea    0x1f50(%rip),%rsi        # 4030c0 <_IO_stdin_used+0x120>
  401170:	bf 01 00 00 00       	mov    $0x1,%edi
  401175:	b8 00 00 00 00       	mov    $0x0,%eax
  40117a:	e8 61 fc ff ff       	callq  400de0 <__printf_chk@plt>
  40117f:	bf 08 00 00 00       	mov    $0x8,%edi
  401184:	e8 a7 fc ff ff       	callq  400e30 <exit@plt>
  401189:	e8 52 fb ff ff       	callq  400ce0 <__stack_chk_fail@plt>

000000000040118e <main>:
  40118e:	41 56                	push   %r14
  401190:	41 55                	push   %r13
  401192:	41 54                	push   %r12
  401194:	55                   	push   %rbp
  401195:	53                   	push   %rbx
  401196:	41 89 fc             	mov    %edi,%r12d
  401199:	48 89 f3             	mov    %rsi,%rbx
  40119c:	48 c7 c6 33 1f 40 00 	mov    $0x401f33,%rsi
  4011a3:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011a8:	e8 93 fb ff ff       	callq  400d40 <signal@plt>
  4011ad:	48 c7 c6 df 1e 40 00 	mov    $0x401edf,%rsi
  4011b4:	bf 07 00 00 00       	mov    $0x7,%edi
  4011b9:	e8 82 fb ff ff       	callq  400d40 <signal@plt>
  4011be:	48 c7 c6 87 1f 40 00 	mov    $0x401f87,%rsi
  4011c5:	bf 04 00 00 00       	mov    $0x4,%edi
  4011ca:	e8 71 fb ff ff       	callq  400d40 <signal@plt>
  4011cf:	83 3d 32 43 20 00 00 	cmpl   $0x0,0x204332(%rip)        # 605508 <is_checker>
  4011d6:	75 26                	jne    4011fe <main+0x70>
  4011d8:	48 8d 2d e6 1f 00 00 	lea    0x1fe6(%rip),%rbp        # 4031c5 <_IO_stdin_used+0x225>
  4011df:	48 8b 05 ba 42 20 00 	mov    0x2042ba(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  4011e6:	48 89 05 03 43 20 00 	mov    %rax,0x204303(%rip)        # 6054f0 <infile>
  4011ed:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4011f3:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4011f9:	e9 8d 00 00 00       	jmpq   40128b <main+0xfd>
  4011fe:	48 c7 c6 db 1f 40 00 	mov    $0x401fdb,%rsi
  401205:	bf 0e 00 00 00       	mov    $0xe,%edi
  40120a:	e8 31 fb ff ff       	callq  400d40 <signal@plt>
  40120f:	bf 05 00 00 00       	mov    $0x5,%edi
  401214:	e8 f7 fa ff ff       	callq  400d10 <alarm@plt>
  401219:	48 8d 2d aa 1f 00 00 	lea    0x1faa(%rip),%rbp        # 4031ca <_IO_stdin_used+0x22a>
  401220:	eb bd                	jmp    4011df <main+0x51>
  401222:	48 8b 3b             	mov    (%rbx),%rdi
  401225:	e8 3d fd ff ff       	callq  400f67 <usage>
  40122a:	48 8d 35 1c 22 00 00 	lea    0x221c(%rip),%rsi        # 40344d <_IO_stdin_used+0x4ad>
  401231:	48 8b 3d 70 42 20 00 	mov    0x204270(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  401238:	e8 b3 fb ff ff       	callq  400df0 <fopen@plt>
  40123d:	48 89 05 ac 42 20 00 	mov    %rax,0x2042ac(%rip)        # 6054f0 <infile>
  401244:	48 85 c0             	test   %rax,%rax
  401247:	75 42                	jne    40128b <main+0xfd>
  401249:	48 8b 0d 58 42 20 00 	mov    0x204258(%rip),%rcx        # 6054a8 <optarg@@GLIBC_2.2.5>
  401250:	48 8d 15 7b 1f 00 00 	lea    0x1f7b(%rip),%rdx        # 4031d2 <_IO_stdin_used+0x232>
  401257:	be 01 00 00 00       	mov    $0x1,%esi
  40125c:	48 8b 3d 5d 42 20 00 	mov    0x20425d(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  401263:	e8 e8 fb ff ff       	callq  400e50 <__fprintf_chk@plt>
  401268:	b8 01 00 00 00       	mov    $0x1,%eax
  40126d:	e9 d9 00 00 00       	jmpq   40134b <main+0x1bd>
  401272:	ba 10 00 00 00       	mov    $0x10,%edx
  401277:	be 00 00 00 00       	mov    $0x0,%esi
  40127c:	48 8b 3d 25 42 20 00 	mov    0x204225(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  401283:	e8 88 fb ff ff       	callq  400e10 <strtoul@plt>
  401288:	41 89 c6             	mov    %eax,%r14d
  40128b:	48 89 ea             	mov    %rbp,%rdx
  40128e:	48 89 de             	mov    %rbx,%rsi
  401291:	44 89 e7             	mov    %r12d,%edi
  401294:	e8 67 fb ff ff       	callq  400e00 <getopt@plt>
  401299:	3c ff                	cmp    $0xff,%al
  40129b:	74 62                	je     4012ff <main+0x171>
  40129d:	0f be d0             	movsbl %al,%edx
  4012a0:	83 e8 61             	sub    $0x61,%eax
  4012a3:	3c 10                	cmp    $0x10,%al
  4012a5:	77 3a                	ja     4012e1 <main+0x153>
  4012a7:	0f b6 c0             	movzbl %al,%eax
  4012aa:	48 8d 0d 5f 1f 00 00 	lea    0x1f5f(%rip),%rcx        # 403210 <_IO_stdin_used+0x270>
  4012b1:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  4012b5:	48 01 c8             	add    %rcx,%rax
  4012b8:	ff e0                	jmpq   *%rax
  4012ba:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012bf:	be 00 00 00 00       	mov    $0x0,%esi
  4012c4:	48 8b 3d dd 41 20 00 	mov    0x2041dd(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  4012cb:	e8 a0 fa ff ff       	callq  400d70 <strtol@plt>
  4012d0:	41 89 c5             	mov    %eax,%r13d
  4012d3:	eb b6                	jmp    40128b <main+0xfd>
  4012d5:	c7 05 a9 41 20 00 00 	movl   $0x0,0x2041a9(%rip)        # 605488 <notify>
  4012dc:	00 00 00 
  4012df:	eb aa                	jmp    40128b <main+0xfd>
  4012e1:	48 8d 35 07 1f 00 00 	lea    0x1f07(%rip),%rsi        # 4031ef <_IO_stdin_used+0x24f>
  4012e8:	bf 01 00 00 00       	mov    $0x1,%edi
  4012ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4012f2:	e8 e9 fa ff ff       	callq  400de0 <__printf_chk@plt>
  4012f7:	48 8b 3b             	mov    (%rbx),%rdi
  4012fa:	e8 68 fc ff ff       	callq  400f67 <usage>
  4012ff:	be 01 00 00 00       	mov    $0x1,%esi
  401304:	44 89 ef             	mov    %r13d,%edi
  401307:	e8 f7 fc ff ff       	callq  401003 <initialize_target>
  40130c:	83 3d f5 41 20 00 00 	cmpl   $0x0,0x2041f5(%rip)        # 605508 <is_checker>
  401313:	74 09                	je     40131e <main+0x190>
  401315:	44 39 35 e4 41 20 00 	cmp    %r14d,0x2041e4(%rip)        # 605500 <authkey>
  40131c:	75 36                	jne    401354 <main+0x1c6>
  40131e:	8b 15 e0 41 20 00    	mov    0x2041e0(%rip),%edx        # 605504 <cookie>
  401324:	48 8d 35 d7 1e 00 00 	lea    0x1ed7(%rip),%rsi        # 403202 <_IO_stdin_used+0x262>
  40132b:	bf 01 00 00 00       	mov    $0x1,%edi
  401330:	b8 00 00 00 00       	mov    $0x0,%eax
  401335:	e8 a6 fa ff ff       	callq  400de0 <__printf_chk@plt>
  40133a:	48 8b 3d 3f 41 20 00 	mov    0x20413f(%rip),%rdi        # 605480 <buf_offset>
  401341:	e8 ec 0c 00 00       	callq  402032 <launch>
  401346:	b8 00 00 00 00       	mov    $0x0,%eax
  40134b:	5b                   	pop    %rbx
  40134c:	5d                   	pop    %rbp
  40134d:	41 5c                	pop    %r12
  40134f:	41 5d                	pop    %r13
  401351:	41 5e                	pop    %r14
  401353:	c3                   	retq   
  401354:	44 89 f2             	mov    %r14d,%edx
  401357:	48 8d 35 ca 1d 00 00 	lea    0x1dca(%rip),%rsi        # 403128 <_IO_stdin_used+0x188>
  40135e:	bf 01 00 00 00       	mov    $0x1,%edi
  401363:	b8 00 00 00 00       	mov    $0x0,%eax
  401368:	e8 73 fa ff ff       	callq  400de0 <__printf_chk@plt>
  40136d:	b8 00 00 00 00       	mov    $0x0,%eax
  401372:	e8 c8 07 00 00       	callq  401b3f <check_fail>
  401377:	eb a5                	jmp    40131e <main+0x190>

0000000000401379 <scramble>:
  401379:	48 83 ec 38          	sub    $0x38,%rsp
  40137d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401384:	00 00 
  401386:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40138b:	31 c0                	xor    %eax,%eax
  40138d:	eb 10                	jmp    40139f <scramble+0x26>
  40138f:	69 d0 92 69 00 00    	imul   $0x6992,%eax,%edx
  401395:	01 fa                	add    %edi,%edx
  401397:	89 c1                	mov    %eax,%ecx
  401399:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  40139c:	83 c0 01             	add    $0x1,%eax
  40139f:	83 f8 09             	cmp    $0x9,%eax
  4013a2:	76 eb                	jbe    40138f <scramble+0x16>
  4013a4:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4013a8:	69 c0 d2 f9 00 00    	imul   $0xf9d2,%eax,%eax
  4013ae:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4013b2:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4013b6:	69 c0 a7 be 00 00    	imul   $0xbea7,%eax,%eax
  4013bc:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4013c0:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4013c4:	69 c0 33 9a 00 00    	imul   $0x9a33,%eax,%eax
  4013ca:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4013ce:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4013d2:	69 c0 0c 84 00 00    	imul   $0x840c,%eax,%eax
  4013d8:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4013dc:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4013e0:	69 c0 66 83 00 00    	imul   $0x8366,%eax,%eax
  4013e6:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4013ea:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4013ee:	69 c0 31 18 00 00    	imul   $0x1831,%eax,%eax
  4013f4:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4013f8:	8b 04 24             	mov    (%rsp),%eax
  4013fb:	69 c0 3d ea 00 00    	imul   $0xea3d,%eax,%eax
  401401:	89 04 24             	mov    %eax,(%rsp)
  401404:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401408:	69 c0 3b 91 00 00    	imul   $0x913b,%eax,%eax
  40140e:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401412:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401416:	69 c0 02 0e 00 00    	imul   $0xe02,%eax,%eax
  40141c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401420:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401424:	69 c0 8a a7 00 00    	imul   $0xa78a,%eax,%eax
  40142a:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40142e:	8b 04 24             	mov    (%rsp),%eax
  401431:	69 c0 c9 ec 00 00    	imul   $0xecc9,%eax,%eax
  401437:	89 04 24             	mov    %eax,(%rsp)
  40143a:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40143e:	69 c0 03 9d 00 00    	imul   $0x9d03,%eax,%eax
  401444:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401448:	8b 04 24             	mov    (%rsp),%eax
  40144b:	69 c0 46 e3 00 00    	imul   $0xe346,%eax,%eax
  401451:	89 04 24             	mov    %eax,(%rsp)
  401454:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401458:	69 c0 92 48 00 00    	imul   $0x4892,%eax,%eax
  40145e:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401462:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401466:	69 c0 f6 57 00 00    	imul   $0x57f6,%eax,%eax
  40146c:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401470:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401474:	69 c0 3e b7 00 00    	imul   $0xb73e,%eax,%eax
  40147a:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40147e:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401482:	69 c0 c4 92 00 00    	imul   $0x92c4,%eax,%eax
  401488:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40148c:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401490:	69 c0 ee 02 00 00    	imul   $0x2ee,%eax,%eax
  401496:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40149a:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40149e:	69 c0 c0 85 00 00    	imul   $0x85c0,%eax,%eax
  4014a4:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4014a8:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4014ac:	69 c0 f5 d8 00 00    	imul   $0xd8f5,%eax,%eax
  4014b2:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4014b6:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4014ba:	69 c0 9a cf 00 00    	imul   $0xcf9a,%eax,%eax
  4014c0:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4014c4:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4014c8:	69 c0 7f 10 00 00    	imul   $0x107f,%eax,%eax
  4014ce:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4014d2:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4014d6:	69 c0 a2 36 00 00    	imul   $0x36a2,%eax,%eax
  4014dc:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4014e0:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4014e4:	69 c0 83 16 00 00    	imul   $0x1683,%eax,%eax
  4014ea:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4014ee:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4014f2:	6b c0 67             	imul   $0x67,%eax,%eax
  4014f5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4014f9:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4014fd:	69 c0 c5 d0 00 00    	imul   $0xd0c5,%eax,%eax
  401503:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401507:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40150b:	69 c0 1b 6c 00 00    	imul   $0x6c1b,%eax,%eax
  401511:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401515:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401519:	69 c0 8e a4 00 00    	imul   $0xa48e,%eax,%eax
  40151f:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401523:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401527:	69 c0 69 dd 00 00    	imul   $0xdd69,%eax,%eax
  40152d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401531:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401535:	69 c0 0e 9d 00 00    	imul   $0x9d0e,%eax,%eax
  40153b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40153f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401543:	69 c0 71 99 00 00    	imul   $0x9971,%eax,%eax
  401549:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40154d:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401551:	69 c0 28 87 00 00    	imul   $0x8728,%eax,%eax
  401557:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40155b:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40155f:	69 c0 32 ca 00 00    	imul   $0xca32,%eax,%eax
  401565:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401569:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40156d:	69 c0 2e 59 00 00    	imul   $0x592e,%eax,%eax
  401573:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401577:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40157b:	69 c0 11 11 00 00    	imul   $0x1111,%eax,%eax
  401581:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401585:	8b 04 24             	mov    (%rsp),%eax
  401588:	69 c0 18 59 00 00    	imul   $0x5918,%eax,%eax
  40158e:	89 04 24             	mov    %eax,(%rsp)
  401591:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401595:	69 c0 49 23 00 00    	imul   $0x2349,%eax,%eax
  40159b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40159f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4015a3:	69 c0 83 9a 00 00    	imul   $0x9a83,%eax,%eax
  4015a9:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4015ad:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4015b1:	69 c0 51 0b 00 00    	imul   $0xb51,%eax,%eax
  4015b7:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4015bb:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4015bf:	69 c0 8f 9e 00 00    	imul   $0x9e8f,%eax,%eax
  4015c5:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4015c9:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4015cd:	69 c0 14 6f 00 00    	imul   $0x6f14,%eax,%eax
  4015d3:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4015d7:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4015db:	69 c0 e8 f8 00 00    	imul   $0xf8e8,%eax,%eax
  4015e1:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4015e5:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4015e9:	69 c0 1d dd 00 00    	imul   $0xdd1d,%eax,%eax
  4015ef:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4015f3:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4015f7:	69 c0 91 2a 00 00    	imul   $0x2a91,%eax,%eax
  4015fd:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401601:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401605:	69 c0 98 8a 00 00    	imul   $0x8a98,%eax,%eax
  40160b:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40160f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401613:	69 c0 e5 ef 00 00    	imul   $0xefe5,%eax,%eax
  401619:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40161d:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401621:	69 c0 eb 1b 00 00    	imul   $0x1beb,%eax,%eax
  401627:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40162b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40162f:	69 c0 3f 50 00 00    	imul   $0x503f,%eax,%eax
  401635:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401639:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40163d:	69 c0 24 01 00 00    	imul   $0x124,%eax,%eax
  401643:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401647:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40164b:	69 c0 0f 36 00 00    	imul   $0x360f,%eax,%eax
  401651:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401655:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401659:	69 c0 90 db 00 00    	imul   $0xdb90,%eax,%eax
  40165f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401663:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401667:	69 c0 e1 f2 00 00    	imul   $0xf2e1,%eax,%eax
  40166d:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401671:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401675:	69 c0 bf f8 00 00    	imul   $0xf8bf,%eax,%eax
  40167b:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40167f:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401683:	69 c0 c4 58 00 00    	imul   $0x58c4,%eax,%eax
  401689:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40168d:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401691:	69 c0 6b 3e 00 00    	imul   $0x3e6b,%eax,%eax
  401697:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40169b:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40169f:	69 c0 c9 0f 00 00    	imul   $0xfc9,%eax,%eax
  4016a5:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4016a9:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4016ad:	69 c0 a8 66 00 00    	imul   $0x66a8,%eax,%eax
  4016b3:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4016b7:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4016bb:	69 c0 af 88 00 00    	imul   $0x88af,%eax,%eax
  4016c1:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4016c5:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4016c9:	69 c0 29 a6 00 00    	imul   $0xa629,%eax,%eax
  4016cf:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4016d3:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016d7:	69 c0 4b fe 00 00    	imul   $0xfe4b,%eax,%eax
  4016dd:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4016e1:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4016e5:	69 c0 df 7a 00 00    	imul   $0x7adf,%eax,%eax
  4016eb:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4016ef:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4016f3:	69 c0 ca 54 00 00    	imul   $0x54ca,%eax,%eax
  4016f9:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4016fd:	8b 04 24             	mov    (%rsp),%eax
  401700:	69 c0 3e 65 00 00    	imul   $0x653e,%eax,%eax
  401706:	89 04 24             	mov    %eax,(%rsp)
  401709:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40170d:	69 c0 e8 7c 00 00    	imul   $0x7ce8,%eax,%eax
  401713:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401717:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40171b:	69 c0 77 4e 00 00    	imul   $0x4e77,%eax,%eax
  401721:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401725:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401729:	69 c0 98 78 00 00    	imul   $0x7898,%eax,%eax
  40172f:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401733:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401737:	69 c0 1f 42 00 00    	imul   $0x421f,%eax,%eax
  40173d:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401741:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401745:	69 c0 e1 28 00 00    	imul   $0x28e1,%eax,%eax
  40174b:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40174f:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401753:	69 c0 de f8 00 00    	imul   $0xf8de,%eax,%eax
  401759:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40175d:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401761:	69 c0 f0 3e 00 00    	imul   $0x3ef0,%eax,%eax
  401767:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40176b:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40176f:	69 c0 fa 78 00 00    	imul   $0x78fa,%eax,%eax
  401775:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401779:	ba 00 00 00 00       	mov    $0x0,%edx
  40177e:	b8 00 00 00 00       	mov    $0x0,%eax
  401783:	eb 0a                	jmp    40178f <scramble+0x416>
  401785:	89 d1                	mov    %edx,%ecx
  401787:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  40178a:	01 c8                	add    %ecx,%eax
  40178c:	83 c2 01             	add    $0x1,%edx
  40178f:	83 fa 09             	cmp    $0x9,%edx
  401792:	76 f1                	jbe    401785 <scramble+0x40c>
  401794:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  401799:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4017a0:	00 00 
  4017a2:	75 05                	jne    4017a9 <scramble+0x430>
  4017a4:	48 83 c4 38          	add    $0x38,%rsp
  4017a8:	c3                   	retq   
  4017a9:	e8 32 f5 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

00000000004017ae <getbuf>:
  4017ae:	48 83 ec 38          	sub    $0x38,%rsp
  4017b2:	48 89 e7             	mov    %rsp,%rdi
  4017b5:	e8 bd 03 00 00       	callq  401b77 <Gets>
  4017ba:	b8 01 00 00 00       	mov    $0x1,%eax
  4017bf:	48 83 c4 38          	add    $0x38,%rsp
  4017c3:	c3                   	retq   

00000000004017c4 <touch1>:
  4017c4:	48 83 ec 08          	sub    $0x8,%rsp
  4017c8:	c7 05 2a 3d 20 00 01 	movl   $0x1,0x203d2a(%rip)        # 6054fc <vlevel>
  4017cf:	00 00 00 
  4017d2:	48 8d 3d c8 1a 00 00 	lea    0x1ac8(%rip),%rdi        # 4032a1 <_IO_stdin_used+0x301>
  4017d9:	e8 e2 f4 ff ff       	callq  400cc0 <puts@plt>
  4017de:	bf 01 00 00 00       	mov    $0x1,%edi
  4017e3:	e8 ff 05 00 00       	callq  401de7 <validate>
  4017e8:	bf 00 00 00 00       	mov    $0x0,%edi
  4017ed:	e8 3e f6 ff ff       	callq  400e30 <exit@plt>

00000000004017f2 <touch2>:
  4017f2:	48 83 ec 08          	sub    $0x8,%rsp
  4017f6:	89 fa                	mov    %edi,%edx
  4017f8:	c7 05 fa 3c 20 00 02 	movl   $0x2,0x203cfa(%rip)        # 6054fc <vlevel>
  4017ff:	00 00 00 
  401802:	39 3d fc 3c 20 00    	cmp    %edi,0x203cfc(%rip)        # 605504 <cookie>
  401808:	74 2a                	je     401834 <touch2+0x42>
  40180a:	48 8d 35 df 1a 00 00 	lea    0x1adf(%rip),%rsi        # 4032f0 <_IO_stdin_used+0x350>
  401811:	bf 01 00 00 00       	mov    $0x1,%edi
  401816:	b8 00 00 00 00       	mov    $0x0,%eax
  40181b:	e8 c0 f5 ff ff       	callq  400de0 <__printf_chk@plt>
  401820:	bf 02 00 00 00       	mov    $0x2,%edi
  401825:	e8 8d 06 00 00       	callq  401eb7 <fail>
  40182a:	bf 00 00 00 00       	mov    $0x0,%edi
  40182f:	e8 fc f5 ff ff       	callq  400e30 <exit@plt>
  401834:	48 8d 35 8d 1a 00 00 	lea    0x1a8d(%rip),%rsi        # 4032c8 <_IO_stdin_used+0x328>
  40183b:	bf 01 00 00 00       	mov    $0x1,%edi
  401840:	b8 00 00 00 00       	mov    $0x0,%eax
  401845:	e8 96 f5 ff ff       	callq  400de0 <__printf_chk@plt>
  40184a:	bf 02 00 00 00       	mov    $0x2,%edi
  40184f:	e8 93 05 00 00       	callq  401de7 <validate>
  401854:	eb d4                	jmp    40182a <touch2+0x38>

0000000000401856 <hexmatch>:
  401856:	41 54                	push   %r12
  401858:	55                   	push   %rbp
  401859:	53                   	push   %rbx
  40185a:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  40185e:	89 fd                	mov    %edi,%ebp
  401860:	48 89 f3             	mov    %rsi,%rbx
  401863:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40186a:	00 00 
  40186c:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401871:	31 c0                	xor    %eax,%eax
  401873:	e8 28 f5 ff ff       	callq  400da0 <random@plt>
  401878:	48 89 c1             	mov    %rax,%rcx
  40187b:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401882:	0a d7 a3 
  401885:	48 f7 ea             	imul   %rdx
  401888:	48 01 ca             	add    %rcx,%rdx
  40188b:	48 c1 fa 06          	sar    $0x6,%rdx
  40188f:	48 89 c8             	mov    %rcx,%rax
  401892:	48 c1 f8 3f          	sar    $0x3f,%rax
  401896:	48 29 c2             	sub    %rax,%rdx
  401899:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  40189d:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  4018a1:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  4018a8:	00 
  4018a9:	48 29 c1             	sub    %rax,%rcx
  4018ac:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  4018b0:	41 89 e8             	mov    %ebp,%r8d
  4018b3:	48 8d 0d 04 1a 00 00 	lea    0x1a04(%rip),%rcx        # 4032be <_IO_stdin_used+0x31e>
  4018ba:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4018c1:	be 01 00 00 00       	mov    $0x1,%esi
  4018c6:	4c 89 e7             	mov    %r12,%rdi
  4018c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4018ce:	e8 8d f5 ff ff       	callq  400e60 <__sprintf_chk@plt>
  4018d3:	ba 09 00 00 00       	mov    $0x9,%edx
  4018d8:	4c 89 e6             	mov    %r12,%rsi
  4018db:	48 89 df             	mov    %rbx,%rdi
  4018de:	e8 bd f3 ff ff       	callq  400ca0 <strncmp@plt>
  4018e3:	85 c0                	test   %eax,%eax
  4018e5:	0f 94 c0             	sete   %al
  4018e8:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  4018ed:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  4018f4:	00 00 
  4018f6:	75 0c                	jne    401904 <hexmatch+0xae>
  4018f8:	0f b6 c0             	movzbl %al,%eax
  4018fb:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  4018ff:	5b                   	pop    %rbx
  401900:	5d                   	pop    %rbp
  401901:	41 5c                	pop    %r12
  401903:	c3                   	retq   
  401904:	e8 d7 f3 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000401909 <touch3>:
  401909:	53                   	push   %rbx
  40190a:	48 89 fb             	mov    %rdi,%rbx
  40190d:	c7 05 e5 3b 20 00 03 	movl   $0x3,0x203be5(%rip)        # 6054fc <vlevel>
  401914:	00 00 00 
  401917:	48 89 fe             	mov    %rdi,%rsi
  40191a:	8b 3d e4 3b 20 00    	mov    0x203be4(%rip),%edi        # 605504 <cookie>
  401920:	e8 31 ff ff ff       	callq  401856 <hexmatch>
  401925:	85 c0                	test   %eax,%eax
  401927:	74 2d                	je     401956 <touch3+0x4d>
  401929:	48 89 da             	mov    %rbx,%rdx
  40192c:	48 8d 35 e5 19 00 00 	lea    0x19e5(%rip),%rsi        # 403318 <_IO_stdin_used+0x378>
  401933:	bf 01 00 00 00       	mov    $0x1,%edi
  401938:	b8 00 00 00 00       	mov    $0x0,%eax
  40193d:	e8 9e f4 ff ff       	callq  400de0 <__printf_chk@plt>
  401942:	bf 03 00 00 00       	mov    $0x3,%edi
  401947:	e8 9b 04 00 00       	callq  401de7 <validate>
  40194c:	bf 00 00 00 00       	mov    $0x0,%edi
  401951:	e8 da f4 ff ff       	callq  400e30 <exit@plt>
  401956:	48 89 da             	mov    %rbx,%rdx
  401959:	48 8d 35 e0 19 00 00 	lea    0x19e0(%rip),%rsi        # 403340 <_IO_stdin_used+0x3a0>
  401960:	bf 01 00 00 00       	mov    $0x1,%edi
  401965:	b8 00 00 00 00       	mov    $0x0,%eax
  40196a:	e8 71 f4 ff ff       	callq  400de0 <__printf_chk@plt>
  40196f:	bf 03 00 00 00       	mov    $0x3,%edi
  401974:	e8 3e 05 00 00       	callq  401eb7 <fail>
  401979:	eb d1                	jmp    40194c <touch3+0x43>

000000000040197b <test>:
  40197b:	48 83 ec 08          	sub    $0x8,%rsp
  40197f:	b8 00 00 00 00       	mov    $0x0,%eax
  401984:	e8 25 fe ff ff       	callq  4017ae <getbuf>
  401989:	89 c2                	mov    %eax,%edx
  40198b:	48 8d 35 d6 19 00 00 	lea    0x19d6(%rip),%rsi        # 403368 <_IO_stdin_used+0x3c8>
  401992:	bf 01 00 00 00       	mov    $0x1,%edi
  401997:	b8 00 00 00 00       	mov    $0x0,%eax
  40199c:	e8 3f f4 ff ff       	callq  400de0 <__printf_chk@plt>
  4019a1:	48 83 c4 08          	add    $0x8,%rsp
  4019a5:	c3                   	retq   

00000000004019a6 <start_farm>:
  4019a6:	b8 01 00 00 00       	mov    $0x1,%eax
  4019ab:	c3                   	retq   

00000000004019ac <setval_410>:
  4019ac:	c7 07 58 91 90 90    	movl   $0x90909158,(%rdi)
  4019b2:	c3                   	retq   

00000000004019b3 <addval_464>:
  4019b3:	8d 87 48 89 c7 90    	lea    -0x6f3876b8(%rdi),%eax
  4019b9:	c3                   	retq   

00000000004019ba <addval_312>:
  4019ba:	8d 87 48 89 c7 92    	lea    -0x6d3876b8(%rdi),%eax
  4019c0:	c3                   	retq   

00000000004019c1 <addval_291>:
  4019c1:	8d 87 8f 5d 58 c1    	lea    -0x3ea7a271(%rdi),%eax
  4019c7:	c3                   	retq   

00000000004019c8 <getval_283>:
  4019c8:	b8 48 89 c7 90       	mov    $0x90c78948,%eax
  4019cd:	c3                   	retq   

00000000004019ce <setval_100>:
  4019ce:	c7 07 58 90 90 90    	movl   $0x90909058,(%rdi)
  4019d4:	c3                   	retq   

00000000004019d5 <addval_121>:
  4019d5:	8d 87 48 89 c7 91    	lea    -0x6e3876b8(%rdi),%eax
  4019db:	c3                   	retq   

00000000004019dc <getval_443>:
  4019dc:	b8 58 90 90 c3       	mov    $0xc3909058,%eax
  4019e1:	c3                   	retq   

00000000004019e2 <mid_farm>:
  4019e2:	b8 01 00 00 00       	mov    $0x1,%eax
  4019e7:	c3                   	retq   

00000000004019e8 <add_xy>:
  4019e8:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  4019ec:	c3                   	retq   

00000000004019ed <setval_103>:
  4019ed:	c7 07 89 c2 91 c3    	movl   $0xc391c289,(%rdi)
  4019f3:	c3                   	retq   

00000000004019f4 <getval_323>:
  4019f4:	b8 89 c2 00 d2       	mov    $0xd200c289,%eax
  4019f9:	c3                   	retq   

00000000004019fa <setval_337>:
  4019fa:	c7 07 be 48 99 e0    	movl   $0xe09948be,(%rdi)
  401a00:	c3                   	retq   

0000000000401a01 <addval_252>:
  401a01:	8d 87 88 ce 08 c0    	lea    -0x3ff73178(%rdi),%eax
  401a07:	c3                   	retq   

0000000000401a08 <setval_375>:
  401a08:	c7 07 89 ce 90 c3    	movl   $0xc390ce89,(%rdi)
  401a0e:	c3                   	retq   

0000000000401a0f <setval_258>:
  401a0f:	c7 07 48 89 e0 c3    	movl   $0xc3e08948,(%rdi)
  401a15:	c3                   	retq   

0000000000401a16 <getval_315>:
  401a16:	b8 89 d1 84 db       	mov    $0xdb84d189,%eax
  401a1b:	c3                   	retq   

0000000000401a1c <addval_373>:
  401a1c:	8d 87 58 89 e0 c3    	lea    -0x3c1f76a8(%rdi),%eax
  401a22:	c3                   	retq   

0000000000401a23 <setval_184>:
  401a23:	c7 07 89 ce c4 db    	movl   $0xdbc4ce89,(%rdi)
  401a29:	c3                   	retq   

0000000000401a2a <addval_242>:
  401a2a:	8d 87 48 89 e0 c3    	lea    -0x3c1f76b8(%rdi),%eax
  401a30:	c3                   	retq   

0000000000401a31 <setval_178>:
  401a31:	c7 07 89 d1 60 c9    	movl   $0xc960d189,(%rdi)
  401a37:	c3                   	retq   

0000000000401a38 <addval_297>:
  401a38:	8d 87 48 09 e0 90    	lea    -0x6f1ff6b8(%rdi),%eax
  401a3e:	c3                   	retq   

0000000000401a3f <addval_447>:
  401a3f:	8d 87 c9 c2 08 d2    	lea    -0x2df73d37(%rdi),%eax
  401a45:	c3                   	retq   

0000000000401a46 <getval_429>:
  401a46:	b8 08 89 e0 c3       	mov    $0xc3e08908,%eax
  401a4b:	c3                   	retq   

0000000000401a4c <setval_313>:
  401a4c:	c7 07 8d ce 84 d2    	movl   $0xd284ce8d,(%rdi)
  401a52:	c3                   	retq   

0000000000401a53 <setval_120>:
  401a53:	c7 07 89 d1 20 d2    	movl   $0xd220d189,(%rdi)
  401a59:	c3                   	retq   

0000000000401a5a <addval_430>:
  401a5a:	8d 87 ba a9 d1 90    	lea    -0x6f2e5646(%rdi),%eax
  401a60:	c3                   	retq   

0000000000401a61 <addval_226>:
  401a61:	8d 87 89 d1 94 90    	lea    -0x6f6b2e77(%rdi),%eax
  401a67:	c3                   	retq   

0000000000401a68 <setval_101>:
  401a68:	c7 07 a9 c2 c3 79    	movl   $0x79c3c2a9,(%rdi)
  401a6e:	c3                   	retq   

0000000000401a6f <setval_279>:
  401a6f:	c7 07 89 ce c4 c0    	movl   $0xc0c4ce89,(%rdi)
  401a75:	c3                   	retq   

0000000000401a76 <addval_378>:
  401a76:	8d 87 b1 89 d1 91    	lea    -0x6e2e764f(%rdi),%eax
  401a7c:	c3                   	retq   

0000000000401a7d <addval_396>:
  401a7d:	8d 87 89 ce 78 c9    	lea    -0x36873177(%rdi),%eax
  401a83:	c3                   	retq   

0000000000401a84 <getval_278>:
  401a84:	b8 09 c2 38 c0       	mov    $0xc038c209,%eax
  401a89:	c3                   	retq   

0000000000401a8a <addval_350>:
  401a8a:	8d 87 48 81 e0 90    	lea    -0x6f1f7eb8(%rdi),%eax
  401a90:	c3                   	retq   

0000000000401a91 <addval_415>:
  401a91:	8d 87 bf ae 89 c2    	lea    -0x3d765141(%rdi),%eax
  401a97:	c3                   	retq   

0000000000401a98 <addval_363>:
  401a98:	8d 87 09 c2 08 c0    	lea    -0x3ff73df7(%rdi),%eax
  401a9e:	c3                   	retq   

0000000000401a9f <setval_334>:
  401a9f:	c7 07 25 89 ce 90    	movl   $0x90ce8925,(%rdi)
  401aa5:	c3                   	retq   

0000000000401aa6 <setval_118>:
  401aa6:	c7 07 d9 89 ce c2    	movl   $0xc2ce89d9,(%rdi)
  401aac:	c3                   	retq   

0000000000401aad <setval_195>:
  401aad:	c7 07 48 89 e0 c1    	movl   $0xc1e08948,(%rdi)
  401ab3:	c3                   	retq   

0000000000401ab4 <setval_399>:
  401ab4:	c7 07 89 c2 38 d2    	movl   $0xd238c289,(%rdi)
  401aba:	c3                   	retq   

0000000000401abb <setval_477>:
  401abb:	c7 07 89 d1 18 c9    	movl   $0xc918d189,(%rdi)
  401ac1:	c3                   	retq   

0000000000401ac2 <addval_431>:
  401ac2:	8d 87 81 d1 90 90    	lea    -0x6f6f2e7f(%rdi),%eax
  401ac8:	c3                   	retq   

0000000000401ac9 <end_farm>:
  401ac9:	b8 01 00 00 00       	mov    $0x1,%eax
  401ace:	c3                   	retq   

0000000000401acf <save_char>:
  401acf:	8b 05 4f 46 20 00    	mov    0x20464f(%rip),%eax        # 606124 <gets_cnt>
  401ad5:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401ada:	7f 4a                	jg     401b26 <save_char+0x57>
  401adc:	89 f9                	mov    %edi,%ecx
  401ade:	c0 e9 04             	shr    $0x4,%cl
  401ae1:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401ae4:	4c 8d 05 a5 1b 00 00 	lea    0x1ba5(%rip),%r8        # 403690 <trans_char>
  401aeb:	83 e1 0f             	and    $0xf,%ecx
  401aee:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401af3:	48 8d 0d 26 3a 20 00 	lea    0x203a26(%rip),%rcx        # 605520 <gets_buf>
  401afa:	48 63 f2             	movslq %edx,%rsi
  401afd:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401b01:	8d 72 01             	lea    0x1(%rdx),%esi
  401b04:	83 e7 0f             	and    $0xf,%edi
  401b07:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401b0c:	48 63 f6             	movslq %esi,%rsi
  401b0f:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401b13:	83 c2 02             	add    $0x2,%edx
  401b16:	48 63 d2             	movslq %edx,%rdx
  401b19:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401b1d:	83 c0 01             	add    $0x1,%eax
  401b20:	89 05 fe 45 20 00    	mov    %eax,0x2045fe(%rip)        # 606124 <gets_cnt>
  401b26:	f3 c3                	repz retq 

0000000000401b28 <save_term>:
  401b28:	8b 05 f6 45 20 00    	mov    0x2045f6(%rip),%eax        # 606124 <gets_cnt>
  401b2e:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401b31:	48 98                	cltq   
  401b33:	48 8d 15 e6 39 20 00 	lea    0x2039e6(%rip),%rdx        # 605520 <gets_buf>
  401b3a:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401b3e:	c3                   	retq   

0000000000401b3f <check_fail>:
  401b3f:	48 83 ec 08          	sub    $0x8,%rsp
  401b43:	0f be 15 de 45 20 00 	movsbl 0x2045de(%rip),%edx        # 606128 <target_prefix>
  401b4a:	4c 8d 05 cf 39 20 00 	lea    0x2039cf(%rip),%r8        # 605520 <gets_buf>
  401b51:	8b 0d a1 39 20 00    	mov    0x2039a1(%rip),%ecx        # 6054f8 <check_level>
  401b57:	48 8d 35 2d 18 00 00 	lea    0x182d(%rip),%rsi        # 40338b <_IO_stdin_used+0x3eb>
  401b5e:	bf 01 00 00 00       	mov    $0x1,%edi
  401b63:	b8 00 00 00 00       	mov    $0x0,%eax
  401b68:	e8 73 f2 ff ff       	callq  400de0 <__printf_chk@plt>
  401b6d:	bf 01 00 00 00       	mov    $0x1,%edi
  401b72:	e8 b9 f2 ff ff       	callq  400e30 <exit@plt>

0000000000401b77 <Gets>:
  401b77:	41 54                	push   %r12
  401b79:	55                   	push   %rbp
  401b7a:	53                   	push   %rbx
  401b7b:	49 89 fc             	mov    %rdi,%r12
  401b7e:	c7 05 9c 45 20 00 00 	movl   $0x0,0x20459c(%rip)        # 606124 <gets_cnt>
  401b85:	00 00 00 
  401b88:	48 89 fb             	mov    %rdi,%rbx
  401b8b:	eb 11                	jmp    401b9e <Gets+0x27>
  401b8d:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401b91:	88 03                	mov    %al,(%rbx)
  401b93:	0f b6 f8             	movzbl %al,%edi
  401b96:	e8 34 ff ff ff       	callq  401acf <save_char>
  401b9b:	48 89 eb             	mov    %rbp,%rbx
  401b9e:	48 8b 3d 4b 39 20 00 	mov    0x20394b(%rip),%rdi        # 6054f0 <infile>
  401ba5:	e8 06 f2 ff ff       	callq  400db0 <_IO_getc@plt>
  401baa:	83 f8 ff             	cmp    $0xffffffff,%eax
  401bad:	74 05                	je     401bb4 <Gets+0x3d>
  401baf:	83 f8 0a             	cmp    $0xa,%eax
  401bb2:	75 d9                	jne    401b8d <Gets+0x16>
  401bb4:	c6 03 00             	movb   $0x0,(%rbx)
  401bb7:	b8 00 00 00 00       	mov    $0x0,%eax
  401bbc:	e8 67 ff ff ff       	callq  401b28 <save_term>
  401bc1:	4c 89 e0             	mov    %r12,%rax
  401bc4:	5b                   	pop    %rbx
  401bc5:	5d                   	pop    %rbp
  401bc6:	41 5c                	pop    %r12
  401bc8:	c3                   	retq   

0000000000401bc9 <notify_server>:
  401bc9:	55                   	push   %rbp
  401bca:	53                   	push   %rbx
  401bcb:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401bd2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401bd9:	00 00 
  401bdb:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401be2:	00 
  401be3:	31 c0                	xor    %eax,%eax
  401be5:	83 3d 1c 39 20 00 00 	cmpl   $0x0,0x20391c(%rip)        # 605508 <is_checker>
  401bec:	0f 85 d2 00 00 00    	jne    401cc4 <notify_server+0xfb>
  401bf2:	89 fb                	mov    %edi,%ebx
  401bf4:	8b 05 2a 45 20 00    	mov    0x20452a(%rip),%eax        # 606124 <gets_cnt>
  401bfa:	83 c0 64             	add    $0x64,%eax
  401bfd:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401c02:	0f 8f dd 00 00 00    	jg     401ce5 <notify_server+0x11c>
  401c08:	0f be 05 19 45 20 00 	movsbl 0x204519(%rip),%eax        # 606128 <target_prefix>
  401c0f:	83 3d 72 38 20 00 00 	cmpl   $0x0,0x203872(%rip)        # 605488 <notify>
  401c16:	0f 84 e9 00 00 00    	je     401d05 <notify_server+0x13c>
  401c1c:	8b 15 de 38 20 00    	mov    0x2038de(%rip),%edx        # 605500 <authkey>
  401c22:	85 db                	test   %ebx,%ebx
  401c24:	0f 84 e5 00 00 00    	je     401d0f <notify_server+0x146>
  401c2a:	48 8d 2d 70 17 00 00 	lea    0x1770(%rip),%rbp        # 4033a1 <_IO_stdin_used+0x401>
  401c31:	48 89 e7             	mov    %rsp,%rdi
  401c34:	48 8d 0d e5 38 20 00 	lea    0x2038e5(%rip),%rcx        # 605520 <gets_buf>
  401c3b:	51                   	push   %rcx
  401c3c:	56                   	push   %rsi
  401c3d:	50                   	push   %rax
  401c3e:	52                   	push   %rdx
  401c3f:	49 89 e9             	mov    %rbp,%r9
  401c42:	44 8b 05 e7 34 20 00 	mov    0x2034e7(%rip),%r8d        # 605130 <target_id>
  401c49:	48 8d 0d 5b 17 00 00 	lea    0x175b(%rip),%rcx        # 4033ab <_IO_stdin_used+0x40b>
  401c50:	ba 00 20 00 00       	mov    $0x2000,%edx
  401c55:	be 01 00 00 00       	mov    $0x1,%esi
  401c5a:	b8 00 00 00 00       	mov    $0x0,%eax
  401c5f:	e8 fc f1 ff ff       	callq  400e60 <__sprintf_chk@plt>
  401c64:	48 83 c4 20          	add    $0x20,%rsp
  401c68:	83 3d 19 38 20 00 00 	cmpl   $0x0,0x203819(%rip)        # 605488 <notify>
  401c6f:	0f 84 df 00 00 00    	je     401d54 <notify_server+0x18b>
  401c75:	85 db                	test   %ebx,%ebx
  401c77:	0f 84 c6 00 00 00    	je     401d43 <notify_server+0x17a>
  401c7d:	48 89 e1             	mov    %rsp,%rcx
  401c80:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401c87:	00 
  401c88:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401c8e:	48 8b 15 b3 34 20 00 	mov    0x2034b3(%rip),%rdx        # 605148 <lab>
  401c95:	48 8b 35 b4 34 20 00 	mov    0x2034b4(%rip),%rsi        # 605150 <course>
  401c9c:	48 8b 3d 9d 34 20 00 	mov    0x20349d(%rip),%rdi        # 605140 <user_id>
  401ca3:	e8 af 11 00 00       	callq  402e57 <driver_post>
  401ca8:	85 c0                	test   %eax,%eax
  401caa:	78 6f                	js     401d1b <notify_server+0x152>
  401cac:	48 8d 3d 3d 18 00 00 	lea    0x183d(%rip),%rdi        # 4034f0 <_IO_stdin_used+0x550>
  401cb3:	e8 08 f0 ff ff       	callq  400cc0 <puts@plt>
  401cb8:	48 8d 3d 14 17 00 00 	lea    0x1714(%rip),%rdi        # 4033d3 <_IO_stdin_used+0x433>
  401cbf:	e8 fc ef ff ff       	callq  400cc0 <puts@plt>
  401cc4:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401ccb:	00 
  401ccc:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401cd3:	00 00 
  401cd5:	0f 85 07 01 00 00    	jne    401de2 <notify_server+0x219>
  401cdb:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401ce2:	5b                   	pop    %rbx
  401ce3:	5d                   	pop    %rbp
  401ce4:	c3                   	retq   
  401ce5:	48 8d 35 d4 17 00 00 	lea    0x17d4(%rip),%rsi        # 4034c0 <_IO_stdin_used+0x520>
  401cec:	bf 01 00 00 00       	mov    $0x1,%edi
  401cf1:	b8 00 00 00 00       	mov    $0x0,%eax
  401cf6:	e8 e5 f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401cfb:	bf 01 00 00 00       	mov    $0x1,%edi
  401d00:	e8 2b f1 ff ff       	callq  400e30 <exit@plt>
  401d05:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401d0a:	e9 13 ff ff ff       	jmpq   401c22 <notify_server+0x59>
  401d0f:	48 8d 2d 90 16 00 00 	lea    0x1690(%rip),%rbp        # 4033a6 <_IO_stdin_used+0x406>
  401d16:	e9 16 ff ff ff       	jmpq   401c31 <notify_server+0x68>
  401d1b:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401d22:	00 
  401d23:	48 8d 35 9d 16 00 00 	lea    0x169d(%rip),%rsi        # 4033c7 <_IO_stdin_used+0x427>
  401d2a:	bf 01 00 00 00       	mov    $0x1,%edi
  401d2f:	b8 00 00 00 00       	mov    $0x0,%eax
  401d34:	e8 a7 f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401d39:	bf 01 00 00 00       	mov    $0x1,%edi
  401d3e:	e8 ed f0 ff ff       	callq  400e30 <exit@plt>
  401d43:	48 8d 3d 93 16 00 00 	lea    0x1693(%rip),%rdi        # 4033dd <_IO_stdin_used+0x43d>
  401d4a:	e8 71 ef ff ff       	callq  400cc0 <puts@plt>
  401d4f:	e9 70 ff ff ff       	jmpq   401cc4 <notify_server+0xfb>
  401d54:	48 89 ea             	mov    %rbp,%rdx
  401d57:	48 8d 35 ca 17 00 00 	lea    0x17ca(%rip),%rsi        # 403528 <_IO_stdin_used+0x588>
  401d5e:	bf 01 00 00 00       	mov    $0x1,%edi
  401d63:	b8 00 00 00 00       	mov    $0x0,%eax
  401d68:	e8 73 f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401d6d:	48 8b 15 cc 33 20 00 	mov    0x2033cc(%rip),%rdx        # 605140 <user_id>
  401d74:	48 8d 35 69 16 00 00 	lea    0x1669(%rip),%rsi        # 4033e4 <_IO_stdin_used+0x444>
  401d7b:	bf 01 00 00 00       	mov    $0x1,%edi
  401d80:	b8 00 00 00 00       	mov    $0x0,%eax
  401d85:	e8 56 f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401d8a:	48 8b 15 bf 33 20 00 	mov    0x2033bf(%rip),%rdx        # 605150 <course>
  401d91:	48 8d 35 59 16 00 00 	lea    0x1659(%rip),%rsi        # 4033f1 <_IO_stdin_used+0x451>
  401d98:	bf 01 00 00 00       	mov    $0x1,%edi
  401d9d:	b8 00 00 00 00       	mov    $0x0,%eax
  401da2:	e8 39 f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401da7:	48 8b 15 9a 33 20 00 	mov    0x20339a(%rip),%rdx        # 605148 <lab>
  401dae:	48 8d 35 48 16 00 00 	lea    0x1648(%rip),%rsi        # 4033fd <_IO_stdin_used+0x45d>
  401db5:	bf 01 00 00 00       	mov    $0x1,%edi
  401dba:	b8 00 00 00 00       	mov    $0x0,%eax
  401dbf:	e8 1c f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401dc4:	48 89 e2             	mov    %rsp,%rdx
  401dc7:	48 8d 35 38 16 00 00 	lea    0x1638(%rip),%rsi        # 403406 <_IO_stdin_used+0x466>
  401dce:	bf 01 00 00 00       	mov    $0x1,%edi
  401dd3:	b8 00 00 00 00       	mov    $0x0,%eax
  401dd8:	e8 03 f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401ddd:	e9 e2 fe ff ff       	jmpq   401cc4 <notify_server+0xfb>
  401de2:	e8 f9 ee ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000401de7 <validate>:
  401de7:	53                   	push   %rbx
  401de8:	89 fb                	mov    %edi,%ebx
  401dea:	83 3d 17 37 20 00 00 	cmpl   $0x0,0x203717(%rip)        # 605508 <is_checker>
  401df1:	74 72                	je     401e65 <validate+0x7e>
  401df3:	39 3d 03 37 20 00    	cmp    %edi,0x203703(%rip)        # 6054fc <vlevel>
  401df9:	75 32                	jne    401e2d <validate+0x46>
  401dfb:	8b 15 f7 36 20 00    	mov    0x2036f7(%rip),%edx        # 6054f8 <check_level>
  401e01:	39 fa                	cmp    %edi,%edx
  401e03:	75 3e                	jne    401e43 <validate+0x5c>
  401e05:	0f be 15 1c 43 20 00 	movsbl 0x20431c(%rip),%edx        # 606128 <target_prefix>
  401e0c:	4c 8d 05 0d 37 20 00 	lea    0x20370d(%rip),%r8        # 605520 <gets_buf>
  401e13:	89 f9                	mov    %edi,%ecx
  401e15:	48 8d 35 14 16 00 00 	lea    0x1614(%rip),%rsi        # 403430 <_IO_stdin_used+0x490>
  401e1c:	bf 01 00 00 00       	mov    $0x1,%edi
  401e21:	b8 00 00 00 00       	mov    $0x0,%eax
  401e26:	e8 b5 ef ff ff       	callq  400de0 <__printf_chk@plt>
  401e2b:	5b                   	pop    %rbx
  401e2c:	c3                   	retq   
  401e2d:	48 8d 3d de 15 00 00 	lea    0x15de(%rip),%rdi        # 403412 <_IO_stdin_used+0x472>
  401e34:	e8 87 ee ff ff       	callq  400cc0 <puts@plt>
  401e39:	b8 00 00 00 00       	mov    $0x0,%eax
  401e3e:	e8 fc fc ff ff       	callq  401b3f <check_fail>
  401e43:	89 f9                	mov    %edi,%ecx
  401e45:	48 8d 35 04 17 00 00 	lea    0x1704(%rip),%rsi        # 403550 <_IO_stdin_used+0x5b0>
  401e4c:	bf 01 00 00 00       	mov    $0x1,%edi
  401e51:	b8 00 00 00 00       	mov    $0x0,%eax
  401e56:	e8 85 ef ff ff       	callq  400de0 <__printf_chk@plt>
  401e5b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e60:	e8 da fc ff ff       	callq  401b3f <check_fail>
  401e65:	39 3d 91 36 20 00    	cmp    %edi,0x203691(%rip)        # 6054fc <vlevel>
  401e6b:	74 1a                	je     401e87 <validate+0xa0>
  401e6d:	48 8d 3d 9e 15 00 00 	lea    0x159e(%rip),%rdi        # 403412 <_IO_stdin_used+0x472>
  401e74:	e8 47 ee ff ff       	callq  400cc0 <puts@plt>
  401e79:	89 de                	mov    %ebx,%esi
  401e7b:	bf 00 00 00 00       	mov    $0x0,%edi
  401e80:	e8 44 fd ff ff       	callq  401bc9 <notify_server>
  401e85:	eb a4                	jmp    401e2b <validate+0x44>
  401e87:	0f be 0d 9a 42 20 00 	movsbl 0x20429a(%rip),%ecx        # 606128 <target_prefix>
  401e8e:	89 fa                	mov    %edi,%edx
  401e90:	48 8d 35 e1 16 00 00 	lea    0x16e1(%rip),%rsi        # 403578 <_IO_stdin_used+0x5d8>
  401e97:	bf 01 00 00 00       	mov    $0x1,%edi
  401e9c:	b8 00 00 00 00       	mov    $0x0,%eax
  401ea1:	e8 3a ef ff ff       	callq  400de0 <__printf_chk@plt>
  401ea6:	89 de                	mov    %ebx,%esi
  401ea8:	bf 01 00 00 00       	mov    $0x1,%edi
  401ead:	e8 17 fd ff ff       	callq  401bc9 <notify_server>
  401eb2:	e9 74 ff ff ff       	jmpq   401e2b <validate+0x44>

0000000000401eb7 <fail>:
  401eb7:	48 83 ec 08          	sub    $0x8,%rsp
  401ebb:	83 3d 46 36 20 00 00 	cmpl   $0x0,0x203646(%rip)        # 605508 <is_checker>
  401ec2:	75 11                	jne    401ed5 <fail+0x1e>
  401ec4:	89 fe                	mov    %edi,%esi
  401ec6:	bf 00 00 00 00       	mov    $0x0,%edi
  401ecb:	e8 f9 fc ff ff       	callq  401bc9 <notify_server>
  401ed0:	48 83 c4 08          	add    $0x8,%rsp
  401ed4:	c3                   	retq   
  401ed5:	b8 00 00 00 00       	mov    $0x0,%eax
  401eda:	e8 60 fc ff ff       	callq  401b3f <check_fail>

0000000000401edf <bushandler>:
  401edf:	48 83 ec 08          	sub    $0x8,%rsp
  401ee3:	83 3d 1e 36 20 00 00 	cmpl   $0x0,0x20361e(%rip)        # 605508 <is_checker>
  401eea:	74 16                	je     401f02 <bushandler+0x23>
  401eec:	48 8d 3d 52 15 00 00 	lea    0x1552(%rip),%rdi        # 403445 <_IO_stdin_used+0x4a5>
  401ef3:	e8 c8 ed ff ff       	callq  400cc0 <puts@plt>
  401ef8:	b8 00 00 00 00       	mov    $0x0,%eax
  401efd:	e8 3d fc ff ff       	callq  401b3f <check_fail>
  401f02:	48 8d 3d a7 16 00 00 	lea    0x16a7(%rip),%rdi        # 4035b0 <_IO_stdin_used+0x610>
  401f09:	e8 b2 ed ff ff       	callq  400cc0 <puts@plt>
  401f0e:	48 8d 3d 3a 15 00 00 	lea    0x153a(%rip),%rdi        # 40344f <_IO_stdin_used+0x4af>
  401f15:	e8 a6 ed ff ff       	callq  400cc0 <puts@plt>
  401f1a:	be 00 00 00 00       	mov    $0x0,%esi
  401f1f:	bf 00 00 00 00       	mov    $0x0,%edi
  401f24:	e8 a0 fc ff ff       	callq  401bc9 <notify_server>
  401f29:	bf 01 00 00 00       	mov    $0x1,%edi
  401f2e:	e8 fd ee ff ff       	callq  400e30 <exit@plt>

0000000000401f33 <seghandler>:
  401f33:	48 83 ec 08          	sub    $0x8,%rsp
  401f37:	83 3d ca 35 20 00 00 	cmpl   $0x0,0x2035ca(%rip)        # 605508 <is_checker>
  401f3e:	74 16                	je     401f56 <seghandler+0x23>
  401f40:	48 8d 3d 1e 15 00 00 	lea    0x151e(%rip),%rdi        # 403465 <_IO_stdin_used+0x4c5>
  401f47:	e8 74 ed ff ff       	callq  400cc0 <puts@plt>
  401f4c:	b8 00 00 00 00       	mov    $0x0,%eax
  401f51:	e8 e9 fb ff ff       	callq  401b3f <check_fail>
  401f56:	48 8d 3d 73 16 00 00 	lea    0x1673(%rip),%rdi        # 4035d0 <_IO_stdin_used+0x630>
  401f5d:	e8 5e ed ff ff       	callq  400cc0 <puts@plt>
  401f62:	48 8d 3d e6 14 00 00 	lea    0x14e6(%rip),%rdi        # 40344f <_IO_stdin_used+0x4af>
  401f69:	e8 52 ed ff ff       	callq  400cc0 <puts@plt>
  401f6e:	be 00 00 00 00       	mov    $0x0,%esi
  401f73:	bf 00 00 00 00       	mov    $0x0,%edi
  401f78:	e8 4c fc ff ff       	callq  401bc9 <notify_server>
  401f7d:	bf 01 00 00 00       	mov    $0x1,%edi
  401f82:	e8 a9 ee ff ff       	callq  400e30 <exit@plt>

0000000000401f87 <illegalhandler>:
  401f87:	48 83 ec 08          	sub    $0x8,%rsp
  401f8b:	83 3d 76 35 20 00 00 	cmpl   $0x0,0x203576(%rip)        # 605508 <is_checker>
  401f92:	74 16                	je     401faa <illegalhandler+0x23>
  401f94:	48 8d 3d dd 14 00 00 	lea    0x14dd(%rip),%rdi        # 403478 <_IO_stdin_used+0x4d8>
  401f9b:	e8 20 ed ff ff       	callq  400cc0 <puts@plt>
  401fa0:	b8 00 00 00 00       	mov    $0x0,%eax
  401fa5:	e8 95 fb ff ff       	callq  401b3f <check_fail>
  401faa:	48 8d 3d 47 16 00 00 	lea    0x1647(%rip),%rdi        # 4035f8 <_IO_stdin_used+0x658>
  401fb1:	e8 0a ed ff ff       	callq  400cc0 <puts@plt>
  401fb6:	48 8d 3d 92 14 00 00 	lea    0x1492(%rip),%rdi        # 40344f <_IO_stdin_used+0x4af>
  401fbd:	e8 fe ec ff ff       	callq  400cc0 <puts@plt>
  401fc2:	be 00 00 00 00       	mov    $0x0,%esi
  401fc7:	bf 00 00 00 00       	mov    $0x0,%edi
  401fcc:	e8 f8 fb ff ff       	callq  401bc9 <notify_server>
  401fd1:	bf 01 00 00 00       	mov    $0x1,%edi
  401fd6:	e8 55 ee ff ff       	callq  400e30 <exit@plt>

0000000000401fdb <sigalrmhandler>:
  401fdb:	48 83 ec 08          	sub    $0x8,%rsp
  401fdf:	83 3d 22 35 20 00 00 	cmpl   $0x0,0x203522(%rip)        # 605508 <is_checker>
  401fe6:	74 16                	je     401ffe <sigalrmhandler+0x23>
  401fe8:	48 8d 3d 9d 14 00 00 	lea    0x149d(%rip),%rdi        # 40348c <_IO_stdin_used+0x4ec>
  401fef:	e8 cc ec ff ff       	callq  400cc0 <puts@plt>
  401ff4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ff9:	e8 41 fb ff ff       	callq  401b3f <check_fail>
  401ffe:	ba 05 00 00 00       	mov    $0x5,%edx
  402003:	48 8d 35 1e 16 00 00 	lea    0x161e(%rip),%rsi        # 403628 <_IO_stdin_used+0x688>
  40200a:	bf 01 00 00 00       	mov    $0x1,%edi
  40200f:	b8 00 00 00 00       	mov    $0x0,%eax
  402014:	e8 c7 ed ff ff       	callq  400de0 <__printf_chk@plt>
  402019:	be 00 00 00 00       	mov    $0x0,%esi
  40201e:	bf 00 00 00 00       	mov    $0x0,%edi
  402023:	e8 a1 fb ff ff       	callq  401bc9 <notify_server>
  402028:	bf 01 00 00 00       	mov    $0x1,%edi
  40202d:	e8 fe ed ff ff       	callq  400e30 <exit@plt>

0000000000402032 <launch>:
  402032:	55                   	push   %rbp
  402033:	48 89 e5             	mov    %rsp,%rbp
  402036:	48 83 ec 10          	sub    $0x10,%rsp
  40203a:	48 89 fa             	mov    %rdi,%rdx
  40203d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402044:	00 00 
  402046:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40204a:	31 c0                	xor    %eax,%eax
  40204c:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  402050:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402054:	48 29 c4             	sub    %rax,%rsp
  402057:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  40205c:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402060:	be f4 00 00 00       	mov    $0xf4,%esi
  402065:	e8 96 ec ff ff       	callq  400d00 <memset@plt>
  40206a:	48 8b 05 2f 34 20 00 	mov    0x20342f(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  402071:	48 39 05 78 34 20 00 	cmp    %rax,0x203478(%rip)        # 6054f0 <infile>
  402078:	74 3a                	je     4020b4 <launch+0x82>
  40207a:	c7 05 78 34 20 00 00 	movl   $0x0,0x203478(%rip)        # 6054fc <vlevel>
  402081:	00 00 00 
  402084:	b8 00 00 00 00       	mov    $0x0,%eax
  402089:	e8 ed f8 ff ff       	callq  40197b <test>
  40208e:	83 3d 73 34 20 00 00 	cmpl   $0x0,0x203473(%rip)        # 605508 <is_checker>
  402095:	75 35                	jne    4020cc <launch+0x9a>
  402097:	48 8d 3d 0e 14 00 00 	lea    0x140e(%rip),%rdi        # 4034ac <_IO_stdin_used+0x50c>
  40209e:	e8 1d ec ff ff       	callq  400cc0 <puts@plt>
  4020a3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020a7:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4020ae:	00 00 
  4020b0:	75 30                	jne    4020e2 <launch+0xb0>
  4020b2:	c9                   	leaveq 
  4020b3:	c3                   	retq   
  4020b4:	48 8d 35 d9 13 00 00 	lea    0x13d9(%rip),%rsi        # 403494 <_IO_stdin_used+0x4f4>
  4020bb:	bf 01 00 00 00       	mov    $0x1,%edi
  4020c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4020c5:	e8 16 ed ff ff       	callq  400de0 <__printf_chk@plt>
  4020ca:	eb ae                	jmp    40207a <launch+0x48>
  4020cc:	48 8d 3d ce 13 00 00 	lea    0x13ce(%rip),%rdi        # 4034a1 <_IO_stdin_used+0x501>
  4020d3:	e8 e8 eb ff ff       	callq  400cc0 <puts@plt>
  4020d8:	b8 00 00 00 00       	mov    $0x0,%eax
  4020dd:	e8 5d fa ff ff       	callq  401b3f <check_fail>
  4020e2:	e8 f9 eb ff ff       	callq  400ce0 <__stack_chk_fail@plt>

00000000004020e7 <stable_launch>:
  4020e7:	53                   	push   %rbx
  4020e8:	48 89 3d f9 33 20 00 	mov    %rdi,0x2033f9(%rip)        # 6054e8 <global_offset>
  4020ef:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4020f5:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4020fb:	b9 32 01 00 00       	mov    $0x132,%ecx
  402100:	ba 07 00 00 00       	mov    $0x7,%edx
  402105:	be 00 00 10 00       	mov    $0x100000,%esi
  40210a:	bf 00 60 58 55       	mov    $0x55586000,%edi
  40210f:	e8 dc eb ff ff       	callq  400cf0 <mmap@plt>
  402114:	48 89 c3             	mov    %rax,%rbx
  402117:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  40211d:	75 43                	jne    402162 <stable_launch+0x7b>
  40211f:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402126:	48 89 15 03 40 20 00 	mov    %rdx,0x204003(%rip)        # 606130 <stack_top>
  40212d:	48 89 e0             	mov    %rsp,%rax
  402130:	48 89 d4             	mov    %rdx,%rsp
  402133:	48 89 c2             	mov    %rax,%rdx
  402136:	48 89 15 a3 33 20 00 	mov    %rdx,0x2033a3(%rip)        # 6054e0 <global_save_stack>
  40213d:	48 8b 3d a4 33 20 00 	mov    0x2033a4(%rip),%rdi        # 6054e8 <global_offset>
  402144:	e8 e9 fe ff ff       	callq  402032 <launch>
  402149:	48 8b 05 90 33 20 00 	mov    0x203390(%rip),%rax        # 6054e0 <global_save_stack>
  402150:	48 89 c4             	mov    %rax,%rsp
  402153:	be 00 00 10 00       	mov    $0x100000,%esi
  402158:	48 89 df             	mov    %rbx,%rdi
  40215b:	e8 70 ec ff ff       	callq  400dd0 <munmap@plt>
  402160:	5b                   	pop    %rbx
  402161:	c3                   	retq   
  402162:	be 00 00 10 00       	mov    $0x100000,%esi
  402167:	48 89 c7             	mov    %rax,%rdi
  40216a:	e8 61 ec ff ff       	callq  400dd0 <munmap@plt>
  40216f:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402174:	48 8d 15 e5 14 00 00 	lea    0x14e5(%rip),%rdx        # 403660 <_IO_stdin_used+0x6c0>
  40217b:	be 01 00 00 00       	mov    $0x1,%esi
  402180:	48 8b 3d 39 33 20 00 	mov    0x203339(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  402187:	b8 00 00 00 00       	mov    $0x0,%eax
  40218c:	e8 bf ec ff ff       	callq  400e50 <__fprintf_chk@plt>
  402191:	bf 01 00 00 00       	mov    $0x1,%edi
  402196:	e8 95 ec ff ff       	callq  400e30 <exit@plt>

000000000040219b <rio_readinitb>:
  40219b:	89 37                	mov    %esi,(%rdi)
  40219d:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4021a4:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4021a8:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4021ac:	c3                   	retq   

00000000004021ad <sigalrm_handler>:
  4021ad:	48 83 ec 08          	sub    $0x8,%rsp
  4021b1:	b9 00 00 00 00       	mov    $0x0,%ecx
  4021b6:	48 8d 15 e3 14 00 00 	lea    0x14e3(%rip),%rdx        # 4036a0 <trans_char+0x10>
  4021bd:	be 01 00 00 00       	mov    $0x1,%esi
  4021c2:	48 8b 3d f7 32 20 00 	mov    0x2032f7(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  4021c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ce:	e8 7d ec ff ff       	callq  400e50 <__fprintf_chk@plt>
  4021d3:	bf 01 00 00 00       	mov    $0x1,%edi
  4021d8:	e8 53 ec ff ff       	callq  400e30 <exit@plt>

00000000004021dd <rio_writen>:
  4021dd:	41 55                	push   %r13
  4021df:	41 54                	push   %r12
  4021e1:	55                   	push   %rbp
  4021e2:	53                   	push   %rbx
  4021e3:	48 83 ec 08          	sub    $0x8,%rsp
  4021e7:	41 89 fc             	mov    %edi,%r12d
  4021ea:	48 89 f5             	mov    %rsi,%rbp
  4021ed:	49 89 d5             	mov    %rdx,%r13
  4021f0:	48 89 d3             	mov    %rdx,%rbx
  4021f3:	eb 06                	jmp    4021fb <rio_writen+0x1e>
  4021f5:	48 29 c3             	sub    %rax,%rbx
  4021f8:	48 01 c5             	add    %rax,%rbp
  4021fb:	48 85 db             	test   %rbx,%rbx
  4021fe:	74 24                	je     402224 <rio_writen+0x47>
  402200:	48 89 da             	mov    %rbx,%rdx
  402203:	48 89 ee             	mov    %rbp,%rsi
  402206:	44 89 e7             	mov    %r12d,%edi
  402209:	e8 c2 ea ff ff       	callq  400cd0 <write@plt>
  40220e:	48 85 c0             	test   %rax,%rax
  402211:	7f e2                	jg     4021f5 <rio_writen+0x18>
  402213:	e8 68 ea ff ff       	callq  400c80 <__errno_location@plt>
  402218:	83 38 04             	cmpl   $0x4,(%rax)
  40221b:	75 15                	jne    402232 <rio_writen+0x55>
  40221d:	b8 00 00 00 00       	mov    $0x0,%eax
  402222:	eb d1                	jmp    4021f5 <rio_writen+0x18>
  402224:	4c 89 e8             	mov    %r13,%rax
  402227:	48 83 c4 08          	add    $0x8,%rsp
  40222b:	5b                   	pop    %rbx
  40222c:	5d                   	pop    %rbp
  40222d:	41 5c                	pop    %r12
  40222f:	41 5d                	pop    %r13
  402231:	c3                   	retq   
  402232:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402239:	eb ec                	jmp    402227 <rio_writen+0x4a>

000000000040223b <rio_read>:
  40223b:	41 55                	push   %r13
  40223d:	41 54                	push   %r12
  40223f:	55                   	push   %rbp
  402240:	53                   	push   %rbx
  402241:	48 83 ec 08          	sub    $0x8,%rsp
  402245:	48 89 fb             	mov    %rdi,%rbx
  402248:	49 89 f5             	mov    %rsi,%r13
  40224b:	49 89 d4             	mov    %rdx,%r12
  40224e:	eb 0a                	jmp    40225a <rio_read+0x1f>
  402250:	e8 2b ea ff ff       	callq  400c80 <__errno_location@plt>
  402255:	83 38 04             	cmpl   $0x4,(%rax)
  402258:	75 5c                	jne    4022b6 <rio_read+0x7b>
  40225a:	8b 6b 04             	mov    0x4(%rbx),%ebp
  40225d:	85 ed                	test   %ebp,%ebp
  40225f:	7f 24                	jg     402285 <rio_read+0x4a>
  402261:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402265:	8b 3b                	mov    (%rbx),%edi
  402267:	ba 00 20 00 00       	mov    $0x2000,%edx
  40226c:	48 89 ee             	mov    %rbp,%rsi
  40226f:	e8 bc ea ff ff       	callq  400d30 <read@plt>
  402274:	89 43 04             	mov    %eax,0x4(%rbx)
  402277:	85 c0                	test   %eax,%eax
  402279:	78 d5                	js     402250 <rio_read+0x15>
  40227b:	85 c0                	test   %eax,%eax
  40227d:	74 40                	je     4022bf <rio_read+0x84>
  40227f:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402283:	eb d5                	jmp    40225a <rio_read+0x1f>
  402285:	89 e8                	mov    %ebp,%eax
  402287:	4c 39 e0             	cmp    %r12,%rax
  40228a:	72 03                	jb     40228f <rio_read+0x54>
  40228c:	44 89 e5             	mov    %r12d,%ebp
  40228f:	4c 63 e5             	movslq %ebp,%r12
  402292:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402296:	4c 89 e2             	mov    %r12,%rdx
  402299:	4c 89 ef             	mov    %r13,%rdi
  40229c:	e8 df ea ff ff       	callq  400d80 <memcpy@plt>
  4022a1:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4022a5:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4022a8:	4c 89 e0             	mov    %r12,%rax
  4022ab:	48 83 c4 08          	add    $0x8,%rsp
  4022af:	5b                   	pop    %rbx
  4022b0:	5d                   	pop    %rbp
  4022b1:	41 5c                	pop    %r12
  4022b3:	41 5d                	pop    %r13
  4022b5:	c3                   	retq   
  4022b6:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022bd:	eb ec                	jmp    4022ab <rio_read+0x70>
  4022bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4022c4:	eb e5                	jmp    4022ab <rio_read+0x70>

00000000004022c6 <rio_readlineb>:
  4022c6:	41 55                	push   %r13
  4022c8:	41 54                	push   %r12
  4022ca:	55                   	push   %rbp
  4022cb:	53                   	push   %rbx
  4022cc:	48 83 ec 18          	sub    $0x18,%rsp
  4022d0:	49 89 fd             	mov    %rdi,%r13
  4022d3:	48 89 f5             	mov    %rsi,%rbp
  4022d6:	49 89 d4             	mov    %rdx,%r12
  4022d9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022e0:	00 00 
  4022e2:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4022e7:	31 c0                	xor    %eax,%eax
  4022e9:	bb 01 00 00 00       	mov    $0x1,%ebx
  4022ee:	4c 39 e3             	cmp    %r12,%rbx
  4022f1:	73 47                	jae    40233a <rio_readlineb+0x74>
  4022f3:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4022f8:	ba 01 00 00 00       	mov    $0x1,%edx
  4022fd:	4c 89 ef             	mov    %r13,%rdi
  402300:	e8 36 ff ff ff       	callq  40223b <rio_read>
  402305:	83 f8 01             	cmp    $0x1,%eax
  402308:	75 1c                	jne    402326 <rio_readlineb+0x60>
  40230a:	48 8d 45 01          	lea    0x1(%rbp),%rax
  40230e:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  402313:	88 55 00             	mov    %dl,0x0(%rbp)
  402316:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  40231b:	74 1a                	je     402337 <rio_readlineb+0x71>
  40231d:	48 83 c3 01          	add    $0x1,%rbx
  402321:	48 89 c5             	mov    %rax,%rbp
  402324:	eb c8                	jmp    4022ee <rio_readlineb+0x28>
  402326:	85 c0                	test   %eax,%eax
  402328:	75 32                	jne    40235c <rio_readlineb+0x96>
  40232a:	48 83 fb 01          	cmp    $0x1,%rbx
  40232e:	75 0a                	jne    40233a <rio_readlineb+0x74>
  402330:	b8 00 00 00 00       	mov    $0x0,%eax
  402335:	eb 0a                	jmp    402341 <rio_readlineb+0x7b>
  402337:	48 89 c5             	mov    %rax,%rbp
  40233a:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  40233e:	48 89 d8             	mov    %rbx,%rax
  402341:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402346:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  40234d:	00 00 
  40234f:	75 14                	jne    402365 <rio_readlineb+0x9f>
  402351:	48 83 c4 18          	add    $0x18,%rsp
  402355:	5b                   	pop    %rbx
  402356:	5d                   	pop    %rbp
  402357:	41 5c                	pop    %r12
  402359:	41 5d                	pop    %r13
  40235b:	c3                   	retq   
  40235c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402363:	eb dc                	jmp    402341 <rio_readlineb+0x7b>
  402365:	e8 76 e9 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

000000000040236a <urlencode>:
  40236a:	41 54                	push   %r12
  40236c:	55                   	push   %rbp
  40236d:	53                   	push   %rbx
  40236e:	48 83 ec 10          	sub    $0x10,%rsp
  402372:	48 89 fb             	mov    %rdi,%rbx
  402375:	48 89 f5             	mov    %rsi,%rbp
  402378:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40237f:	00 00 
  402381:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402386:	31 c0                	xor    %eax,%eax
  402388:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40238f:	f2 ae                	repnz scas %es:(%rdi),%al
  402391:	48 89 ce             	mov    %rcx,%rsi
  402394:	48 f7 d6             	not    %rsi
  402397:	8d 46 ff             	lea    -0x1(%rsi),%eax
  40239a:	eb 0f                	jmp    4023ab <urlencode+0x41>
  40239c:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4023a0:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4023a4:	48 83 c3 01          	add    $0x1,%rbx
  4023a8:	44 89 e0             	mov    %r12d,%eax
  4023ab:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4023af:	85 c0                	test   %eax,%eax
  4023b1:	0f 84 a8 00 00 00    	je     40245f <urlencode+0xf5>
  4023b7:	44 0f b6 03          	movzbl (%rbx),%r8d
  4023bb:	41 80 f8 2a          	cmp    $0x2a,%r8b
  4023bf:	0f 94 c2             	sete   %dl
  4023c2:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4023c6:	0f 94 c0             	sete   %al
  4023c9:	08 c2                	or     %al,%dl
  4023cb:	75 cf                	jne    40239c <urlencode+0x32>
  4023cd:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4023d1:	74 c9                	je     40239c <urlencode+0x32>
  4023d3:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4023d7:	74 c3                	je     40239c <urlencode+0x32>
  4023d9:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4023dd:	3c 09                	cmp    $0x9,%al
  4023df:	76 bb                	jbe    40239c <urlencode+0x32>
  4023e1:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4023e5:	3c 19                	cmp    $0x19,%al
  4023e7:	76 b3                	jbe    40239c <urlencode+0x32>
  4023e9:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4023ed:	3c 19                	cmp    $0x19,%al
  4023ef:	76 ab                	jbe    40239c <urlencode+0x32>
  4023f1:	41 80 f8 20          	cmp    $0x20,%r8b
  4023f5:	74 56                	je     40244d <urlencode+0xe3>
  4023f7:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4023fb:	3c 5f                	cmp    $0x5f,%al
  4023fd:	0f 96 c2             	setbe  %dl
  402400:	41 80 f8 09          	cmp    $0x9,%r8b
  402404:	0f 94 c0             	sete   %al
  402407:	08 c2                	or     %al,%dl
  402409:	74 4f                	je     40245a <urlencode+0xf0>
  40240b:	48 89 e7             	mov    %rsp,%rdi
  40240e:	45 0f b6 c0          	movzbl %r8b,%r8d
  402412:	48 8d 0d 1f 13 00 00 	lea    0x131f(%rip),%rcx        # 403738 <trans_char+0xa8>
  402419:	ba 08 00 00 00       	mov    $0x8,%edx
  40241e:	be 01 00 00 00       	mov    $0x1,%esi
  402423:	b8 00 00 00 00       	mov    $0x0,%eax
  402428:	e8 33 ea ff ff       	callq  400e60 <__sprintf_chk@plt>
  40242d:	0f b6 04 24          	movzbl (%rsp),%eax
  402431:	88 45 00             	mov    %al,0x0(%rbp)
  402434:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402439:	88 45 01             	mov    %al,0x1(%rbp)
  40243c:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402441:	88 45 02             	mov    %al,0x2(%rbp)
  402444:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402448:	e9 57 ff ff ff       	jmpq   4023a4 <urlencode+0x3a>
  40244d:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402451:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402455:	e9 4a ff ff ff       	jmpq   4023a4 <urlencode+0x3a>
  40245a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40245f:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402464:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  40246b:	00 00 
  40246d:	75 09                	jne    402478 <urlencode+0x10e>
  40246f:	48 83 c4 10          	add    $0x10,%rsp
  402473:	5b                   	pop    %rbx
  402474:	5d                   	pop    %rbp
  402475:	41 5c                	pop    %r12
  402477:	c3                   	retq   
  402478:	e8 63 e8 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

000000000040247d <submitr>:
  40247d:	41 57                	push   %r15
  40247f:	41 56                	push   %r14
  402481:	41 55                	push   %r13
  402483:	41 54                	push   %r12
  402485:	55                   	push   %rbp
  402486:	53                   	push   %rbx
  402487:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  40248e:	49 89 fd             	mov    %rdi,%r13
  402491:	89 74 24 14          	mov    %esi,0x14(%rsp)
  402495:	49 89 d7             	mov    %rdx,%r15
  402498:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40249d:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  4024a2:	4d 89 ce             	mov    %r9,%r14
  4024a5:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  4024ac:	00 
  4024ad:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024b4:	00 00 
  4024b6:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  4024bd:	00 
  4024be:	31 c0                	xor    %eax,%eax
  4024c0:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  4024c7:	00 
  4024c8:	ba 00 00 00 00       	mov    $0x0,%edx
  4024cd:	be 01 00 00 00       	mov    $0x1,%esi
  4024d2:	bf 02 00 00 00       	mov    $0x2,%edi
  4024d7:	e8 94 e9 ff ff       	callq  400e70 <socket@plt>
  4024dc:	85 c0                	test   %eax,%eax
  4024de:	0f 88 a9 02 00 00    	js     40278d <submitr+0x310>
  4024e4:	89 c3                	mov    %eax,%ebx
  4024e6:	4c 89 ef             	mov    %r13,%rdi
  4024e9:	e8 62 e8 ff ff       	callq  400d50 <gethostbyname@plt>
  4024ee:	48 85 c0             	test   %rax,%rax
  4024f1:	0f 84 e2 02 00 00    	je     4027d9 <submitr+0x35c>
  4024f7:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  4024fc:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  402503:	00 00 
  402505:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  40250c:	00 
  40250d:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  402514:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  40251b:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40251f:	48 8b 40 18          	mov    0x18(%rax),%rax
  402523:	48 8b 30             	mov    (%rax),%rsi
  402526:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  40252b:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402530:	e8 2b e8 ff ff       	callq  400d60 <__memmove_chk@plt>
  402535:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  40253a:	66 c1 c8 08          	ror    $0x8,%ax
  40253e:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  402543:	ba 10 00 00 00       	mov    $0x10,%edx
  402548:	4c 89 e6             	mov    %r12,%rsi
  40254b:	89 df                	mov    %ebx,%edi
  40254d:	e8 ee e8 ff ff       	callq  400e40 <connect@plt>
  402552:	85 c0                	test   %eax,%eax
  402554:	0f 88 e7 02 00 00    	js     402841 <submitr+0x3c4>
  40255a:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402561:	b8 00 00 00 00       	mov    $0x0,%eax
  402566:	48 89 f1             	mov    %rsi,%rcx
  402569:	4c 89 f7             	mov    %r14,%rdi
  40256c:	f2 ae                	repnz scas %es:(%rdi),%al
  40256e:	48 89 ca             	mov    %rcx,%rdx
  402571:	48 f7 d2             	not    %rdx
  402574:	48 89 f1             	mov    %rsi,%rcx
  402577:	4c 89 ff             	mov    %r15,%rdi
  40257a:	f2 ae                	repnz scas %es:(%rdi),%al
  40257c:	48 f7 d1             	not    %rcx
  40257f:	49 89 c8             	mov    %rcx,%r8
  402582:	48 89 f1             	mov    %rsi,%rcx
  402585:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  40258a:	f2 ae                	repnz scas %es:(%rdi),%al
  40258c:	48 f7 d1             	not    %rcx
  40258f:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402594:	48 89 f1             	mov    %rsi,%rcx
  402597:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  40259c:	f2 ae                	repnz scas %es:(%rdi),%al
  40259e:	48 89 c8             	mov    %rcx,%rax
  4025a1:	48 f7 d0             	not    %rax
  4025a4:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4025a9:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4025ae:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4025b5:	00 
  4025b6:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4025bc:	0f 87 d9 02 00 00    	ja     40289b <submitr+0x41e>
  4025c2:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  4025c9:	00 
  4025ca:	b9 00 04 00 00       	mov    $0x400,%ecx
  4025cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4025d4:	48 89 f7             	mov    %rsi,%rdi
  4025d7:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4025da:	4c 89 f7             	mov    %r14,%rdi
  4025dd:	e8 88 fd ff ff       	callq  40236a <urlencode>
  4025e2:	85 c0                	test   %eax,%eax
  4025e4:	0f 88 24 03 00 00    	js     40290e <submitr+0x491>
  4025ea:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  4025f1:	00 
  4025f2:	41 55                	push   %r13
  4025f4:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  4025fb:	00 
  4025fc:	50                   	push   %rax
  4025fd:	4d 89 f9             	mov    %r15,%r9
  402600:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  402605:	48 8d 0d bc 10 00 00 	lea    0x10bc(%rip),%rcx        # 4036c8 <trans_char+0x38>
  40260c:	ba 00 20 00 00       	mov    $0x2000,%edx
  402611:	be 01 00 00 00       	mov    $0x1,%esi
  402616:	4c 89 e7             	mov    %r12,%rdi
  402619:	b8 00 00 00 00       	mov    $0x0,%eax
  40261e:	e8 3d e8 ff ff       	callq  400e60 <__sprintf_chk@plt>
  402623:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40262a:	b8 00 00 00 00       	mov    $0x0,%eax
  40262f:	4c 89 e7             	mov    %r12,%rdi
  402632:	f2 ae                	repnz scas %es:(%rdi),%al
  402634:	48 89 ca             	mov    %rcx,%rdx
  402637:	48 f7 d2             	not    %rdx
  40263a:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  40263e:	4c 89 e6             	mov    %r12,%rsi
  402641:	89 df                	mov    %ebx,%edi
  402643:	e8 95 fb ff ff       	callq  4021dd <rio_writen>
  402648:	48 83 c4 10          	add    $0x10,%rsp
  40264c:	48 85 c0             	test   %rax,%rax
  40264f:	0f 88 44 03 00 00    	js     402999 <submitr+0x51c>
  402655:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  40265a:	89 de                	mov    %ebx,%esi
  40265c:	4c 89 e7             	mov    %r12,%rdi
  40265f:	e8 37 fb ff ff       	callq  40219b <rio_readinitb>
  402664:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40266b:	00 
  40266c:	ba 00 20 00 00       	mov    $0x2000,%edx
  402671:	4c 89 e7             	mov    %r12,%rdi
  402674:	e8 4d fc ff ff       	callq  4022c6 <rio_readlineb>
  402679:	48 85 c0             	test   %rax,%rax
  40267c:	0f 8e 86 03 00 00    	jle    402a08 <submitr+0x58b>
  402682:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402687:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  40268e:	00 
  40268f:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  402696:	00 
  402697:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  40269e:	00 
  40269f:	48 8d 35 99 10 00 00 	lea    0x1099(%rip),%rsi        # 40373f <trans_char+0xaf>
  4026a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4026ab:	e8 10 e7 ff ff       	callq  400dc0 <__isoc99_sscanf@plt>
  4026b0:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4026b7:	00 
  4026b8:	b9 03 00 00 00       	mov    $0x3,%ecx
  4026bd:	48 8d 3d 92 10 00 00 	lea    0x1092(%rip),%rdi        # 403756 <trans_char+0xc6>
  4026c4:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4026c6:	0f 97 c0             	seta   %al
  4026c9:	1c 00                	sbb    $0x0,%al
  4026cb:	84 c0                	test   %al,%al
  4026cd:	0f 84 b3 03 00 00    	je     402a86 <submitr+0x609>
  4026d3:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4026da:	00 
  4026db:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4026e0:	ba 00 20 00 00       	mov    $0x2000,%edx
  4026e5:	e8 dc fb ff ff       	callq  4022c6 <rio_readlineb>
  4026ea:	48 85 c0             	test   %rax,%rax
  4026ed:	7f c1                	jg     4026b0 <submitr+0x233>
  4026ef:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4026f6:	3a 20 43 
  4026f9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402700:	20 75 6e 
  402703:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402707:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40270b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402712:	74 6f 20 
  402715:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  40271c:	68 65 61 
  40271f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402723:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402727:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  40272e:	66 72 6f 
  402731:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  402738:	20 72 65 
  40273b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40273f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402743:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  40274a:	73 65 72 
  40274d:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402751:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  402758:	89 df                	mov    %ebx,%edi
  40275a:	e8 c1 e5 ff ff       	callq  400d20 <close@plt>
  40275f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402764:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  40276b:	00 
  40276c:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402773:	00 00 
  402775:	0f 85 7e 04 00 00    	jne    402bf9 <submitr+0x77c>
  40277b:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402782:	5b                   	pop    %rbx
  402783:	5d                   	pop    %rbp
  402784:	41 5c                	pop    %r12
  402786:	41 5d                	pop    %r13
  402788:	41 5e                	pop    %r14
  40278a:	41 5f                	pop    %r15
  40278c:	c3                   	retq   
  40278d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402794:	3a 20 43 
  402797:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  40279e:	20 75 6e 
  4027a1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4027a5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4027a9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4027b0:	74 6f 20 
  4027b3:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  4027ba:	65 20 73 
  4027bd:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4027c1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4027c5:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4027cc:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4027d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027d7:	eb 8b                	jmp    402764 <submitr+0x2e7>
  4027d9:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4027e0:	3a 20 44 
  4027e3:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4027ea:	20 75 6e 
  4027ed:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4027f1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4027f5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4027fc:	74 6f 20 
  4027ff:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402806:	76 65 20 
  402809:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40280d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402811:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402818:	72 20 61 
  40281b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40281f:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402826:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  40282c:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402830:	89 df                	mov    %ebx,%edi
  402832:	e8 e9 e4 ff ff       	callq  400d20 <close@plt>
  402837:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40283c:	e9 23 ff ff ff       	jmpq   402764 <submitr+0x2e7>
  402841:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402848:	3a 20 55 
  40284b:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402852:	20 74 6f 
  402855:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402859:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40285d:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402864:	65 63 74 
  402867:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  40286e:	68 65 20 
  402871:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402875:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402879:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  402880:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  402886:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  40288a:	89 df                	mov    %ebx,%edi
  40288c:	e8 8f e4 ff ff       	callq  400d20 <close@plt>
  402891:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402896:	e9 c9 fe ff ff       	jmpq   402764 <submitr+0x2e7>
  40289b:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4028a2:	3a 20 52 
  4028a5:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4028ac:	20 73 74 
  4028af:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028b3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4028b7:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4028be:	74 6f 6f 
  4028c1:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  4028c8:	65 2e 20 
  4028cb:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4028cf:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4028d3:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4028da:	61 73 65 
  4028dd:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  4028e4:	49 54 52 
  4028e7:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4028eb:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4028ef:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4028f6:	55 46 00 
  4028f9:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4028fd:	89 df                	mov    %ebx,%edi
  4028ff:	e8 1c e4 ff ff       	callq  400d20 <close@plt>
  402904:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402909:	e9 56 fe ff ff       	jmpq   402764 <submitr+0x2e7>
  40290e:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402915:	3a 20 52 
  402918:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  40291f:	20 73 74 
  402922:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402926:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40292a:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402931:	63 6f 6e 
  402934:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  40293b:	20 61 6e 
  40293e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402942:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402946:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  40294d:	67 61 6c 
  402950:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402957:	6e 70 72 
  40295a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40295e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402962:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402969:	6c 65 20 
  40296c:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402973:	63 74 65 
  402976:	48 89 45 30          	mov    %rax,0x30(%rbp)
  40297a:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  40297e:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402984:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402988:	89 df                	mov    %ebx,%edi
  40298a:	e8 91 e3 ff ff       	callq  400d20 <close@plt>
  40298f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402994:	e9 cb fd ff ff       	jmpq   402764 <submitr+0x2e7>
  402999:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029a0:	3a 20 43 
  4029a3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4029aa:	20 75 6e 
  4029ad:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029b1:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4029b5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029bc:	74 6f 20 
  4029bf:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  4029c6:	20 74 6f 
  4029c9:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029cd:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029d1:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  4029d8:	72 65 73 
  4029db:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  4029e2:	65 72 76 
  4029e5:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4029e9:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4029ed:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  4029f3:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  4029f7:	89 df                	mov    %ebx,%edi
  4029f9:	e8 22 e3 ff ff       	callq  400d20 <close@plt>
  4029fe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a03:	e9 5c fd ff ff       	jmpq   402764 <submitr+0x2e7>
  402a08:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a0f:	3a 20 43 
  402a12:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402a19:	20 75 6e 
  402a1c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a20:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a24:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a2b:	74 6f 20 
  402a2e:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402a35:	66 69 72 
  402a38:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a3c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a40:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402a47:	61 64 65 
  402a4a:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402a51:	6d 20 72 
  402a54:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a58:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a5c:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402a63:	20 73 65 
  402a66:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402a6a:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  402a71:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  402a75:	89 df                	mov    %ebx,%edi
  402a77:	e8 a4 e2 ff ff       	callq  400d20 <close@plt>
  402a7c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a81:	e9 de fc ff ff       	jmpq   402764 <submitr+0x2e7>
  402a86:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402a8d:	00 
  402a8e:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402a93:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a98:	e8 29 f8 ff ff       	callq  4022c6 <rio_readlineb>
  402a9d:	48 85 c0             	test   %rax,%rax
  402aa0:	0f 8e 96 00 00 00    	jle    402b3c <submitr+0x6bf>
  402aa6:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402aab:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402ab2:	0f 85 08 01 00 00    	jne    402bc0 <submitr+0x743>
  402ab8:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402abf:	00 
  402ac0:	48 89 ef             	mov    %rbp,%rdi
  402ac3:	e8 e8 e1 ff ff       	callq  400cb0 <strcpy@plt>
  402ac8:	89 df                	mov    %ebx,%edi
  402aca:	e8 51 e2 ff ff       	callq  400d20 <close@plt>
  402acf:	b9 04 00 00 00       	mov    $0x4,%ecx
  402ad4:	48 8d 3d 75 0c 00 00 	lea    0xc75(%rip),%rdi        # 403750 <trans_char+0xc0>
  402adb:	48 89 ee             	mov    %rbp,%rsi
  402ade:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402ae0:	0f 97 c0             	seta   %al
  402ae3:	1c 00                	sbb    $0x0,%al
  402ae5:	0f be c0             	movsbl %al,%eax
  402ae8:	85 c0                	test   %eax,%eax
  402aea:	0f 84 74 fc ff ff    	je     402764 <submitr+0x2e7>
  402af0:	b9 05 00 00 00       	mov    $0x5,%ecx
  402af5:	48 8d 3d 58 0c 00 00 	lea    0xc58(%rip),%rdi        # 403754 <trans_char+0xc4>
  402afc:	48 89 ee             	mov    %rbp,%rsi
  402aff:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402b01:	0f 97 c0             	seta   %al
  402b04:	1c 00                	sbb    $0x0,%al
  402b06:	0f be c0             	movsbl %al,%eax
  402b09:	85 c0                	test   %eax,%eax
  402b0b:	0f 84 53 fc ff ff    	je     402764 <submitr+0x2e7>
  402b11:	b9 03 00 00 00       	mov    $0x3,%ecx
  402b16:	48 8d 3d 3c 0c 00 00 	lea    0xc3c(%rip),%rdi        # 403759 <trans_char+0xc9>
  402b1d:	48 89 ee             	mov    %rbp,%rsi
  402b20:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402b22:	0f 97 c0             	seta   %al
  402b25:	1c 00                	sbb    $0x0,%al
  402b27:	0f be c0             	movsbl %al,%eax
  402b2a:	85 c0                	test   %eax,%eax
  402b2c:	0f 84 32 fc ff ff    	je     402764 <submitr+0x2e7>
  402b32:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b37:	e9 28 fc ff ff       	jmpq   402764 <submitr+0x2e7>
  402b3c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b43:	3a 20 43 
  402b46:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402b4d:	20 75 6e 
  402b50:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b54:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b58:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b5f:	74 6f 20 
  402b62:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402b69:	73 74 61 
  402b6c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b70:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b74:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402b7b:	65 73 73 
  402b7e:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402b85:	72 6f 6d 
  402b88:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b8c:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b90:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402b97:	6c 74 20 
  402b9a:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402b9e:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  402ba5:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  402bab:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  402baf:	89 df                	mov    %ebx,%edi
  402bb1:	e8 6a e1 ff ff       	callq  400d20 <close@plt>
  402bb6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bbb:	e9 a4 fb ff ff       	jmpq   402764 <submitr+0x2e7>
  402bc0:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  402bc7:	00 
  402bc8:	48 8d 0d 39 0b 00 00 	lea    0xb39(%rip),%rcx        # 403708 <trans_char+0x78>
  402bcf:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402bd6:	be 01 00 00 00       	mov    $0x1,%esi
  402bdb:	48 89 ef             	mov    %rbp,%rdi
  402bde:	b8 00 00 00 00       	mov    $0x0,%eax
  402be3:	e8 78 e2 ff ff       	callq  400e60 <__sprintf_chk@plt>
  402be8:	89 df                	mov    %ebx,%edi
  402bea:	e8 31 e1 ff ff       	callq  400d20 <close@plt>
  402bef:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bf4:	e9 6b fb ff ff       	jmpq   402764 <submitr+0x2e7>
  402bf9:	e8 e2 e0 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402bfe <init_timeout>:
  402bfe:	85 ff                	test   %edi,%edi
  402c00:	74 28                	je     402c2a <init_timeout+0x2c>
  402c02:	53                   	push   %rbx
  402c03:	89 fb                	mov    %edi,%ebx
  402c05:	85 ff                	test   %edi,%edi
  402c07:	78 1a                	js     402c23 <init_timeout+0x25>
  402c09:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 4021ad <sigalrm_handler>
  402c10:	bf 0e 00 00 00       	mov    $0xe,%edi
  402c15:	e8 26 e1 ff ff       	callq  400d40 <signal@plt>
  402c1a:	89 df                	mov    %ebx,%edi
  402c1c:	e8 ef e0 ff ff       	callq  400d10 <alarm@plt>
  402c21:	5b                   	pop    %rbx
  402c22:	c3                   	retq   
  402c23:	bb 00 00 00 00       	mov    $0x0,%ebx
  402c28:	eb df                	jmp    402c09 <init_timeout+0xb>
  402c2a:	f3 c3                	repz retq 

0000000000402c2c <init_driver>:
  402c2c:	41 54                	push   %r12
  402c2e:	55                   	push   %rbp
  402c2f:	53                   	push   %rbx
  402c30:	48 83 ec 20          	sub    $0x20,%rsp
  402c34:	49 89 fc             	mov    %rdi,%r12
  402c37:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c3e:	00 00 
  402c40:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402c45:	31 c0                	xor    %eax,%eax
  402c47:	be 01 00 00 00       	mov    $0x1,%esi
  402c4c:	bf 0d 00 00 00       	mov    $0xd,%edi
  402c51:	e8 ea e0 ff ff       	callq  400d40 <signal@plt>
  402c56:	be 01 00 00 00       	mov    $0x1,%esi
  402c5b:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402c60:	e8 db e0 ff ff       	callq  400d40 <signal@plt>
  402c65:	be 01 00 00 00       	mov    $0x1,%esi
  402c6a:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402c6f:	e8 cc e0 ff ff       	callq  400d40 <signal@plt>
  402c74:	ba 00 00 00 00       	mov    $0x0,%edx
  402c79:	be 01 00 00 00       	mov    $0x1,%esi
  402c7e:	bf 02 00 00 00       	mov    $0x2,%edi
  402c83:	e8 e8 e1 ff ff       	callq  400e70 <socket@plt>
  402c88:	85 c0                	test   %eax,%eax
  402c8a:	0f 88 a3 00 00 00    	js     402d33 <init_driver+0x107>
  402c90:	89 c3                	mov    %eax,%ebx
  402c92:	48 8d 3d c3 0a 00 00 	lea    0xac3(%rip),%rdi        # 40375c <trans_char+0xcc>
  402c99:	e8 b2 e0 ff ff       	callq  400d50 <gethostbyname@plt>
  402c9e:	48 85 c0             	test   %rax,%rax
  402ca1:	0f 84 df 00 00 00    	je     402d86 <init_driver+0x15a>
  402ca7:	48 89 e5             	mov    %rsp,%rbp
  402caa:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402cb1:	00 00 
  402cb3:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402cba:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402cc0:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402cc6:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402cca:	48 8b 40 18          	mov    0x18(%rax),%rax
  402cce:	48 8b 30             	mov    (%rax),%rsi
  402cd1:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402cd5:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402cda:	e8 81 e0 ff ff       	callq  400d60 <__memmove_chk@plt>
  402cdf:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402ce6:	ba 10 00 00 00       	mov    $0x10,%edx
  402ceb:	48 89 ee             	mov    %rbp,%rsi
  402cee:	89 df                	mov    %ebx,%edi
  402cf0:	e8 4b e1 ff ff       	callq  400e40 <connect@plt>
  402cf5:	85 c0                	test   %eax,%eax
  402cf7:	0f 88 fb 00 00 00    	js     402df8 <init_driver+0x1cc>
  402cfd:	89 df                	mov    %ebx,%edi
  402cff:	e8 1c e0 ff ff       	callq  400d20 <close@plt>
  402d04:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402d0b:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402d11:	b8 00 00 00 00       	mov    $0x0,%eax
  402d16:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402d1b:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402d22:	00 00 
  402d24:	0f 85 28 01 00 00    	jne    402e52 <init_driver+0x226>
  402d2a:	48 83 c4 20          	add    $0x20,%rsp
  402d2e:	5b                   	pop    %rbx
  402d2f:	5d                   	pop    %rbp
  402d30:	41 5c                	pop    %r12
  402d32:	c3                   	retq   
  402d33:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d3a:	3a 20 43 
  402d3d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402d44:	20 75 6e 
  402d47:	49 89 04 24          	mov    %rax,(%r12)
  402d4b:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402d50:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d57:	74 6f 20 
  402d5a:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402d61:	65 20 73 
  402d64:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402d69:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402d6e:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402d75:	6b 65 
  402d77:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402d7e:	00 
  402d7f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d84:	eb 90                	jmp    402d16 <init_driver+0xea>
  402d86:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402d8d:	3a 20 44 
  402d90:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402d97:	20 75 6e 
  402d9a:	49 89 04 24          	mov    %rax,(%r12)
  402d9e:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402da3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402daa:	74 6f 20 
  402dad:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402db4:	76 65 20 
  402db7:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402dbc:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402dc1:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402dc8:	72 20 61 
  402dcb:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402dd0:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  402dd7:	72 65 
  402dd9:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402de0:	73 
  402de1:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  402de7:	89 df                	mov    %ebx,%edi
  402de9:	e8 32 df ff ff       	callq  400d20 <close@plt>
  402dee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402df3:	e9 1e ff ff ff       	jmpq   402d16 <init_driver+0xea>
  402df8:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402dff:	3a 20 55 
  402e02:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402e09:	20 74 6f 
  402e0c:	49 89 04 24          	mov    %rax,(%r12)
  402e10:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402e15:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402e1c:	65 63 74 
  402e1f:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  402e26:	65 72 76 
  402e29:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402e2e:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402e33:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  402e3a:	72 
  402e3b:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  402e41:	89 df                	mov    %ebx,%edi
  402e43:	e8 d8 de ff ff       	callq  400d20 <close@plt>
  402e48:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e4d:	e9 c4 fe ff ff       	jmpq   402d16 <init_driver+0xea>
  402e52:	e8 89 de ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402e57 <driver_post>:
  402e57:	53                   	push   %rbx
  402e58:	4c 89 cb             	mov    %r9,%rbx
  402e5b:	45 85 c0             	test   %r8d,%r8d
  402e5e:	75 18                	jne    402e78 <driver_post+0x21>
  402e60:	48 85 ff             	test   %rdi,%rdi
  402e63:	74 05                	je     402e6a <driver_post+0x13>
  402e65:	80 3f 00             	cmpb   $0x0,(%rdi)
  402e68:	75 37                	jne    402ea1 <driver_post+0x4a>
  402e6a:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402e6f:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402e73:	44 89 c0             	mov    %r8d,%eax
  402e76:	5b                   	pop    %rbx
  402e77:	c3                   	retq   
  402e78:	48 89 ca             	mov    %rcx,%rdx
  402e7b:	48 8d 35 f2 08 00 00 	lea    0x8f2(%rip),%rsi        # 403774 <trans_char+0xe4>
  402e82:	bf 01 00 00 00       	mov    $0x1,%edi
  402e87:	b8 00 00 00 00       	mov    $0x0,%eax
  402e8c:	e8 4f df ff ff       	callq  400de0 <__printf_chk@plt>
  402e91:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402e96:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402e9a:	b8 00 00 00 00       	mov    $0x0,%eax
  402e9f:	eb d5                	jmp    402e76 <driver_post+0x1f>
  402ea1:	48 83 ec 08          	sub    $0x8,%rsp
  402ea5:	41 51                	push   %r9
  402ea7:	49 89 c9             	mov    %rcx,%r9
  402eaa:	49 89 d0             	mov    %rdx,%r8
  402ead:	48 89 f9             	mov    %rdi,%rcx
  402eb0:	48 89 f2             	mov    %rsi,%rdx
  402eb3:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402eb8:	48 8d 3d 9d 08 00 00 	lea    0x89d(%rip),%rdi        # 40375c <trans_char+0xcc>
  402ebf:	e8 b9 f5 ff ff       	callq  40247d <submitr>
  402ec4:	48 83 c4 10          	add    $0x10,%rsp
  402ec8:	eb ac                	jmp    402e76 <driver_post+0x1f>

0000000000402eca <check>:
  402eca:	89 f8                	mov    %edi,%eax
  402ecc:	c1 e8 1c             	shr    $0x1c,%eax
  402ecf:	85 c0                	test   %eax,%eax
  402ed1:	74 1d                	je     402ef0 <check+0x26>
  402ed3:	b9 00 00 00 00       	mov    $0x0,%ecx
  402ed8:	83 f9 1f             	cmp    $0x1f,%ecx
  402edb:	7f 0d                	jg     402eea <check+0x20>
  402edd:	89 f8                	mov    %edi,%eax
  402edf:	d3 e8                	shr    %cl,%eax
  402ee1:	3c 0a                	cmp    $0xa,%al
  402ee3:	74 11                	je     402ef6 <check+0x2c>
  402ee5:	83 c1 08             	add    $0x8,%ecx
  402ee8:	eb ee                	jmp    402ed8 <check+0xe>
  402eea:	b8 01 00 00 00       	mov    $0x1,%eax
  402eef:	c3                   	retq   
  402ef0:	b8 00 00 00 00       	mov    $0x0,%eax
  402ef5:	c3                   	retq   
  402ef6:	b8 00 00 00 00       	mov    $0x0,%eax
  402efb:	c3                   	retq   

0000000000402efc <gencookie>:
  402efc:	53                   	push   %rbx
  402efd:	83 c7 01             	add    $0x1,%edi
  402f00:	e8 8b dd ff ff       	callq  400c90 <srandom@plt>
  402f05:	e8 96 de ff ff       	callq  400da0 <random@plt>
  402f0a:	89 c3                	mov    %eax,%ebx
  402f0c:	89 c7                	mov    %eax,%edi
  402f0e:	e8 b7 ff ff ff       	callq  402eca <check>
  402f13:	85 c0                	test   %eax,%eax
  402f15:	74 ee                	je     402f05 <gencookie+0x9>
  402f17:	89 d8                	mov    %ebx,%eax
  402f19:	5b                   	pop    %rbx
  402f1a:	c3                   	retq   
  402f1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402f20 <__libc_csu_init>:
  402f20:	41 57                	push   %r15
  402f22:	41 56                	push   %r14
  402f24:	49 89 d7             	mov    %rdx,%r15
  402f27:	41 55                	push   %r13
  402f29:	41 54                	push   %r12
  402f2b:	4c 8d 25 de 1e 20 00 	lea    0x201ede(%rip),%r12        # 604e10 <__frame_dummy_init_array_entry>
  402f32:	55                   	push   %rbp
  402f33:	48 8d 2d de 1e 20 00 	lea    0x201ede(%rip),%rbp        # 604e18 <__init_array_end>
  402f3a:	53                   	push   %rbx
  402f3b:	41 89 fd             	mov    %edi,%r13d
  402f3e:	49 89 f6             	mov    %rsi,%r14
  402f41:	4c 29 e5             	sub    %r12,%rbp
  402f44:	48 83 ec 08          	sub    $0x8,%rsp
  402f48:	48 c1 fd 03          	sar    $0x3,%rbp
  402f4c:	e8 f7 dc ff ff       	callq  400c48 <_init>
  402f51:	48 85 ed             	test   %rbp,%rbp
  402f54:	74 20                	je     402f76 <__libc_csu_init+0x56>
  402f56:	31 db                	xor    %ebx,%ebx
  402f58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402f5f:	00 
  402f60:	4c 89 fa             	mov    %r15,%rdx
  402f63:	4c 89 f6             	mov    %r14,%rsi
  402f66:	44 89 ef             	mov    %r13d,%edi
  402f69:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402f6d:	48 83 c3 01          	add    $0x1,%rbx
  402f71:	48 39 dd             	cmp    %rbx,%rbp
  402f74:	75 ea                	jne    402f60 <__libc_csu_init+0x40>
  402f76:	48 83 c4 08          	add    $0x8,%rsp
  402f7a:	5b                   	pop    %rbx
  402f7b:	5d                   	pop    %rbp
  402f7c:	41 5c                	pop    %r12
  402f7e:	41 5d                	pop    %r13
  402f80:	41 5e                	pop    %r14
  402f82:	41 5f                	pop    %r15
  402f84:	c3                   	retq   
  402f85:	90                   	nop
  402f86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402f8d:	00 00 00 

0000000000402f90 <__libc_csu_fini>:
  402f90:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402f94 <_fini>:
  402f94:	48 83 ec 08          	sub    $0x8,%rsp
  402f98:	48 83 c4 08          	add    $0x8,%rsp
  402f9c:	c3                   	retq   
