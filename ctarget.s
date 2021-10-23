
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	48 83 ec 08          	sub    $0x8,%rsp
  400c4c:	48 8b 05 a5 33 20 00 	mov    0x2033a5(%rip),%rax        # 603ff8 <__gmon_start__>
  400c53:	48 85 c0             	test   %rax,%rax
  400c56:	74 02                	je     400c5a <_init+0x12>
  400c58:	ff d0                	callq  *%rax
  400c5a:	48 83 c4 08          	add    $0x8,%rsp
  400c5e:	c3                   	retq   

Disassembly of section .plt:

0000000000400c60 <.plt>:
  400c60:	ff 35 a2 33 20 00    	pushq  0x2033a2(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c66:	ff 25 a4 33 20 00    	jmpq   *0x2033a4(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c70 <strcasecmp@plt>:
  400c70:	ff 25 a2 33 20 00    	jmpq   *0x2033a2(%rip)        # 604018 <strcasecmp@GLIBC_2.2.5>
  400c76:	68 00 00 00 00       	pushq  $0x0
  400c7b:	e9 e0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c80 <__errno_location@plt>:
  400c80:	ff 25 9a 33 20 00    	jmpq   *0x20339a(%rip)        # 604020 <__errno_location@GLIBC_2.2.5>
  400c86:	68 01 00 00 00       	pushq  $0x1
  400c8b:	e9 d0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c90 <srandom@plt>:
  400c90:	ff 25 92 33 20 00    	jmpq   *0x203392(%rip)        # 604028 <srandom@GLIBC_2.2.5>
  400c96:	68 02 00 00 00       	pushq  $0x2
  400c9b:	e9 c0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ca0 <strncmp@plt>:
  400ca0:	ff 25 8a 33 20 00    	jmpq   *0x20338a(%rip)        # 604030 <strncmp@GLIBC_2.2.5>
  400ca6:	68 03 00 00 00       	pushq  $0x3
  400cab:	e9 b0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cb0 <strcpy@plt>:
  400cb0:	ff 25 82 33 20 00    	jmpq   *0x203382(%rip)        # 604038 <strcpy@GLIBC_2.2.5>
  400cb6:	68 04 00 00 00       	pushq  $0x4
  400cbb:	e9 a0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cc0 <puts@plt>:
  400cc0:	ff 25 7a 33 20 00    	jmpq   *0x20337a(%rip)        # 604040 <puts@GLIBC_2.2.5>
  400cc6:	68 05 00 00 00       	pushq  $0x5
  400ccb:	e9 90 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cd0 <write@plt>:
  400cd0:	ff 25 72 33 20 00    	jmpq   *0x203372(%rip)        # 604048 <write@GLIBC_2.2.5>
  400cd6:	68 06 00 00 00       	pushq  $0x6
  400cdb:	e9 80 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ce0 <__stack_chk_fail@plt>:
  400ce0:	ff 25 6a 33 20 00    	jmpq   *0x20336a(%rip)        # 604050 <__stack_chk_fail@GLIBC_2.4>
  400ce6:	68 07 00 00 00       	pushq  $0x7
  400ceb:	e9 70 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cf0 <mmap@plt>:
  400cf0:	ff 25 62 33 20 00    	jmpq   *0x203362(%rip)        # 604058 <mmap@GLIBC_2.2.5>
  400cf6:	68 08 00 00 00       	pushq  $0x8
  400cfb:	e9 60 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d00 <memset@plt>:
  400d00:	ff 25 5a 33 20 00    	jmpq   *0x20335a(%rip)        # 604060 <memset@GLIBC_2.2.5>
  400d06:	68 09 00 00 00       	pushq  $0x9
  400d0b:	e9 50 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d10 <alarm@plt>:
  400d10:	ff 25 52 33 20 00    	jmpq   *0x203352(%rip)        # 604068 <alarm@GLIBC_2.2.5>
  400d16:	68 0a 00 00 00       	pushq  $0xa
  400d1b:	e9 40 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d20 <close@plt>:
  400d20:	ff 25 4a 33 20 00    	jmpq   *0x20334a(%rip)        # 604070 <close@GLIBC_2.2.5>
  400d26:	68 0b 00 00 00       	pushq  $0xb
  400d2b:	e9 30 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d30 <read@plt>:
  400d30:	ff 25 42 33 20 00    	jmpq   *0x203342(%rip)        # 604078 <read@GLIBC_2.2.5>
  400d36:	68 0c 00 00 00       	pushq  $0xc
  400d3b:	e9 20 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d40 <signal@plt>:
  400d40:	ff 25 3a 33 20 00    	jmpq   *0x20333a(%rip)        # 604080 <signal@GLIBC_2.2.5>
  400d46:	68 0d 00 00 00       	pushq  $0xd
  400d4b:	e9 10 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d50 <gethostbyname@plt>:
  400d50:	ff 25 32 33 20 00    	jmpq   *0x203332(%rip)        # 604088 <gethostbyname@GLIBC_2.2.5>
  400d56:	68 0e 00 00 00       	pushq  $0xe
  400d5b:	e9 00 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d60 <__memmove_chk@plt>:
  400d60:	ff 25 2a 33 20 00    	jmpq   *0x20332a(%rip)        # 604090 <__memmove_chk@GLIBC_2.3.4>
  400d66:	68 0f 00 00 00       	pushq  $0xf
  400d6b:	e9 f0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d70 <strtol@plt>:
  400d70:	ff 25 22 33 20 00    	jmpq   *0x203322(%rip)        # 604098 <strtol@GLIBC_2.2.5>
  400d76:	68 10 00 00 00       	pushq  $0x10
  400d7b:	e9 e0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d80 <memcpy@plt>:
  400d80:	ff 25 1a 33 20 00    	jmpq   *0x20331a(%rip)        # 6040a0 <memcpy@GLIBC_2.14>
  400d86:	68 11 00 00 00       	pushq  $0x11
  400d8b:	e9 d0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d90 <time@plt>:
  400d90:	ff 25 12 33 20 00    	jmpq   *0x203312(%rip)        # 6040a8 <time@GLIBC_2.2.5>
  400d96:	68 12 00 00 00       	pushq  $0x12
  400d9b:	e9 c0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400da0 <random@plt>:
  400da0:	ff 25 0a 33 20 00    	jmpq   *0x20330a(%rip)        # 6040b0 <random@GLIBC_2.2.5>
  400da6:	68 13 00 00 00       	pushq  $0x13
  400dab:	e9 b0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400db0 <_IO_getc@plt>:
  400db0:	ff 25 02 33 20 00    	jmpq   *0x203302(%rip)        # 6040b8 <_IO_getc@GLIBC_2.2.5>
  400db6:	68 14 00 00 00       	pushq  $0x14
  400dbb:	e9 a0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dc0 <__isoc99_sscanf@plt>:
  400dc0:	ff 25 fa 32 20 00    	jmpq   *0x2032fa(%rip)        # 6040c0 <__isoc99_sscanf@GLIBC_2.7>
  400dc6:	68 15 00 00 00       	pushq  $0x15
  400dcb:	e9 90 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dd0 <munmap@plt>:
  400dd0:	ff 25 f2 32 20 00    	jmpq   *0x2032f2(%rip)        # 6040c8 <munmap@GLIBC_2.2.5>
  400dd6:	68 16 00 00 00       	pushq  $0x16
  400ddb:	e9 80 fe ff ff       	jmpq   400c60 <.plt>

0000000000400de0 <__printf_chk@plt>:
  400de0:	ff 25 ea 32 20 00    	jmpq   *0x2032ea(%rip)        # 6040d0 <__printf_chk@GLIBC_2.3.4>
  400de6:	68 17 00 00 00       	pushq  $0x17
  400deb:	e9 70 fe ff ff       	jmpq   400c60 <.plt>

0000000000400df0 <fopen@plt>:
  400df0:	ff 25 e2 32 20 00    	jmpq   *0x2032e2(%rip)        # 6040d8 <fopen@GLIBC_2.2.5>
  400df6:	68 18 00 00 00       	pushq  $0x18
  400dfb:	e9 60 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e00 <getopt@plt>:
  400e00:	ff 25 da 32 20 00    	jmpq   *0x2032da(%rip)        # 6040e0 <getopt@GLIBC_2.2.5>
  400e06:	68 19 00 00 00       	pushq  $0x19
  400e0b:	e9 50 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e10 <strtoul@plt>:
  400e10:	ff 25 d2 32 20 00    	jmpq   *0x2032d2(%rip)        # 6040e8 <strtoul@GLIBC_2.2.5>
  400e16:	68 1a 00 00 00       	pushq  $0x1a
  400e1b:	e9 40 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e20 <gethostname@plt>:
  400e20:	ff 25 ca 32 20 00    	jmpq   *0x2032ca(%rip)        # 6040f0 <gethostname@GLIBC_2.2.5>
  400e26:	68 1b 00 00 00       	pushq  $0x1b
  400e2b:	e9 30 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e30 <exit@plt>:
  400e30:	ff 25 c2 32 20 00    	jmpq   *0x2032c2(%rip)        # 6040f8 <exit@GLIBC_2.2.5>
  400e36:	68 1c 00 00 00       	pushq  $0x1c
  400e3b:	e9 20 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e40 <connect@plt>:
  400e40:	ff 25 ba 32 20 00    	jmpq   *0x2032ba(%rip)        # 604100 <connect@GLIBC_2.2.5>
  400e46:	68 1d 00 00 00       	pushq  $0x1d
  400e4b:	e9 10 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e50 <__fprintf_chk@plt>:
  400e50:	ff 25 b2 32 20 00    	jmpq   *0x2032b2(%rip)        # 604108 <__fprintf_chk@GLIBC_2.3.4>
  400e56:	68 1e 00 00 00       	pushq  $0x1e
  400e5b:	e9 00 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e60 <__sprintf_chk@plt>:
  400e60:	ff 25 aa 32 20 00    	jmpq   *0x2032aa(%rip)        # 604110 <__sprintf_chk@GLIBC_2.3.4>
  400e66:	68 1f 00 00 00       	pushq  $0x1f
  400e6b:	e9 f0 fd ff ff       	jmpq   400c60 <.plt>

0000000000400e70 <socket@plt>:
  400e70:	ff 25 a2 32 20 00    	jmpq   *0x2032a2(%rip)        # 604118 <socket@GLIBC_2.2.5>
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
  400e8f:	49 c7 c0 70 2e 40 00 	mov    $0x402e70,%r8
  400e96:	48 c7 c1 00 2e 40 00 	mov    $0x402e00,%rcx
  400e9d:	48 c7 c7 8e 11 40 00 	mov    $0x40118e,%rdi
  400ea4:	ff 15 46 31 20 00    	callq  *0x203146(%rip)        # 603ff0 <__libc_start_main@GLIBC_2.2.5>
  400eaa:	f4                   	hlt    
  400eab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400eb0 <_dl_relocate_static_pie>:
  400eb0:	f3 c3                	repz retq 
  400eb2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400eb9:	00 00 00 
  400ebc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ec0 <deregister_tm_clones>:
  400ec0:	55                   	push   %rbp
  400ec1:	b8 90 44 60 00       	mov    $0x604490,%eax
  400ec6:	48 3d 90 44 60 00    	cmp    $0x604490,%rax
  400ecc:	48 89 e5             	mov    %rsp,%rbp
  400ecf:	74 17                	je     400ee8 <deregister_tm_clones+0x28>
  400ed1:	b8 00 00 00 00       	mov    $0x0,%eax
  400ed6:	48 85 c0             	test   %rax,%rax
  400ed9:	74 0d                	je     400ee8 <deregister_tm_clones+0x28>
  400edb:	5d                   	pop    %rbp
  400edc:	bf 90 44 60 00       	mov    $0x604490,%edi
  400ee1:	ff e0                	jmpq   *%rax
  400ee3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400ee8:	5d                   	pop    %rbp
  400ee9:	c3                   	retq   
  400eea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ef0 <register_tm_clones>:
  400ef0:	be 90 44 60 00       	mov    $0x604490,%esi
  400ef5:	55                   	push   %rbp
  400ef6:	48 81 ee 90 44 60 00 	sub    $0x604490,%rsi
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
  400f1e:	bf 90 44 60 00       	mov    $0x604490,%edi
  400f23:	ff e0                	jmpq   *%rax
  400f25:	0f 1f 00             	nopl   (%rax)
  400f28:	5d                   	pop    %rbp
  400f29:	c3                   	retq   
  400f2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f30 <__do_global_dtors_aux>:
  400f30:	80 3d 91 35 20 00 00 	cmpb   $0x0,0x203591(%rip)        # 6044c8 <completed.7698>
  400f37:	75 17                	jne    400f50 <__do_global_dtors_aux+0x20>
  400f39:	55                   	push   %rbp
  400f3a:	48 89 e5             	mov    %rsp,%rbp
  400f3d:	e8 7e ff ff ff       	callq  400ec0 <deregister_tm_clones>
  400f42:	c6 05 7f 35 20 00 01 	movb   $0x1,0x20357f(%rip)        # 6044c8 <completed.7698>
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
  400f6e:	83 3d 93 35 20 00 00 	cmpl   $0x0,0x203593(%rip)        # 604508 <is_checker>
  400f75:	74 50                	je     400fc7 <usage+0x60>
  400f77:	48 8d 35 0a 1f 00 00 	lea    0x1f0a(%rip),%rsi        # 402e88 <_IO_stdin_used+0x8>
  400f7e:	bf 01 00 00 00       	mov    $0x1,%edi
  400f83:	b8 00 00 00 00       	mov    $0x0,%eax
  400f88:	e8 53 fe ff ff       	callq  400de0 <__printf_chk@plt>
  400f8d:	48 8d 3d 2c 1f 00 00 	lea    0x1f2c(%rip),%rdi        # 402ec0 <_IO_stdin_used+0x40>
  400f94:	e8 27 fd ff ff       	callq  400cc0 <puts@plt>
  400f99:	48 8d 3d 98 20 00 00 	lea    0x2098(%rip),%rdi        # 403038 <_IO_stdin_used+0x1b8>
  400fa0:	e8 1b fd ff ff       	callq  400cc0 <puts@plt>
  400fa5:	48 8d 3d 3c 1f 00 00 	lea    0x1f3c(%rip),%rdi        # 402ee8 <_IO_stdin_used+0x68>
  400fac:	e8 0f fd ff ff       	callq  400cc0 <puts@plt>
  400fb1:	48 8d 3d 9a 20 00 00 	lea    0x209a(%rip),%rdi        # 403052 <_IO_stdin_used+0x1d2>
  400fb8:	e8 03 fd ff ff       	callq  400cc0 <puts@plt>
  400fbd:	bf 00 00 00 00       	mov    $0x0,%edi
  400fc2:	e8 69 fe ff ff       	callq  400e30 <exit@plt>
  400fc7:	48 8d 35 a0 20 00 00 	lea    0x20a0(%rip),%rsi        # 40306e <_IO_stdin_used+0x1ee>
  400fce:	bf 01 00 00 00       	mov    $0x1,%edi
  400fd3:	b8 00 00 00 00       	mov    $0x0,%eax
  400fd8:	e8 03 fe ff ff       	callq  400de0 <__printf_chk@plt>
  400fdd:	48 8d 3d 2c 1f 00 00 	lea    0x1f2c(%rip),%rdi        # 402f10 <_IO_stdin_used+0x90>
  400fe4:	e8 d7 fc ff ff       	callq  400cc0 <puts@plt>
  400fe9:	48 8d 3d 48 1f 00 00 	lea    0x1f48(%rip),%rdi        # 402f38 <_IO_stdin_used+0xb8>
  400ff0:	e8 cb fc ff ff       	callq  400cc0 <puts@plt>
  400ff5:	48 8d 3d 90 20 00 00 	lea    0x2090(%rip),%rdi        # 40308c <_IO_stdin_used+0x20c>
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
  401021:	89 3d d1 34 20 00    	mov    %edi,0x2034d1(%rip)        # 6044f8 <check_level>
  401027:	8b 3d 03 31 20 00    	mov    0x203103(%rip),%edi        # 604130 <target_id>
  40102d:	e8 a1 1d 00 00       	callq  402dd3 <gencookie>
  401032:	89 05 cc 34 20 00    	mov    %eax,0x2034cc(%rip)        # 604504 <cookie>
  401038:	89 c7                	mov    %eax,%edi
  40103a:	e8 94 1d 00 00       	callq  402dd3 <gencookie>
  40103f:	89 05 bb 34 20 00    	mov    %eax,0x2034bb(%rip)        # 604500 <authkey>
  401045:	8b 05 e5 30 20 00    	mov    0x2030e5(%rip),%eax        # 604130 <target_id>
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
  401078:	48 89 05 01 34 20 00 	mov    %rax,0x203401(%rip)        # 604480 <buf_offset>
  40107f:	c6 05 a2 40 20 00 63 	movb   $0x63,0x2040a2(%rip)        # 605128 <target_prefix>
  401086:	83 3d fb 33 20 00 00 	cmpl   $0x0,0x2033fb(%rip)        # 604488 <notify>
  40108d:	74 09                	je     401098 <initialize_target+0x95>
  40108f:	83 3d 72 34 20 00 00 	cmpl   $0x0,0x203472(%rip)        # 604508 <is_checker>
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
  4010e9:	48 8d 15 70 30 20 00 	lea    0x203070(%rip),%rdx        # 604160 <host_table>
  4010f0:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  4010f4:	48 85 ff             	test   %rdi,%rdi
  4010f7:	74 2c                	je     401125 <initialize_target+0x122>
  4010f9:	48 89 e6             	mov    %rsp,%rsi
  4010fc:	e8 6f fb ff ff       	callq  400c70 <strcasecmp@plt>
  401101:	85 c0                	test   %eax,%eax
  401103:	74 1b                	je     401120 <initialize_target+0x11d>
  401105:	83 c3 01             	add    $0x1,%ebx
  401108:	eb dc                	jmp    4010e6 <initialize_target+0xe3>
  40110a:	48 8d 3d 57 1e 00 00 	lea    0x1e57(%rip),%rdi        # 402f68 <_IO_stdin_used+0xe8>
  401111:	e8 aa fb ff ff       	callq  400cc0 <puts@plt>
  401116:	bf 08 00 00 00       	mov    $0x8,%edi
  40111b:	e8 10 fd ff ff       	callq  400e30 <exit@plt>
  401120:	bd 01 00 00 00       	mov    $0x1,%ebp
  401125:	85 ed                	test   %ebp,%ebp
  401127:	74 3d                	je     401166 <initialize_target+0x163>
  401129:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401130:	00 
  401131:	e8 cd 19 00 00       	callq  402b03 <init_driver>
  401136:	85 c0                	test   %eax,%eax
  401138:	0f 89 5a ff ff ff    	jns    401098 <initialize_target+0x95>
  40113e:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401145:	00 
  401146:	48 8d 35 93 1e 00 00 	lea    0x1e93(%rip),%rsi        # 402fe0 <_IO_stdin_used+0x160>
  40114d:	bf 01 00 00 00       	mov    $0x1,%edi
  401152:	b8 00 00 00 00       	mov    $0x0,%eax
  401157:	e8 84 fc ff ff       	callq  400de0 <__printf_chk@plt>
  40115c:	bf 08 00 00 00       	mov    $0x8,%edi
  401161:	e8 ca fc ff ff       	callq  400e30 <exit@plt>
  401166:	48 89 e2             	mov    %rsp,%rdx
  401169:	48 8d 35 30 1e 00 00 	lea    0x1e30(%rip),%rsi        # 402fa0 <_IO_stdin_used+0x120>
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
  40119c:	48 c7 c6 0a 1e 40 00 	mov    $0x401e0a,%rsi
  4011a3:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011a8:	e8 93 fb ff ff       	callq  400d40 <signal@plt>
  4011ad:	48 c7 c6 b6 1d 40 00 	mov    $0x401db6,%rsi
  4011b4:	bf 07 00 00 00       	mov    $0x7,%edi
  4011b9:	e8 82 fb ff ff       	callq  400d40 <signal@plt>
  4011be:	48 c7 c6 5e 1e 40 00 	mov    $0x401e5e,%rsi
  4011c5:	bf 04 00 00 00       	mov    $0x4,%edi
  4011ca:	e8 71 fb ff ff       	callq  400d40 <signal@plt>
  4011cf:	83 3d 32 33 20 00 00 	cmpl   $0x0,0x203332(%rip)        # 604508 <is_checker>
  4011d6:	75 26                	jne    4011fe <main+0x70>
  4011d8:	48 8d 2d c6 1e 00 00 	lea    0x1ec6(%rip),%rbp        # 4030a5 <_IO_stdin_used+0x225>
  4011df:	48 8b 05 ba 32 20 00 	mov    0x2032ba(%rip),%rax        # 6044a0 <stdin@@GLIBC_2.2.5>
  4011e6:	48 89 05 03 33 20 00 	mov    %rax,0x203303(%rip)        # 6044f0 <infile>
  4011ed:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4011f3:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4011f9:	e9 8d 00 00 00       	jmpq   40128b <main+0xfd>
  4011fe:	48 c7 c6 b2 1e 40 00 	mov    $0x401eb2,%rsi
  401205:	bf 0e 00 00 00       	mov    $0xe,%edi
  40120a:	e8 31 fb ff ff       	callq  400d40 <signal@plt>
  40120f:	bf 05 00 00 00       	mov    $0x5,%edi
  401214:	e8 f7 fa ff ff       	callq  400d10 <alarm@plt>
  401219:	48 8d 2d 8a 1e 00 00 	lea    0x1e8a(%rip),%rbp        # 4030aa <_IO_stdin_used+0x22a>
  401220:	eb bd                	jmp    4011df <main+0x51>
  401222:	48 8b 3b             	mov    (%rbx),%rdi
  401225:	e8 3d fd ff ff       	callq  400f67 <usage>
  40122a:	48 8d 35 fc 20 00 00 	lea    0x20fc(%rip),%rsi        # 40332d <_IO_stdin_used+0x4ad>
  401231:	48 8b 3d 70 32 20 00 	mov    0x203270(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  401238:	e8 b3 fb ff ff       	callq  400df0 <fopen@plt>
  40123d:	48 89 05 ac 32 20 00 	mov    %rax,0x2032ac(%rip)        # 6044f0 <infile>
  401244:	48 85 c0             	test   %rax,%rax
  401247:	75 42                	jne    40128b <main+0xfd>
  401249:	48 8b 0d 58 32 20 00 	mov    0x203258(%rip),%rcx        # 6044a8 <optarg@@GLIBC_2.2.5>
  401250:	48 8d 15 5b 1e 00 00 	lea    0x1e5b(%rip),%rdx        # 4030b2 <_IO_stdin_used+0x232>
  401257:	be 01 00 00 00       	mov    $0x1,%esi
  40125c:	48 8b 3d 5d 32 20 00 	mov    0x20325d(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  401263:	e8 e8 fb ff ff       	callq  400e50 <__fprintf_chk@plt>
  401268:	b8 01 00 00 00       	mov    $0x1,%eax
  40126d:	e9 d9 00 00 00       	jmpq   40134b <main+0x1bd>
  401272:	ba 10 00 00 00       	mov    $0x10,%edx
  401277:	be 00 00 00 00       	mov    $0x0,%esi
  40127c:	48 8b 3d 25 32 20 00 	mov    0x203225(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
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
  4012aa:	48 8d 0d 3f 1e 00 00 	lea    0x1e3f(%rip),%rcx        # 4030f0 <_IO_stdin_used+0x270>
  4012b1:	48 63 04 81          	movslq (%rcx,%rax,4),%rax
  4012b5:	48 01 c8             	add    %rcx,%rax
  4012b8:	ff e0                	jmpq   *%rax
  4012ba:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012bf:	be 00 00 00 00       	mov    $0x0,%esi
  4012c4:	48 8b 3d dd 31 20 00 	mov    0x2031dd(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  4012cb:	e8 a0 fa ff ff       	callq  400d70 <strtol@plt>
  4012d0:	41 89 c5             	mov    %eax,%r13d
  4012d3:	eb b6                	jmp    40128b <main+0xfd>
  4012d5:	c7 05 a9 31 20 00 00 	movl   $0x0,0x2031a9(%rip)        # 604488 <notify>
  4012dc:	00 00 00 
  4012df:	eb aa                	jmp    40128b <main+0xfd>
  4012e1:	48 8d 35 e7 1d 00 00 	lea    0x1de7(%rip),%rsi        # 4030cf <_IO_stdin_used+0x24f>
  4012e8:	bf 01 00 00 00       	mov    $0x1,%edi
  4012ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4012f2:	e8 e9 fa ff ff       	callq  400de0 <__printf_chk@plt>
  4012f7:	48 8b 3b             	mov    (%rbx),%rdi
  4012fa:	e8 68 fc ff ff       	callq  400f67 <usage>
  4012ff:	be 00 00 00 00       	mov    $0x0,%esi
  401304:	44 89 ef             	mov    %r13d,%edi
  401307:	e8 f7 fc ff ff       	callq  401003 <initialize_target>
  40130c:	83 3d f5 31 20 00 00 	cmpl   $0x0,0x2031f5(%rip)        # 604508 <is_checker>
  401313:	74 09                	je     40131e <main+0x190>
  401315:	44 39 35 e4 31 20 00 	cmp    %r14d,0x2031e4(%rip)        # 604500 <authkey>
  40131c:	75 36                	jne    401354 <main+0x1c6>
  40131e:	8b 15 e0 31 20 00    	mov    0x2031e0(%rip),%edx        # 604504 <cookie>
  401324:	48 8d 35 b7 1d 00 00 	lea    0x1db7(%rip),%rsi        # 4030e2 <_IO_stdin_used+0x262>
  40132b:	bf 01 00 00 00       	mov    $0x1,%edi
  401330:	b8 00 00 00 00       	mov    $0x0,%eax
  401335:	e8 a6 fa ff ff       	callq  400de0 <__printf_chk@plt>
  40133a:	48 8b 3d 3f 31 20 00 	mov    0x20313f(%rip),%rdi        # 604480 <buf_offset>
  401341:	e8 78 0c 00 00       	callq  401fbe <stable_launch>
  401346:	b8 00 00 00 00       	mov    $0x0,%eax
  40134b:	5b                   	pop    %rbx
  40134c:	5d                   	pop    %rbp
  40134d:	41 5c                	pop    %r12
  40134f:	41 5d                	pop    %r13
  401351:	41 5e                	pop    %r14
  401353:	c3                   	retq   
  401354:	44 89 f2             	mov    %r14d,%edx
  401357:	48 8d 35 aa 1c 00 00 	lea    0x1caa(%rip),%rsi        # 403008 <_IO_stdin_used+0x188>
  40135e:	bf 01 00 00 00       	mov    $0x1,%edi
  401363:	b8 00 00 00 00       	mov    $0x0,%eax
  401368:	e8 73 fa ff ff       	callq  400de0 <__printf_chk@plt>
  40136d:	b8 00 00 00 00       	mov    $0x0,%eax
  401372:	e8 9f 06 00 00       	callq  401a16 <check_fail>
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
  4017ae:	48 83 ec 38          	sub    $0x38,%rsp  # ! buffer_size = 0x38
  4017b2:	48 89 e7             	mov    %rsp,%rdi
  4017b5:	e8 94 02 00 00       	callq  401a4e <Gets>
  4017ba:	b8 01 00 00 00       	mov    $0x1,%eax
  4017bf:	48 83 c4 38          	add    $0x38,%rsp
  4017c3:	c3                   	retq   

00000000004017c4 <touch1>:
  4017c4:	48 83 ec 08          	sub    $0x8,%rsp
  4017c8:	c7 05 2a 2d 20 00 01 	movl   $0x1,0x202d2a(%rip)        # 6044fc <vlevel>
  4017cf:	00 00 00 
  4017d2:	48 8d 3d a8 19 00 00 	lea    0x19a8(%rip),%rdi        # 403181 <_IO_stdin_used+0x301>
  4017d9:	e8 e2 f4 ff ff       	callq  400cc0 <puts@plt>
  4017de:	bf 01 00 00 00       	mov    $0x1,%edi
  4017e3:	e8 d6 04 00 00       	callq  401cbe <validate>
  4017e8:	bf 00 00 00 00       	mov    $0x0,%edi
  4017ed:	e8 3e f6 ff ff       	callq  400e30 <exit@plt>

00000000004017f2 <touch2>:
  4017f2:	48 83 ec 08          	sub    $0x8,%rsp
  4017f6:	89 fa                	mov    %edi,%edx
  4017f8:	c7 05 fa 2c 20 00 02 	movl   $0x2,0x202cfa(%rip)        # 6044fc <vlevel>
  4017ff:	00 00 00 
  401802:	39 3d fc 2c 20 00    	cmp    %edi,0x202cfc(%rip)        # 604504 <cookie>
  401808:	74 2a                	je     401834 <touch2+0x42>
  40180a:	48 8d 35 bf 19 00 00 	lea    0x19bf(%rip),%rsi        # 4031d0 <_IO_stdin_used+0x350>
  401811:	bf 01 00 00 00       	mov    $0x1,%edi
  401816:	b8 00 00 00 00       	mov    $0x0,%eax
  40181b:	e8 c0 f5 ff ff       	callq  400de0 <__printf_chk@plt>
  401820:	bf 02 00 00 00       	mov    $0x2,%edi
  401825:	e8 64 05 00 00       	callq  401d8e <fail>
  40182a:	bf 00 00 00 00       	mov    $0x0,%edi
  40182f:	e8 fc f5 ff ff       	callq  400e30 <exit@plt>
  401834:	48 8d 35 6d 19 00 00 	lea    0x196d(%rip),%rsi        # 4031a8 <_IO_stdin_used+0x328>
  40183b:	bf 01 00 00 00       	mov    $0x1,%edi
  401840:	b8 00 00 00 00       	mov    $0x0,%eax
  401845:	e8 96 f5 ff ff       	callq  400de0 <__printf_chk@plt>
  40184a:	bf 02 00 00 00       	mov    $0x2,%edi
  40184f:	e8 6a 04 00 00       	callq  401cbe <validate>
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
  4018b3:	48 8d 0d e4 18 00 00 	lea    0x18e4(%rip),%rcx        # 40319e <_IO_stdin_used+0x31e>
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
  40190d:	c7 05 e5 2b 20 00 03 	movl   $0x3,0x202be5(%rip)        # 6044fc <vlevel>
  401914:	00 00 00 
  401917:	48 89 fe             	mov    %rdi,%rsi
  40191a:	8b 3d e4 2b 20 00    	mov    0x202be4(%rip),%edi        # 604504 <cookie>
  401920:	e8 31 ff ff ff       	callq  401856 <hexmatch>
  401925:	85 c0                	test   %eax,%eax
  401927:	74 2d                	je     401956 <touch3+0x4d>
  401929:	48 89 da             	mov    %rbx,%rdx
  40192c:	48 8d 35 c5 18 00 00 	lea    0x18c5(%rip),%rsi        # 4031f8 <_IO_stdin_used+0x378>
  401933:	bf 01 00 00 00       	mov    $0x1,%edi
  401938:	b8 00 00 00 00       	mov    $0x0,%eax
  40193d:	e8 9e f4 ff ff       	callq  400de0 <__printf_chk@plt>
  401942:	bf 03 00 00 00       	mov    $0x3,%edi
  401947:	e8 72 03 00 00       	callq  401cbe <validate>
  40194c:	bf 00 00 00 00       	mov    $0x0,%edi
  401951:	e8 da f4 ff ff       	callq  400e30 <exit@plt>
  401956:	48 89 da             	mov    %rbx,%rdx
  401959:	48 8d 35 c0 18 00 00 	lea    0x18c0(%rip),%rsi        # 403220 <_IO_stdin_used+0x3a0>
  401960:	bf 01 00 00 00       	mov    $0x1,%edi
  401965:	b8 00 00 00 00       	mov    $0x0,%eax
  40196a:	e8 71 f4 ff ff       	callq  400de0 <__printf_chk@plt>
  40196f:	bf 03 00 00 00       	mov    $0x3,%edi
  401974:	e8 15 04 00 00       	callq  401d8e <fail>
  401979:	eb d1                	jmp    40194c <touch3+0x43>

000000000040197b <test>:
  40197b:	48 83 ec 08          	sub    $0x8,%rsp
  40197f:	b8 00 00 00 00       	mov    $0x0,%eax
  401984:	e8 25 fe ff ff       	callq  4017ae <getbuf>
  401989:	89 c2                	mov    %eax,%edx
  40198b:	48 8d 35 b6 18 00 00 	lea    0x18b6(%rip),%rsi        # 403248 <_IO_stdin_used+0x3c8>
  401992:	bf 01 00 00 00       	mov    $0x1,%edi
  401997:	b8 00 00 00 00       	mov    $0x0,%eax
  40199c:	e8 3f f4 ff ff       	callq  400de0 <__printf_chk@plt>
  4019a1:	48 83 c4 08          	add    $0x8,%rsp
  4019a5:	c3                   	retq   

00000000004019a6 <save_char>:
  4019a6:	8b 05 78 37 20 00    	mov    0x203778(%rip),%eax        # 605124 <gets_cnt>
  4019ac:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4019b1:	7f 4a                	jg     4019fd <save_char+0x57>
  4019b3:	89 f9                	mov    %edi,%ecx
  4019b5:	c0 e9 04             	shr    $0x4,%cl
  4019b8:	8d 14 40             	lea    (%rax,%rax,2),%edx
  4019bb:	4c 8d 05 ae 1b 00 00 	lea    0x1bae(%rip),%r8        # 403570 <trans_char>
  4019c2:	83 e1 0f             	and    $0xf,%ecx
  4019c5:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  4019ca:	48 8d 0d 4f 2b 20 00 	lea    0x202b4f(%rip),%rcx        # 604520 <gets_buf>
  4019d1:	48 63 f2             	movslq %edx,%rsi
  4019d4:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  4019d8:	8d 72 01             	lea    0x1(%rdx),%esi
  4019db:	83 e7 0f             	and    $0xf,%edi
  4019de:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  4019e3:	48 63 f6             	movslq %esi,%rsi
  4019e6:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  4019ea:	83 c2 02             	add    $0x2,%edx
  4019ed:	48 63 d2             	movslq %edx,%rdx
  4019f0:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  4019f4:	83 c0 01             	add    $0x1,%eax
  4019f7:	89 05 27 37 20 00    	mov    %eax,0x203727(%rip)        # 605124 <gets_cnt>
  4019fd:	f3 c3                	repz retq 

00000000004019ff <save_term>:
  4019ff:	8b 05 1f 37 20 00    	mov    0x20371f(%rip),%eax        # 605124 <gets_cnt>
  401a05:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401a08:	48 98                	cltq   
  401a0a:	48 8d 15 0f 2b 20 00 	lea    0x202b0f(%rip),%rdx        # 604520 <gets_buf>
  401a11:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401a15:	c3                   	retq   

0000000000401a16 <check_fail>:
  401a16:	48 83 ec 08          	sub    $0x8,%rsp
  401a1a:	0f be 15 07 37 20 00 	movsbl 0x203707(%rip),%edx        # 605128 <target_prefix>
  401a21:	4c 8d 05 f8 2a 20 00 	lea    0x202af8(%rip),%r8        # 604520 <gets_buf>
  401a28:	8b 0d ca 2a 20 00    	mov    0x202aca(%rip),%ecx        # 6044f8 <check_level>
  401a2e:	48 8d 35 36 18 00 00 	lea    0x1836(%rip),%rsi        # 40326b <_IO_stdin_used+0x3eb>
  401a35:	bf 01 00 00 00       	mov    $0x1,%edi
  401a3a:	b8 00 00 00 00       	mov    $0x0,%eax
  401a3f:	e8 9c f3 ff ff       	callq  400de0 <__printf_chk@plt>
  401a44:	bf 01 00 00 00       	mov    $0x1,%edi
  401a49:	e8 e2 f3 ff ff       	callq  400e30 <exit@plt>

0000000000401a4e <Gets>:
  401a4e:	41 54                	push   %r12
  401a50:	55                   	push   %rbp
  401a51:	53                   	push   %rbx
  401a52:	49 89 fc             	mov    %rdi,%r12
  401a55:	c7 05 c5 36 20 00 00 	movl   $0x0,0x2036c5(%rip)        # 605124 <gets_cnt>
  401a5c:	00 00 00 
  401a5f:	48 89 fb             	mov    %rdi,%rbx
  401a62:	eb 11                	jmp    401a75 <Gets+0x27>
  401a64:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401a68:	88 03                	mov    %al,(%rbx)
  401a6a:	0f b6 f8             	movzbl %al,%edi
  401a6d:	e8 34 ff ff ff       	callq  4019a6 <save_char>
  401a72:	48 89 eb             	mov    %rbp,%rbx
  401a75:	48 8b 3d 74 2a 20 00 	mov    0x202a74(%rip),%rdi        # 6044f0 <infile>
  401a7c:	e8 2f f3 ff ff       	callq  400db0 <_IO_getc@plt>
  401a81:	83 f8 ff             	cmp    $0xffffffff,%eax
  401a84:	74 05                	je     401a8b <Gets+0x3d>
  401a86:	83 f8 0a             	cmp    $0xa,%eax
  401a89:	75 d9                	jne    401a64 <Gets+0x16>
  401a8b:	c6 03 00             	movb   $0x0,(%rbx)
  401a8e:	b8 00 00 00 00       	mov    $0x0,%eax
  401a93:	e8 67 ff ff ff       	callq  4019ff <save_term>
  401a98:	4c 89 e0             	mov    %r12,%rax
  401a9b:	5b                   	pop    %rbx
  401a9c:	5d                   	pop    %rbp
  401a9d:	41 5c                	pop    %r12
  401a9f:	c3                   	retq   

0000000000401aa0 <notify_server>:
  401aa0:	55                   	push   %rbp
  401aa1:	53                   	push   %rbx
  401aa2:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  401aa9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401ab0:	00 00 
  401ab2:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401ab9:	00 
  401aba:	31 c0                	xor    %eax,%eax
  401abc:	83 3d 45 2a 20 00 00 	cmpl   $0x0,0x202a45(%rip)        # 604508 <is_checker>
  401ac3:	0f 85 d2 00 00 00    	jne    401b9b <notify_server+0xfb>
  401ac9:	89 fb                	mov    %edi,%ebx
  401acb:	8b 05 53 36 20 00    	mov    0x203653(%rip),%eax        # 605124 <gets_cnt>
  401ad1:	83 c0 64             	add    $0x64,%eax
  401ad4:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401ad9:	0f 8f dd 00 00 00    	jg     401bbc <notify_server+0x11c>
  401adf:	0f be 05 42 36 20 00 	movsbl 0x203642(%rip),%eax        # 605128 <target_prefix>
  401ae6:	83 3d 9b 29 20 00 00 	cmpl   $0x0,0x20299b(%rip)        # 604488 <notify>
  401aed:	0f 84 e9 00 00 00    	je     401bdc <notify_server+0x13c>
  401af3:	8b 15 07 2a 20 00    	mov    0x202a07(%rip),%edx        # 604500 <authkey>
  401af9:	85 db                	test   %ebx,%ebx
  401afb:	0f 84 e5 00 00 00    	je     401be6 <notify_server+0x146>
  401b01:	48 8d 2d 79 17 00 00 	lea    0x1779(%rip),%rbp        # 403281 <_IO_stdin_used+0x401>
  401b08:	48 89 e7             	mov    %rsp,%rdi
  401b0b:	48 8d 0d 0e 2a 20 00 	lea    0x202a0e(%rip),%rcx        # 604520 <gets_buf>
  401b12:	51                   	push   %rcx
  401b13:	56                   	push   %rsi
  401b14:	50                   	push   %rax
  401b15:	52                   	push   %rdx
  401b16:	49 89 e9             	mov    %rbp,%r9
  401b19:	44 8b 05 10 26 20 00 	mov    0x202610(%rip),%r8d        # 604130 <target_id>
  401b20:	48 8d 0d 64 17 00 00 	lea    0x1764(%rip),%rcx        # 40328b <_IO_stdin_used+0x40b>
  401b27:	ba 00 20 00 00       	mov    $0x2000,%edx
  401b2c:	be 01 00 00 00       	mov    $0x1,%esi
  401b31:	b8 00 00 00 00       	mov    $0x0,%eax
  401b36:	e8 25 f3 ff ff       	callq  400e60 <__sprintf_chk@plt>
  401b3b:	48 83 c4 20          	add    $0x20,%rsp
  401b3f:	83 3d 42 29 20 00 00 	cmpl   $0x0,0x202942(%rip)        # 604488 <notify>
  401b46:	0f 84 df 00 00 00    	je     401c2b <notify_server+0x18b>
  401b4c:	85 db                	test   %ebx,%ebx
  401b4e:	0f 84 c6 00 00 00    	je     401c1a <notify_server+0x17a>
  401b54:	48 89 e1             	mov    %rsp,%rcx
  401b57:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401b5e:	00 
  401b5f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401b65:	48 8b 15 dc 25 20 00 	mov    0x2025dc(%rip),%rdx        # 604148 <lab>
  401b6c:	48 8b 35 dd 25 20 00 	mov    0x2025dd(%rip),%rsi        # 604150 <course>
  401b73:	48 8b 3d c6 25 20 00 	mov    0x2025c6(%rip),%rdi        # 604140 <user_id>
  401b7a:	e8 af 11 00 00       	callq  402d2e <driver_post>
  401b7f:	85 c0                	test   %eax,%eax
  401b81:	78 6f                	js     401bf2 <notify_server+0x152>
  401b83:	48 8d 3d 46 18 00 00 	lea    0x1846(%rip),%rdi        # 4033d0 <_IO_stdin_used+0x550>
  401b8a:	e8 31 f1 ff ff       	callq  400cc0 <puts@plt>
  401b8f:	48 8d 3d 1d 17 00 00 	lea    0x171d(%rip),%rdi        # 4032b3 <_IO_stdin_used+0x433>
  401b96:	e8 25 f1 ff ff       	callq  400cc0 <puts@plt>
  401b9b:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401ba2:	00 
  401ba3:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401baa:	00 00 
  401bac:	0f 85 07 01 00 00    	jne    401cb9 <notify_server+0x219>
  401bb2:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  401bb9:	5b                   	pop    %rbx
  401bba:	5d                   	pop    %rbp
  401bbb:	c3                   	retq   
  401bbc:	48 8d 35 dd 17 00 00 	lea    0x17dd(%rip),%rsi        # 4033a0 <_IO_stdin_used+0x520>
  401bc3:	bf 01 00 00 00       	mov    $0x1,%edi
  401bc8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bcd:	e8 0e f2 ff ff       	callq  400de0 <__printf_chk@plt>
  401bd2:	bf 01 00 00 00       	mov    $0x1,%edi
  401bd7:	e8 54 f2 ff ff       	callq  400e30 <exit@plt>
  401bdc:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401be1:	e9 13 ff ff ff       	jmpq   401af9 <notify_server+0x59>
  401be6:	48 8d 2d 99 16 00 00 	lea    0x1699(%rip),%rbp        # 403286 <_IO_stdin_used+0x406>
  401bed:	e9 16 ff ff ff       	jmpq   401b08 <notify_server+0x68>
  401bf2:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401bf9:	00 
  401bfa:	48 8d 35 a6 16 00 00 	lea    0x16a6(%rip),%rsi        # 4032a7 <_IO_stdin_used+0x427>
  401c01:	bf 01 00 00 00       	mov    $0x1,%edi
  401c06:	b8 00 00 00 00       	mov    $0x0,%eax
  401c0b:	e8 d0 f1 ff ff       	callq  400de0 <__printf_chk@plt>
  401c10:	bf 01 00 00 00       	mov    $0x1,%edi
  401c15:	e8 16 f2 ff ff       	callq  400e30 <exit@plt>
  401c1a:	48 8d 3d 9c 16 00 00 	lea    0x169c(%rip),%rdi        # 4032bd <_IO_stdin_used+0x43d>
  401c21:	e8 9a f0 ff ff       	callq  400cc0 <puts@plt>
  401c26:	e9 70 ff ff ff       	jmpq   401b9b <notify_server+0xfb>
  401c2b:	48 89 ea             	mov    %rbp,%rdx
  401c2e:	48 8d 35 d3 17 00 00 	lea    0x17d3(%rip),%rsi        # 403408 <_IO_stdin_used+0x588>
  401c35:	bf 01 00 00 00       	mov    $0x1,%edi
  401c3a:	b8 00 00 00 00       	mov    $0x0,%eax
  401c3f:	e8 9c f1 ff ff       	callq  400de0 <__printf_chk@plt>
  401c44:	48 8b 15 f5 24 20 00 	mov    0x2024f5(%rip),%rdx        # 604140 <user_id>
  401c4b:	48 8d 35 72 16 00 00 	lea    0x1672(%rip),%rsi        # 4032c4 <_IO_stdin_used+0x444>
  401c52:	bf 01 00 00 00       	mov    $0x1,%edi
  401c57:	b8 00 00 00 00       	mov    $0x0,%eax
  401c5c:	e8 7f f1 ff ff       	callq  400de0 <__printf_chk@plt>
  401c61:	48 8b 15 e8 24 20 00 	mov    0x2024e8(%rip),%rdx        # 604150 <course>
  401c68:	48 8d 35 62 16 00 00 	lea    0x1662(%rip),%rsi        # 4032d1 <_IO_stdin_used+0x451>
  401c6f:	bf 01 00 00 00       	mov    $0x1,%edi
  401c74:	b8 00 00 00 00       	mov    $0x0,%eax
  401c79:	e8 62 f1 ff ff       	callq  400de0 <__printf_chk@plt>
  401c7e:	48 8b 15 c3 24 20 00 	mov    0x2024c3(%rip),%rdx        # 604148 <lab>
  401c85:	48 8d 35 51 16 00 00 	lea    0x1651(%rip),%rsi        # 4032dd <_IO_stdin_used+0x45d>
  401c8c:	bf 01 00 00 00       	mov    $0x1,%edi
  401c91:	b8 00 00 00 00       	mov    $0x0,%eax
  401c96:	e8 45 f1 ff ff       	callq  400de0 <__printf_chk@plt>
  401c9b:	48 89 e2             	mov    %rsp,%rdx
  401c9e:	48 8d 35 41 16 00 00 	lea    0x1641(%rip),%rsi        # 4032e6 <_IO_stdin_used+0x466>
  401ca5:	bf 01 00 00 00       	mov    $0x1,%edi
  401caa:	b8 00 00 00 00       	mov    $0x0,%eax
  401caf:	e8 2c f1 ff ff       	callq  400de0 <__printf_chk@plt>
  401cb4:	e9 e2 fe ff ff       	jmpq   401b9b <notify_server+0xfb>
  401cb9:	e8 22 f0 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000401cbe <validate>:
  401cbe:	53                   	push   %rbx
  401cbf:	89 fb                	mov    %edi,%ebx
  401cc1:	83 3d 40 28 20 00 00 	cmpl   $0x0,0x202840(%rip)        # 604508 <is_checker>
  401cc8:	74 72                	je     401d3c <validate+0x7e>
  401cca:	39 3d 2c 28 20 00    	cmp    %edi,0x20282c(%rip)        # 6044fc <vlevel>
  401cd0:	75 32                	jne    401d04 <validate+0x46>
  401cd2:	8b 15 20 28 20 00    	mov    0x202820(%rip),%edx        # 6044f8 <check_level>
  401cd8:	39 fa                	cmp    %edi,%edx
  401cda:	75 3e                	jne    401d1a <validate+0x5c>
  401cdc:	0f be 15 45 34 20 00 	movsbl 0x203445(%rip),%edx        # 605128 <target_prefix>
  401ce3:	4c 8d 05 36 28 20 00 	lea    0x202836(%rip),%r8        # 604520 <gets_buf>
  401cea:	89 f9                	mov    %edi,%ecx
  401cec:	48 8d 35 1d 16 00 00 	lea    0x161d(%rip),%rsi        # 403310 <_IO_stdin_used+0x490>
  401cf3:	bf 01 00 00 00       	mov    $0x1,%edi
  401cf8:	b8 00 00 00 00       	mov    $0x0,%eax
  401cfd:	e8 de f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401d02:	5b                   	pop    %rbx
  401d03:	c3                   	retq   
  401d04:	48 8d 3d e7 15 00 00 	lea    0x15e7(%rip),%rdi        # 4032f2 <_IO_stdin_used+0x472>
  401d0b:	e8 b0 ef ff ff       	callq  400cc0 <puts@plt>
  401d10:	b8 00 00 00 00       	mov    $0x0,%eax
  401d15:	e8 fc fc ff ff       	callq  401a16 <check_fail>
  401d1a:	89 f9                	mov    %edi,%ecx
  401d1c:	48 8d 35 0d 17 00 00 	lea    0x170d(%rip),%rsi        # 403430 <_IO_stdin_used+0x5b0>
  401d23:	bf 01 00 00 00       	mov    $0x1,%edi
  401d28:	b8 00 00 00 00       	mov    $0x0,%eax
  401d2d:	e8 ae f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401d32:	b8 00 00 00 00       	mov    $0x0,%eax
  401d37:	e8 da fc ff ff       	callq  401a16 <check_fail>
  401d3c:	39 3d ba 27 20 00    	cmp    %edi,0x2027ba(%rip)        # 6044fc <vlevel>
  401d42:	74 1a                	je     401d5e <validate+0xa0>
  401d44:	48 8d 3d a7 15 00 00 	lea    0x15a7(%rip),%rdi        # 4032f2 <_IO_stdin_used+0x472>
  401d4b:	e8 70 ef ff ff       	callq  400cc0 <puts@plt>
  401d50:	89 de                	mov    %ebx,%esi
  401d52:	bf 00 00 00 00       	mov    $0x0,%edi
  401d57:	e8 44 fd ff ff       	callq  401aa0 <notify_server>
  401d5c:	eb a4                	jmp    401d02 <validate+0x44>
  401d5e:	0f be 0d c3 33 20 00 	movsbl 0x2033c3(%rip),%ecx        # 605128 <target_prefix>
  401d65:	89 fa                	mov    %edi,%edx
  401d67:	48 8d 35 ea 16 00 00 	lea    0x16ea(%rip),%rsi        # 403458 <_IO_stdin_used+0x5d8>
  401d6e:	bf 01 00 00 00       	mov    $0x1,%edi
  401d73:	b8 00 00 00 00       	mov    $0x0,%eax
  401d78:	e8 63 f0 ff ff       	callq  400de0 <__printf_chk@plt>
  401d7d:	89 de                	mov    %ebx,%esi
  401d7f:	bf 01 00 00 00       	mov    $0x1,%edi
  401d84:	e8 17 fd ff ff       	callq  401aa0 <notify_server>
  401d89:	e9 74 ff ff ff       	jmpq   401d02 <validate+0x44>

0000000000401d8e <fail>:
  401d8e:	48 83 ec 08          	sub    $0x8,%rsp
  401d92:	83 3d 6f 27 20 00 00 	cmpl   $0x0,0x20276f(%rip)        # 604508 <is_checker>
  401d99:	75 11                	jne    401dac <fail+0x1e>
  401d9b:	89 fe                	mov    %edi,%esi
  401d9d:	bf 00 00 00 00       	mov    $0x0,%edi
  401da2:	e8 f9 fc ff ff       	callq  401aa0 <notify_server>
  401da7:	48 83 c4 08          	add    $0x8,%rsp
  401dab:	c3                   	retq   
  401dac:	b8 00 00 00 00       	mov    $0x0,%eax
  401db1:	e8 60 fc ff ff       	callq  401a16 <check_fail>

0000000000401db6 <bushandler>:
  401db6:	48 83 ec 08          	sub    $0x8,%rsp
  401dba:	83 3d 47 27 20 00 00 	cmpl   $0x0,0x202747(%rip)        # 604508 <is_checker>
  401dc1:	74 16                	je     401dd9 <bushandler+0x23>
  401dc3:	48 8d 3d 5b 15 00 00 	lea    0x155b(%rip),%rdi        # 403325 <_IO_stdin_used+0x4a5>
  401dca:	e8 f1 ee ff ff       	callq  400cc0 <puts@plt>
  401dcf:	b8 00 00 00 00       	mov    $0x0,%eax
  401dd4:	e8 3d fc ff ff       	callq  401a16 <check_fail>
  401dd9:	48 8d 3d b0 16 00 00 	lea    0x16b0(%rip),%rdi        # 403490 <_IO_stdin_used+0x610>
  401de0:	e8 db ee ff ff       	callq  400cc0 <puts@plt>
  401de5:	48 8d 3d 43 15 00 00 	lea    0x1543(%rip),%rdi        # 40332f <_IO_stdin_used+0x4af>
  401dec:	e8 cf ee ff ff       	callq  400cc0 <puts@plt>
  401df1:	be 00 00 00 00       	mov    $0x0,%esi
  401df6:	bf 00 00 00 00       	mov    $0x0,%edi
  401dfb:	e8 a0 fc ff ff       	callq  401aa0 <notify_server>
  401e00:	bf 01 00 00 00       	mov    $0x1,%edi
  401e05:	e8 26 f0 ff ff       	callq  400e30 <exit@plt>

0000000000401e0a <seghandler>:
  401e0a:	48 83 ec 08          	sub    $0x8,%rsp
  401e0e:	83 3d f3 26 20 00 00 	cmpl   $0x0,0x2026f3(%rip)        # 604508 <is_checker>
  401e15:	74 16                	je     401e2d <seghandler+0x23>
  401e17:	48 8d 3d 27 15 00 00 	lea    0x1527(%rip),%rdi        # 403345 <_IO_stdin_used+0x4c5>
  401e1e:	e8 9d ee ff ff       	callq  400cc0 <puts@plt>
  401e23:	b8 00 00 00 00       	mov    $0x0,%eax
  401e28:	e8 e9 fb ff ff       	callq  401a16 <check_fail>
  401e2d:	48 8d 3d 7c 16 00 00 	lea    0x167c(%rip),%rdi        # 4034b0 <_IO_stdin_used+0x630>
  401e34:	e8 87 ee ff ff       	callq  400cc0 <puts@plt>
  401e39:	48 8d 3d ef 14 00 00 	lea    0x14ef(%rip),%rdi        # 40332f <_IO_stdin_used+0x4af>
  401e40:	e8 7b ee ff ff       	callq  400cc0 <puts@plt>
  401e45:	be 00 00 00 00       	mov    $0x0,%esi
  401e4a:	bf 00 00 00 00       	mov    $0x0,%edi
  401e4f:	e8 4c fc ff ff       	callq  401aa0 <notify_server>
  401e54:	bf 01 00 00 00       	mov    $0x1,%edi
  401e59:	e8 d2 ef ff ff       	callq  400e30 <exit@plt>

0000000000401e5e <illegalhandler>:
  401e5e:	48 83 ec 08          	sub    $0x8,%rsp
  401e62:	83 3d 9f 26 20 00 00 	cmpl   $0x0,0x20269f(%rip)        # 604508 <is_checker>
  401e69:	74 16                	je     401e81 <illegalhandler+0x23>
  401e6b:	48 8d 3d e6 14 00 00 	lea    0x14e6(%rip),%rdi        # 403358 <_IO_stdin_used+0x4d8>
  401e72:	e8 49 ee ff ff       	callq  400cc0 <puts@plt>
  401e77:	b8 00 00 00 00       	mov    $0x0,%eax
  401e7c:	e8 95 fb ff ff       	callq  401a16 <check_fail>
  401e81:	48 8d 3d 50 16 00 00 	lea    0x1650(%rip),%rdi        # 4034d8 <_IO_stdin_used+0x658>
  401e88:	e8 33 ee ff ff       	callq  400cc0 <puts@plt>
  401e8d:	48 8d 3d 9b 14 00 00 	lea    0x149b(%rip),%rdi        # 40332f <_IO_stdin_used+0x4af>
  401e94:	e8 27 ee ff ff       	callq  400cc0 <puts@plt>
  401e99:	be 00 00 00 00       	mov    $0x0,%esi
  401e9e:	bf 00 00 00 00       	mov    $0x0,%edi
  401ea3:	e8 f8 fb ff ff       	callq  401aa0 <notify_server>
  401ea8:	bf 01 00 00 00       	mov    $0x1,%edi
  401ead:	e8 7e ef ff ff       	callq  400e30 <exit@plt>

0000000000401eb2 <sigalrmhandler>:
  401eb2:	48 83 ec 08          	sub    $0x8,%rsp
  401eb6:	83 3d 4b 26 20 00 00 	cmpl   $0x0,0x20264b(%rip)        # 604508 <is_checker>
  401ebd:	74 16                	je     401ed5 <sigalrmhandler+0x23>
  401ebf:	48 8d 3d a6 14 00 00 	lea    0x14a6(%rip),%rdi        # 40336c <_IO_stdin_used+0x4ec>
  401ec6:	e8 f5 ed ff ff       	callq  400cc0 <puts@plt>
  401ecb:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed0:	e8 41 fb ff ff       	callq  401a16 <check_fail>
  401ed5:	ba 05 00 00 00       	mov    $0x5,%edx
  401eda:	48 8d 35 27 16 00 00 	lea    0x1627(%rip),%rsi        # 403508 <_IO_stdin_used+0x688>
  401ee1:	bf 01 00 00 00       	mov    $0x1,%edi
  401ee6:	b8 00 00 00 00       	mov    $0x0,%eax
  401eeb:	e8 f0 ee ff ff       	callq  400de0 <__printf_chk@plt>
  401ef0:	be 00 00 00 00       	mov    $0x0,%esi
  401ef5:	bf 00 00 00 00       	mov    $0x0,%edi
  401efa:	e8 a1 fb ff ff       	callq  401aa0 <notify_server>
  401eff:	bf 01 00 00 00       	mov    $0x1,%edi
  401f04:	e8 27 ef ff ff       	callq  400e30 <exit@plt>

0000000000401f09 <launch>:
  401f09:	55                   	push   %rbp
  401f0a:	48 89 e5             	mov    %rsp,%rbp
  401f0d:	48 83 ec 10          	sub    $0x10,%rsp
  401f11:	48 89 fa             	mov    %rdi,%rdx
  401f14:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401f1b:	00 00 
  401f1d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401f21:	31 c0                	xor    %eax,%eax
  401f23:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401f27:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401f2b:	48 29 c4             	sub    %rax,%rsp
  401f2e:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401f33:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401f37:	be f4 00 00 00       	mov    $0xf4,%esi
  401f3c:	e8 bf ed ff ff       	callq  400d00 <memset@plt>
  401f41:	48 8b 05 58 25 20 00 	mov    0x202558(%rip),%rax        # 6044a0 <stdin@@GLIBC_2.2.5>
  401f48:	48 39 05 a1 25 20 00 	cmp    %rax,0x2025a1(%rip)        # 6044f0 <infile>
  401f4f:	74 3a                	je     401f8b <launch+0x82>
  401f51:	c7 05 a1 25 20 00 00 	movl   $0x0,0x2025a1(%rip)        # 6044fc <vlevel>
  401f58:	00 00 00 
  401f5b:	b8 00 00 00 00       	mov    $0x0,%eax
  401f60:	e8 16 fa ff ff       	callq  40197b <test>
  401f65:	83 3d 9c 25 20 00 00 	cmpl   $0x0,0x20259c(%rip)        # 604508 <is_checker>
  401f6c:	75 35                	jne    401fa3 <launch+0x9a>
  401f6e:	48 8d 3d 17 14 00 00 	lea    0x1417(%rip),%rdi        # 40338c <_IO_stdin_used+0x50c>
  401f75:	e8 46 ed ff ff       	callq  400cc0 <puts@plt>
  401f7a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f7e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401f85:	00 00 
  401f87:	75 30                	jne    401fb9 <launch+0xb0>
  401f89:	c9                   	leaveq 
  401f8a:	c3                   	retq   
  401f8b:	48 8d 35 e2 13 00 00 	lea    0x13e2(%rip),%rsi        # 403374 <_IO_stdin_used+0x4f4>
  401f92:	bf 01 00 00 00       	mov    $0x1,%edi
  401f97:	b8 00 00 00 00       	mov    $0x0,%eax
  401f9c:	e8 3f ee ff ff       	callq  400de0 <__printf_chk@plt>
  401fa1:	eb ae                	jmp    401f51 <launch+0x48>
  401fa3:	48 8d 3d d7 13 00 00 	lea    0x13d7(%rip),%rdi        # 403381 <_IO_stdin_used+0x501>
  401faa:	e8 11 ed ff ff       	callq  400cc0 <puts@plt>
  401faf:	b8 00 00 00 00       	mov    $0x0,%eax
  401fb4:	e8 5d fa ff ff       	callq  401a16 <check_fail>
  401fb9:	e8 22 ed ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000401fbe <stable_launch>:
  401fbe:	53                   	push   %rbx
  401fbf:	48 89 3d 22 25 20 00 	mov    %rdi,0x202522(%rip)        # 6044e8 <global_offset>
  401fc6:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401fcc:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401fd2:	b9 32 01 00 00       	mov    $0x132,%ecx
  401fd7:	ba 07 00 00 00       	mov    $0x7,%edx
  401fdc:	be 00 00 10 00       	mov    $0x100000,%esi
  401fe1:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401fe6:	e8 05 ed ff ff       	callq  400cf0 <mmap@plt>
  401feb:	48 89 c3             	mov    %rax,%rbx
  401fee:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401ff4:	75 43                	jne    402039 <stable_launch+0x7b>
  401ff6:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401ffd:	48 89 15 2c 31 20 00 	mov    %rdx,0x20312c(%rip)        # 605130 <stack_top>
  402004:	48 89 e0             	mov    %rsp,%rax
  402007:	48 89 d4             	mov    %rdx,%rsp
  40200a:	48 89 c2             	mov    %rax,%rdx
  40200d:	48 89 15 cc 24 20 00 	mov    %rdx,0x2024cc(%rip)        # 6044e0 <global_save_stack>
  402014:	48 8b 3d cd 24 20 00 	mov    0x2024cd(%rip),%rdi        # 6044e8 <global_offset>
  40201b:	e8 e9 fe ff ff       	callq  401f09 <launch>
  402020:	48 8b 05 b9 24 20 00 	mov    0x2024b9(%rip),%rax        # 6044e0 <global_save_stack>
  402027:	48 89 c4             	mov    %rax,%rsp
  40202a:	be 00 00 10 00       	mov    $0x100000,%esi
  40202f:	48 89 df             	mov    %rbx,%rdi
  402032:	e8 99 ed ff ff       	callq  400dd0 <munmap@plt>
  402037:	5b                   	pop    %rbx
  402038:	c3                   	retq   
  402039:	be 00 00 10 00       	mov    $0x100000,%esi
  40203e:	48 89 c7             	mov    %rax,%rdi
  402041:	e8 8a ed ff ff       	callq  400dd0 <munmap@plt>
  402046:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40204b:	48 8d 15 ee 14 00 00 	lea    0x14ee(%rip),%rdx        # 403540 <_IO_stdin_used+0x6c0>
  402052:	be 01 00 00 00       	mov    $0x1,%esi
  402057:	48 8b 3d 62 24 20 00 	mov    0x202462(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  40205e:	b8 00 00 00 00       	mov    $0x0,%eax
  402063:	e8 e8 ed ff ff       	callq  400e50 <__fprintf_chk@plt>
  402068:	bf 01 00 00 00       	mov    $0x1,%edi
  40206d:	e8 be ed ff ff       	callq  400e30 <exit@plt>

0000000000402072 <rio_readinitb>:
  402072:	89 37                	mov    %esi,(%rdi)
  402074:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  40207b:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40207f:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402083:	c3                   	retq   

0000000000402084 <sigalrm_handler>:
  402084:	48 83 ec 08          	sub    $0x8,%rsp
  402088:	b9 00 00 00 00       	mov    $0x0,%ecx
  40208d:	48 8d 15 ec 14 00 00 	lea    0x14ec(%rip),%rdx        # 403580 <trans_char+0x10>
  402094:	be 01 00 00 00       	mov    $0x1,%esi
  402099:	48 8b 3d 20 24 20 00 	mov    0x202420(%rip),%rdi        # 6044c0 <stderr@@GLIBC_2.2.5>
  4020a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4020a5:	e8 a6 ed ff ff       	callq  400e50 <__fprintf_chk@plt>
  4020aa:	bf 01 00 00 00       	mov    $0x1,%edi
  4020af:	e8 7c ed ff ff       	callq  400e30 <exit@plt>

00000000004020b4 <rio_writen>:
  4020b4:	41 55                	push   %r13
  4020b6:	41 54                	push   %r12
  4020b8:	55                   	push   %rbp
  4020b9:	53                   	push   %rbx
  4020ba:	48 83 ec 08          	sub    $0x8,%rsp
  4020be:	41 89 fc             	mov    %edi,%r12d
  4020c1:	48 89 f5             	mov    %rsi,%rbp
  4020c4:	49 89 d5             	mov    %rdx,%r13
  4020c7:	48 89 d3             	mov    %rdx,%rbx
  4020ca:	eb 06                	jmp    4020d2 <rio_writen+0x1e>
  4020cc:	48 29 c3             	sub    %rax,%rbx
  4020cf:	48 01 c5             	add    %rax,%rbp
  4020d2:	48 85 db             	test   %rbx,%rbx
  4020d5:	74 24                	je     4020fb <rio_writen+0x47>
  4020d7:	48 89 da             	mov    %rbx,%rdx
  4020da:	48 89 ee             	mov    %rbp,%rsi
  4020dd:	44 89 e7             	mov    %r12d,%edi
  4020e0:	e8 eb eb ff ff       	callq  400cd0 <write@plt>
  4020e5:	48 85 c0             	test   %rax,%rax
  4020e8:	7f e2                	jg     4020cc <rio_writen+0x18>
  4020ea:	e8 91 eb ff ff       	callq  400c80 <__errno_location@plt>
  4020ef:	83 38 04             	cmpl   $0x4,(%rax)
  4020f2:	75 15                	jne    402109 <rio_writen+0x55>
  4020f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4020f9:	eb d1                	jmp    4020cc <rio_writen+0x18>
  4020fb:	4c 89 e8             	mov    %r13,%rax
  4020fe:	48 83 c4 08          	add    $0x8,%rsp
  402102:	5b                   	pop    %rbx
  402103:	5d                   	pop    %rbp
  402104:	41 5c                	pop    %r12
  402106:	41 5d                	pop    %r13
  402108:	c3                   	retq   
  402109:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402110:	eb ec                	jmp    4020fe <rio_writen+0x4a>

0000000000402112 <rio_read>:
  402112:	41 55                	push   %r13
  402114:	41 54                	push   %r12
  402116:	55                   	push   %rbp
  402117:	53                   	push   %rbx
  402118:	48 83 ec 08          	sub    $0x8,%rsp
  40211c:	48 89 fb             	mov    %rdi,%rbx
  40211f:	49 89 f5             	mov    %rsi,%r13
  402122:	49 89 d4             	mov    %rdx,%r12
  402125:	eb 0a                	jmp    402131 <rio_read+0x1f>
  402127:	e8 54 eb ff ff       	callq  400c80 <__errno_location@plt>
  40212c:	83 38 04             	cmpl   $0x4,(%rax)
  40212f:	75 5c                	jne    40218d <rio_read+0x7b>
  402131:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402134:	85 ed                	test   %ebp,%ebp
  402136:	7f 24                	jg     40215c <rio_read+0x4a>
  402138:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  40213c:	8b 3b                	mov    (%rbx),%edi
  40213e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402143:	48 89 ee             	mov    %rbp,%rsi
  402146:	e8 e5 eb ff ff       	callq  400d30 <read@plt>
  40214b:	89 43 04             	mov    %eax,0x4(%rbx)
  40214e:	85 c0                	test   %eax,%eax
  402150:	78 d5                	js     402127 <rio_read+0x15>
  402152:	85 c0                	test   %eax,%eax
  402154:	74 40                	je     402196 <rio_read+0x84>
  402156:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  40215a:	eb d5                	jmp    402131 <rio_read+0x1f>
  40215c:	89 e8                	mov    %ebp,%eax
  40215e:	4c 39 e0             	cmp    %r12,%rax
  402161:	72 03                	jb     402166 <rio_read+0x54>
  402163:	44 89 e5             	mov    %r12d,%ebp
  402166:	4c 63 e5             	movslq %ebp,%r12
  402169:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40216d:	4c 89 e2             	mov    %r12,%rdx
  402170:	4c 89 ef             	mov    %r13,%rdi
  402173:	e8 08 ec ff ff       	callq  400d80 <memcpy@plt>
  402178:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40217c:	29 6b 04             	sub    %ebp,0x4(%rbx)
  40217f:	4c 89 e0             	mov    %r12,%rax
  402182:	48 83 c4 08          	add    $0x8,%rsp
  402186:	5b                   	pop    %rbx
  402187:	5d                   	pop    %rbp
  402188:	41 5c                	pop    %r12
  40218a:	41 5d                	pop    %r13
  40218c:	c3                   	retq   
  40218d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402194:	eb ec                	jmp    402182 <rio_read+0x70>
  402196:	b8 00 00 00 00       	mov    $0x0,%eax
  40219b:	eb e5                	jmp    402182 <rio_read+0x70>

000000000040219d <rio_readlineb>:
  40219d:	41 55                	push   %r13
  40219f:	41 54                	push   %r12
  4021a1:	55                   	push   %rbp
  4021a2:	53                   	push   %rbx
  4021a3:	48 83 ec 18          	sub    $0x18,%rsp
  4021a7:	49 89 fd             	mov    %rdi,%r13
  4021aa:	48 89 f5             	mov    %rsi,%rbp
  4021ad:	49 89 d4             	mov    %rdx,%r12
  4021b0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4021b7:	00 00 
  4021b9:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4021be:	31 c0                	xor    %eax,%eax
  4021c0:	bb 01 00 00 00       	mov    $0x1,%ebx
  4021c5:	4c 39 e3             	cmp    %r12,%rbx
  4021c8:	73 47                	jae    402211 <rio_readlineb+0x74>
  4021ca:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4021cf:	ba 01 00 00 00       	mov    $0x1,%edx
  4021d4:	4c 89 ef             	mov    %r13,%rdi
  4021d7:	e8 36 ff ff ff       	callq  402112 <rio_read>
  4021dc:	83 f8 01             	cmp    $0x1,%eax
  4021df:	75 1c                	jne    4021fd <rio_readlineb+0x60>
  4021e1:	48 8d 45 01          	lea    0x1(%rbp),%rax
  4021e5:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  4021ea:	88 55 00             	mov    %dl,0x0(%rbp)
  4021ed:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  4021f2:	74 1a                	je     40220e <rio_readlineb+0x71>
  4021f4:	48 83 c3 01          	add    $0x1,%rbx
  4021f8:	48 89 c5             	mov    %rax,%rbp
  4021fb:	eb c8                	jmp    4021c5 <rio_readlineb+0x28>
  4021fd:	85 c0                	test   %eax,%eax
  4021ff:	75 32                	jne    402233 <rio_readlineb+0x96>
  402201:	48 83 fb 01          	cmp    $0x1,%rbx
  402205:	75 0a                	jne    402211 <rio_readlineb+0x74>
  402207:	b8 00 00 00 00       	mov    $0x0,%eax
  40220c:	eb 0a                	jmp    402218 <rio_readlineb+0x7b>
  40220e:	48 89 c5             	mov    %rax,%rbp
  402211:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402215:	48 89 d8             	mov    %rbx,%rax
  402218:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  40221d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402224:	00 00 
  402226:	75 14                	jne    40223c <rio_readlineb+0x9f>
  402228:	48 83 c4 18          	add    $0x18,%rsp
  40222c:	5b                   	pop    %rbx
  40222d:	5d                   	pop    %rbp
  40222e:	41 5c                	pop    %r12
  402230:	41 5d                	pop    %r13
  402232:	c3                   	retq   
  402233:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40223a:	eb dc                	jmp    402218 <rio_readlineb+0x7b>
  40223c:	e8 9f ea ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402241 <urlencode>:
  402241:	41 54                	push   %r12
  402243:	55                   	push   %rbp
  402244:	53                   	push   %rbx
  402245:	48 83 ec 10          	sub    $0x10,%rsp
  402249:	48 89 fb             	mov    %rdi,%rbx
  40224c:	48 89 f5             	mov    %rsi,%rbp
  40224f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402256:	00 00 
  402258:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40225d:	31 c0                	xor    %eax,%eax
  40225f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402266:	f2 ae                	repnz scas %es:(%rdi),%al
  402268:	48 89 ce             	mov    %rcx,%rsi
  40226b:	48 f7 d6             	not    %rsi
  40226e:	8d 46 ff             	lea    -0x1(%rsi),%eax
  402271:	eb 0f                	jmp    402282 <urlencode+0x41>
  402273:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402277:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40227b:	48 83 c3 01          	add    $0x1,%rbx
  40227f:	44 89 e0             	mov    %r12d,%eax
  402282:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402286:	85 c0                	test   %eax,%eax
  402288:	0f 84 a8 00 00 00    	je     402336 <urlencode+0xf5>
  40228e:	44 0f b6 03          	movzbl (%rbx),%r8d
  402292:	41 80 f8 2a          	cmp    $0x2a,%r8b
  402296:	0f 94 c2             	sete   %dl
  402299:	41 80 f8 2d          	cmp    $0x2d,%r8b
  40229d:	0f 94 c0             	sete   %al
  4022a0:	08 c2                	or     %al,%dl
  4022a2:	75 cf                	jne    402273 <urlencode+0x32>
  4022a4:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4022a8:	74 c9                	je     402273 <urlencode+0x32>
  4022aa:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4022ae:	74 c3                	je     402273 <urlencode+0x32>
  4022b0:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4022b4:	3c 09                	cmp    $0x9,%al
  4022b6:	76 bb                	jbe    402273 <urlencode+0x32>
  4022b8:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4022bc:	3c 19                	cmp    $0x19,%al
  4022be:	76 b3                	jbe    402273 <urlencode+0x32>
  4022c0:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4022c4:	3c 19                	cmp    $0x19,%al
  4022c6:	76 ab                	jbe    402273 <urlencode+0x32>
  4022c8:	41 80 f8 20          	cmp    $0x20,%r8b
  4022cc:	74 56                	je     402324 <urlencode+0xe3>
  4022ce:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4022d2:	3c 5f                	cmp    $0x5f,%al
  4022d4:	0f 96 c2             	setbe  %dl
  4022d7:	41 80 f8 09          	cmp    $0x9,%r8b
  4022db:	0f 94 c0             	sete   %al
  4022de:	08 c2                	or     %al,%dl
  4022e0:	74 4f                	je     402331 <urlencode+0xf0>
  4022e2:	48 89 e7             	mov    %rsp,%rdi
  4022e5:	45 0f b6 c0          	movzbl %r8b,%r8d
  4022e9:	48 8d 0d 28 13 00 00 	lea    0x1328(%rip),%rcx        # 403618 <trans_char+0xa8>
  4022f0:	ba 08 00 00 00       	mov    $0x8,%edx
  4022f5:	be 01 00 00 00       	mov    $0x1,%esi
  4022fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4022ff:	e8 5c eb ff ff       	callq  400e60 <__sprintf_chk@plt>
  402304:	0f b6 04 24          	movzbl (%rsp),%eax
  402308:	88 45 00             	mov    %al,0x0(%rbp)
  40230b:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402310:	88 45 01             	mov    %al,0x1(%rbp)
  402313:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402318:	88 45 02             	mov    %al,0x2(%rbp)
  40231b:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40231f:	e9 57 ff ff ff       	jmpq   40227b <urlencode+0x3a>
  402324:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402328:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40232c:	e9 4a ff ff ff       	jmpq   40227b <urlencode+0x3a>
  402331:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402336:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  40233b:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402342:	00 00 
  402344:	75 09                	jne    40234f <urlencode+0x10e>
  402346:	48 83 c4 10          	add    $0x10,%rsp
  40234a:	5b                   	pop    %rbx
  40234b:	5d                   	pop    %rbp
  40234c:	41 5c                	pop    %r12
  40234e:	c3                   	retq   
  40234f:	e8 8c e9 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402354 <submitr>:
  402354:	41 57                	push   %r15
  402356:	41 56                	push   %r14
  402358:	41 55                	push   %r13
  40235a:	41 54                	push   %r12
  40235c:	55                   	push   %rbp
  40235d:	53                   	push   %rbx
  40235e:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  402365:	49 89 fd             	mov    %rdi,%r13
  402368:	89 74 24 14          	mov    %esi,0x14(%rsp)
  40236c:	49 89 d7             	mov    %rdx,%r15
  40236f:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  402374:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402379:	4d 89 ce             	mov    %r9,%r14
  40237c:	48 8b ac 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbp
  402383:	00 
  402384:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40238b:	00 00 
  40238d:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402394:	00 
  402395:	31 c0                	xor    %eax,%eax
  402397:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  40239e:	00 
  40239f:	ba 00 00 00 00       	mov    $0x0,%edx
  4023a4:	be 01 00 00 00       	mov    $0x1,%esi
  4023a9:	bf 02 00 00 00       	mov    $0x2,%edi
  4023ae:	e8 bd ea ff ff       	callq  400e70 <socket@plt>
  4023b3:	85 c0                	test   %eax,%eax
  4023b5:	0f 88 a9 02 00 00    	js     402664 <submitr+0x310>
  4023bb:	89 c3                	mov    %eax,%ebx
  4023bd:	4c 89 ef             	mov    %r13,%rdi
  4023c0:	e8 8b e9 ff ff       	callq  400d50 <gethostbyname@plt>
  4023c5:	48 85 c0             	test   %rax,%rax
  4023c8:	0f 84 e2 02 00 00    	je     4026b0 <submitr+0x35c>
  4023ce:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  4023d3:	48 c7 44 24 32 00 00 	movq   $0x0,0x32(%rsp)
  4023da:	00 00 
  4023dc:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%rsp)
  4023e3:	00 
  4023e4:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%rsp)
  4023eb:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  4023f2:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4023f6:	48 8b 40 18          	mov    0x18(%rax),%rax
  4023fa:	48 8b 30             	mov    (%rax),%rsi
  4023fd:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402402:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402407:	e8 54 e9 ff ff       	callq  400d60 <__memmove_chk@plt>
  40240c:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  402411:	66 c1 c8 08          	ror    $0x8,%ax
  402415:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  40241a:	ba 10 00 00 00       	mov    $0x10,%edx
  40241f:	4c 89 e6             	mov    %r12,%rsi
  402422:	89 df                	mov    %ebx,%edi
  402424:	e8 17 ea ff ff       	callq  400e40 <connect@plt>
  402429:	85 c0                	test   %eax,%eax
  40242b:	0f 88 e7 02 00 00    	js     402718 <submitr+0x3c4>
  402431:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402438:	b8 00 00 00 00       	mov    $0x0,%eax
  40243d:	48 89 f1             	mov    %rsi,%rcx
  402440:	4c 89 f7             	mov    %r14,%rdi
  402443:	f2 ae                	repnz scas %es:(%rdi),%al
  402445:	48 89 ca             	mov    %rcx,%rdx
  402448:	48 f7 d2             	not    %rdx
  40244b:	48 89 f1             	mov    %rsi,%rcx
  40244e:	4c 89 ff             	mov    %r15,%rdi
  402451:	f2 ae                	repnz scas %es:(%rdi),%al
  402453:	48 f7 d1             	not    %rcx
  402456:	49 89 c8             	mov    %rcx,%r8
  402459:	48 89 f1             	mov    %rsi,%rcx
  40245c:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402461:	f2 ae                	repnz scas %es:(%rdi),%al
  402463:	48 f7 d1             	not    %rcx
  402466:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  40246b:	48 89 f1             	mov    %rsi,%rcx
  40246e:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402473:	f2 ae                	repnz scas %es:(%rdi),%al
  402475:	48 89 c8             	mov    %rcx,%rax
  402478:	48 f7 d0             	not    %rax
  40247b:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402480:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402485:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  40248c:	00 
  40248d:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402493:	0f 87 d9 02 00 00    	ja     402772 <submitr+0x41e>
  402499:	48 8d b4 24 50 40 00 	lea    0x4050(%rsp),%rsi
  4024a0:	00 
  4024a1:	b9 00 04 00 00       	mov    $0x400,%ecx
  4024a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4024ab:	48 89 f7             	mov    %rsi,%rdi
  4024ae:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4024b1:	4c 89 f7             	mov    %r14,%rdi
  4024b4:	e8 88 fd ff ff       	callq  402241 <urlencode>
  4024b9:	85 c0                	test   %eax,%eax
  4024bb:	0f 88 24 03 00 00    	js     4027e5 <submitr+0x491>
  4024c1:	4c 8d a4 24 50 20 00 	lea    0x2050(%rsp),%r12
  4024c8:	00 
  4024c9:	41 55                	push   %r13
  4024cb:	48 8d 84 24 58 40 00 	lea    0x4058(%rsp),%rax
  4024d2:	00 
  4024d3:	50                   	push   %rax
  4024d4:	4d 89 f9             	mov    %r15,%r9
  4024d7:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
  4024dc:	48 8d 0d c5 10 00 00 	lea    0x10c5(%rip),%rcx        # 4035a8 <trans_char+0x38>
  4024e3:	ba 00 20 00 00       	mov    $0x2000,%edx
  4024e8:	be 01 00 00 00       	mov    $0x1,%esi
  4024ed:	4c 89 e7             	mov    %r12,%rdi
  4024f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4024f5:	e8 66 e9 ff ff       	callq  400e60 <__sprintf_chk@plt>
  4024fa:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402501:	b8 00 00 00 00       	mov    $0x0,%eax
  402506:	4c 89 e7             	mov    %r12,%rdi
  402509:	f2 ae                	repnz scas %es:(%rdi),%al
  40250b:	48 89 ca             	mov    %rcx,%rdx
  40250e:	48 f7 d2             	not    %rdx
  402511:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  402515:	4c 89 e6             	mov    %r12,%rsi
  402518:	89 df                	mov    %ebx,%edi
  40251a:	e8 95 fb ff ff       	callq  4020b4 <rio_writen>
  40251f:	48 83 c4 10          	add    $0x10,%rsp
  402523:	48 85 c0             	test   %rax,%rax
  402526:	0f 88 44 03 00 00    	js     402870 <submitr+0x51c>
  40252c:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
  402531:	89 de                	mov    %ebx,%esi
  402533:	4c 89 e7             	mov    %r12,%rdi
  402536:	e8 37 fb ff ff       	callq  402072 <rio_readinitb>
  40253b:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402542:	00 
  402543:	ba 00 20 00 00       	mov    $0x2000,%edx
  402548:	4c 89 e7             	mov    %r12,%rdi
  40254b:	e8 4d fc ff ff       	callq  40219d <rio_readlineb>
  402550:	48 85 c0             	test   %rax,%rax
  402553:	0f 8e 86 03 00 00    	jle    4028df <submitr+0x58b>
  402559:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  40255e:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
  402565:	00 
  402566:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
  40256d:	00 
  40256e:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
  402575:	00 
  402576:	48 8d 35 a2 10 00 00 	lea    0x10a2(%rip),%rsi        # 40361f <trans_char+0xaf>
  40257d:	b8 00 00 00 00       	mov    $0x0,%eax
  402582:	e8 39 e8 ff ff       	callq  400dc0 <__isoc99_sscanf@plt>
  402587:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  40258e:	00 
  40258f:	b9 03 00 00 00       	mov    $0x3,%ecx
  402594:	48 8d 3d 9b 10 00 00 	lea    0x109b(%rip),%rdi        # 403636 <trans_char+0xc6>
  40259b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40259d:	0f 97 c0             	seta   %al
  4025a0:	1c 00                	sbb    $0x0,%al
  4025a2:	84 c0                	test   %al,%al
  4025a4:	0f 84 b3 03 00 00    	je     40295d <submitr+0x609>
  4025aa:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  4025b1:	00 
  4025b2:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4025b7:	ba 00 20 00 00       	mov    $0x2000,%edx
  4025bc:	e8 dc fb ff ff       	callq  40219d <rio_readlineb>
  4025c1:	48 85 c0             	test   %rax,%rax
  4025c4:	7f c1                	jg     402587 <submitr+0x233>
  4025c6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4025cd:	3a 20 43 
  4025d0:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4025d7:	20 75 6e 
  4025da:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4025de:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4025e2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4025e9:	74 6f 20 
  4025ec:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  4025f3:	68 65 61 
  4025f6:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4025fa:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4025fe:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402605:	66 72 6f 
  402608:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  40260f:	20 72 65 
  402612:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402616:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  40261a:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402621:	73 65 72 
  402624:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402628:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  40262f:	89 df                	mov    %ebx,%edi
  402631:	e8 ea e6 ff ff       	callq  400d20 <close@plt>
  402636:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40263b:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402642:	00 
  402643:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  40264a:	00 00 
  40264c:	0f 85 7e 04 00 00    	jne    402ad0 <submitr+0x77c>
  402652:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402659:	5b                   	pop    %rbx
  40265a:	5d                   	pop    %rbp
  40265b:	41 5c                	pop    %r12
  40265d:	41 5d                	pop    %r13
  40265f:	41 5e                	pop    %r14
  402661:	41 5f                	pop    %r15
  402663:	c3                   	retq   
  402664:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40266b:	3a 20 43 
  40266e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402675:	20 75 6e 
  402678:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40267c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402680:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402687:	74 6f 20 
  40268a:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402691:	65 20 73 
  402694:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402698:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40269c:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4026a3:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4026a9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026ae:	eb 8b                	jmp    40263b <submitr+0x2e7>
  4026b0:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4026b7:	3a 20 44 
  4026ba:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4026c1:	20 75 6e 
  4026c4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4026c8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4026cc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4026d3:	74 6f 20 
  4026d6:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4026dd:	76 65 20 
  4026e0:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4026e4:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4026e8:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4026ef:	72 20 61 
  4026f2:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4026f6:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4026fd:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402703:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402707:	89 df                	mov    %ebx,%edi
  402709:	e8 12 e6 ff ff       	callq  400d20 <close@plt>
  40270e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402713:	e9 23 ff ff ff       	jmpq   40263b <submitr+0x2e7>
  402718:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40271f:	3a 20 55 
  402722:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402729:	20 74 6f 
  40272c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402730:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402734:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40273b:	65 63 74 
  40273e:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402745:	68 65 20 
  402748:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40274c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402750:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  402757:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  40275d:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  402761:	89 df                	mov    %ebx,%edi
  402763:	e8 b8 e5 ff ff       	callq  400d20 <close@plt>
  402768:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40276d:	e9 c9 fe ff ff       	jmpq   40263b <submitr+0x2e7>
  402772:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402779:	3a 20 52 
  40277c:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402783:	20 73 74 
  402786:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40278a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40278e:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402795:	74 6f 6f 
  402798:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  40279f:	65 2e 20 
  4027a2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4027a6:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4027aa:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4027b1:	61 73 65 
  4027b4:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  4027bb:	49 54 52 
  4027be:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4027c2:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4027c6:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4027cd:	55 46 00 
  4027d0:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4027d4:	89 df                	mov    %ebx,%edi
  4027d6:	e8 45 e5 ff ff       	callq  400d20 <close@plt>
  4027db:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027e0:	e9 56 fe ff ff       	jmpq   40263b <submitr+0x2e7>
  4027e5:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4027ec:	3a 20 52 
  4027ef:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4027f6:	20 73 74 
  4027f9:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4027fd:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402801:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402808:	63 6f 6e 
  40280b:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402812:	20 61 6e 
  402815:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402819:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40281d:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402824:	67 61 6c 
  402827:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  40282e:	6e 70 72 
  402831:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402835:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402839:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402840:	6c 65 20 
  402843:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  40284a:	63 74 65 
  40284d:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402851:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402855:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  40285b:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  40285f:	89 df                	mov    %ebx,%edi
  402861:	e8 ba e4 ff ff       	callq  400d20 <close@plt>
  402866:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40286b:	e9 cb fd ff ff       	jmpq   40263b <submitr+0x2e7>
  402870:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402877:	3a 20 43 
  40287a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402881:	20 75 6e 
  402884:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402888:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40288c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402893:	74 6f 20 
  402896:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  40289d:	20 74 6f 
  4028a0:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4028a4:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4028a8:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  4028af:	72 65 73 
  4028b2:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  4028b9:	65 72 76 
  4028bc:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4028c0:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4028c4:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  4028ca:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  4028ce:	89 df                	mov    %ebx,%edi
  4028d0:	e8 4b e4 ff ff       	callq  400d20 <close@plt>
  4028d5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028da:	e9 5c fd ff ff       	jmpq   40263b <submitr+0x2e7>
  4028df:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028e6:	3a 20 43 
  4028e9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4028f0:	20 75 6e 
  4028f3:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028f7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4028fb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402902:	74 6f 20 
  402905:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  40290c:	66 69 72 
  40290f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402913:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402917:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  40291e:	61 64 65 
  402921:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402928:	6d 20 72 
  40292b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40292f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402933:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  40293a:	20 73 65 
  40293d:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402941:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  402948:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  40294c:	89 df                	mov    %ebx,%edi
  40294e:	e8 cd e3 ff ff       	callq  400d20 <close@plt>
  402953:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402958:	e9 de fc ff ff       	jmpq   40263b <submitr+0x2e7>
  40295d:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402964:	00 
  402965:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  40296a:	ba 00 20 00 00       	mov    $0x2000,%edx
  40296f:	e8 29 f8 ff ff       	callq  40219d <rio_readlineb>
  402974:	48 85 c0             	test   %rax,%rax
  402977:	0f 8e 96 00 00 00    	jle    402a13 <submitr+0x6bf>
  40297d:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402982:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402989:	0f 85 08 01 00 00    	jne    402a97 <submitr+0x743>
  40298f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
  402996:	00 
  402997:	48 89 ef             	mov    %rbp,%rdi
  40299a:	e8 11 e3 ff ff       	callq  400cb0 <strcpy@plt>
  40299f:	89 df                	mov    %ebx,%edi
  4029a1:	e8 7a e3 ff ff       	callq  400d20 <close@plt>
  4029a6:	b9 04 00 00 00       	mov    $0x4,%ecx
  4029ab:	48 8d 3d 7e 0c 00 00 	lea    0xc7e(%rip),%rdi        # 403630 <trans_char+0xc0>
  4029b2:	48 89 ee             	mov    %rbp,%rsi
  4029b5:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4029b7:	0f 97 c0             	seta   %al
  4029ba:	1c 00                	sbb    $0x0,%al
  4029bc:	0f be c0             	movsbl %al,%eax
  4029bf:	85 c0                	test   %eax,%eax
  4029c1:	0f 84 74 fc ff ff    	je     40263b <submitr+0x2e7>
  4029c7:	b9 05 00 00 00       	mov    $0x5,%ecx
  4029cc:	48 8d 3d 61 0c 00 00 	lea    0xc61(%rip),%rdi        # 403634 <trans_char+0xc4>
  4029d3:	48 89 ee             	mov    %rbp,%rsi
  4029d6:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4029d8:	0f 97 c0             	seta   %al
  4029db:	1c 00                	sbb    $0x0,%al
  4029dd:	0f be c0             	movsbl %al,%eax
  4029e0:	85 c0                	test   %eax,%eax
  4029e2:	0f 84 53 fc ff ff    	je     40263b <submitr+0x2e7>
  4029e8:	b9 03 00 00 00       	mov    $0x3,%ecx
  4029ed:	48 8d 3d 45 0c 00 00 	lea    0xc45(%rip),%rdi        # 403639 <trans_char+0xc9>
  4029f4:	48 89 ee             	mov    %rbp,%rsi
  4029f7:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4029f9:	0f 97 c0             	seta   %al
  4029fc:	1c 00                	sbb    $0x0,%al
  4029fe:	0f be c0             	movsbl %al,%eax
  402a01:	85 c0                	test   %eax,%eax
  402a03:	0f 84 32 fc ff ff    	je     40263b <submitr+0x2e7>
  402a09:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a0e:	e9 28 fc ff ff       	jmpq   40263b <submitr+0x2e7>
  402a13:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a1a:	3a 20 43 
  402a1d:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402a24:	20 75 6e 
  402a27:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a2b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a2f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a36:	74 6f 20 
  402a39:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402a40:	73 74 61 
  402a43:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a47:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a4b:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402a52:	65 73 73 
  402a55:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402a5c:	72 6f 6d 
  402a5f:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a63:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a67:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402a6e:	6c 74 20 
  402a71:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402a75:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  402a7c:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  402a82:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  402a86:	89 df                	mov    %ebx,%edi
  402a88:	e8 93 e2 ff ff       	callq  400d20 <close@plt>
  402a8d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a92:	e9 a4 fb ff ff       	jmpq   40263b <submitr+0x2e7>
  402a97:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
  402a9e:	00 
  402a9f:	48 8d 0d 42 0b 00 00 	lea    0xb42(%rip),%rcx        # 4035e8 <trans_char+0x78>
  402aa6:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402aad:	be 01 00 00 00       	mov    $0x1,%esi
  402ab2:	48 89 ef             	mov    %rbp,%rdi
  402ab5:	b8 00 00 00 00       	mov    $0x0,%eax
  402aba:	e8 a1 e3 ff ff       	callq  400e60 <__sprintf_chk@plt>
  402abf:	89 df                	mov    %ebx,%edi
  402ac1:	e8 5a e2 ff ff       	callq  400d20 <close@plt>
  402ac6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402acb:	e9 6b fb ff ff       	jmpq   40263b <submitr+0x2e7>
  402ad0:	e8 0b e2 ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402ad5 <init_timeout>:
  402ad5:	85 ff                	test   %edi,%edi
  402ad7:	74 28                	je     402b01 <init_timeout+0x2c>
  402ad9:	53                   	push   %rbx
  402ada:	89 fb                	mov    %edi,%ebx
  402adc:	85 ff                	test   %edi,%edi
  402ade:	78 1a                	js     402afa <init_timeout+0x25>
  402ae0:	48 8d 35 9d f5 ff ff 	lea    -0xa63(%rip),%rsi        # 402084 <sigalrm_handler>
  402ae7:	bf 0e 00 00 00       	mov    $0xe,%edi
  402aec:	e8 4f e2 ff ff       	callq  400d40 <signal@plt>
  402af1:	89 df                	mov    %ebx,%edi
  402af3:	e8 18 e2 ff ff       	callq  400d10 <alarm@plt>
  402af8:	5b                   	pop    %rbx
  402af9:	c3                   	retq   
  402afa:	bb 00 00 00 00       	mov    $0x0,%ebx
  402aff:	eb df                	jmp    402ae0 <init_timeout+0xb>
  402b01:	f3 c3                	repz retq 

0000000000402b03 <init_driver>:
  402b03:	41 54                	push   %r12
  402b05:	55                   	push   %rbp
  402b06:	53                   	push   %rbx
  402b07:	48 83 ec 20          	sub    $0x20,%rsp
  402b0b:	49 89 fc             	mov    %rdi,%r12
  402b0e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b15:	00 00 
  402b17:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402b1c:	31 c0                	xor    %eax,%eax
  402b1e:	be 01 00 00 00       	mov    $0x1,%esi
  402b23:	bf 0d 00 00 00       	mov    $0xd,%edi
  402b28:	e8 13 e2 ff ff       	callq  400d40 <signal@plt>
  402b2d:	be 01 00 00 00       	mov    $0x1,%esi
  402b32:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402b37:	e8 04 e2 ff ff       	callq  400d40 <signal@plt>
  402b3c:	be 01 00 00 00       	mov    $0x1,%esi
  402b41:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402b46:	e8 f5 e1 ff ff       	callq  400d40 <signal@plt>
  402b4b:	ba 00 00 00 00       	mov    $0x0,%edx
  402b50:	be 01 00 00 00       	mov    $0x1,%esi
  402b55:	bf 02 00 00 00       	mov    $0x2,%edi
  402b5a:	e8 11 e3 ff ff       	callq  400e70 <socket@plt>
  402b5f:	85 c0                	test   %eax,%eax
  402b61:	0f 88 a3 00 00 00    	js     402c0a <init_driver+0x107>
  402b67:	89 c3                	mov    %eax,%ebx
  402b69:	48 8d 3d cc 0a 00 00 	lea    0xacc(%rip),%rdi        # 40363c <trans_char+0xcc>
  402b70:	e8 db e1 ff ff       	callq  400d50 <gethostbyname@plt>
  402b75:	48 85 c0             	test   %rax,%rax
  402b78:	0f 84 df 00 00 00    	je     402c5d <init_driver+0x15a>
  402b7e:	48 89 e5             	mov    %rsp,%rbp
  402b81:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402b88:	00 00 
  402b8a:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402b91:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402b97:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402b9d:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402ba1:	48 8b 40 18          	mov    0x18(%rax),%rax
  402ba5:	48 8b 30             	mov    (%rax),%rsi
  402ba8:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402bac:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402bb1:	e8 aa e1 ff ff       	callq  400d60 <__memmove_chk@plt>
  402bb6:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402bbd:	ba 10 00 00 00       	mov    $0x10,%edx
  402bc2:	48 89 ee             	mov    %rbp,%rsi
  402bc5:	89 df                	mov    %ebx,%edi
  402bc7:	e8 74 e2 ff ff       	callq  400e40 <connect@plt>
  402bcc:	85 c0                	test   %eax,%eax
  402bce:	0f 88 fb 00 00 00    	js     402ccf <init_driver+0x1cc>
  402bd4:	89 df                	mov    %ebx,%edi
  402bd6:	e8 45 e1 ff ff       	callq  400d20 <close@plt>
  402bdb:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402be2:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402be8:	b8 00 00 00 00       	mov    $0x0,%eax
  402bed:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402bf2:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402bf9:	00 00 
  402bfb:	0f 85 28 01 00 00    	jne    402d29 <init_driver+0x226>
  402c01:	48 83 c4 20          	add    $0x20,%rsp
  402c05:	5b                   	pop    %rbx
  402c06:	5d                   	pop    %rbp
  402c07:	41 5c                	pop    %r12
  402c09:	c3                   	retq   
  402c0a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c11:	3a 20 43 
  402c14:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402c1b:	20 75 6e 
  402c1e:	49 89 04 24          	mov    %rax,(%r12)
  402c22:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402c27:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c2e:	74 6f 20 
  402c31:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402c38:	65 20 73 
  402c3b:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402c40:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402c45:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402c4c:	6b 65 
  402c4e:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402c55:	00 
  402c56:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c5b:	eb 90                	jmp    402bed <init_driver+0xea>
  402c5d:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402c64:	3a 20 44 
  402c67:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402c6e:	20 75 6e 
  402c71:	49 89 04 24          	mov    %rax,(%r12)
  402c75:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402c7a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c81:	74 6f 20 
  402c84:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402c8b:	76 65 20 
  402c8e:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402c93:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402c98:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402c9f:	72 20 61 
  402ca2:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402ca7:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  402cae:	72 65 
  402cb0:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402cb7:	73 
  402cb8:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  402cbe:	89 df                	mov    %ebx,%edi
  402cc0:	e8 5b e0 ff ff       	callq  400d20 <close@plt>
  402cc5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cca:	e9 1e ff ff ff       	jmpq   402bed <init_driver+0xea>
  402ccf:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402cd6:	3a 20 55 
  402cd9:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402ce0:	20 74 6f 
  402ce3:	49 89 04 24          	mov    %rax,(%r12)
  402ce7:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402cec:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402cf3:	65 63 74 
  402cf6:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  402cfd:	65 72 76 
  402d00:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402d05:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402d0a:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  402d11:	72 
  402d12:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  402d18:	89 df                	mov    %ebx,%edi
  402d1a:	e8 01 e0 ff ff       	callq  400d20 <close@plt>
  402d1f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d24:	e9 c4 fe ff ff       	jmpq   402bed <init_driver+0xea>
  402d29:	e8 b2 df ff ff       	callq  400ce0 <__stack_chk_fail@plt>

0000000000402d2e <driver_post>:
  402d2e:	53                   	push   %rbx
  402d2f:	4c 89 cb             	mov    %r9,%rbx
  402d32:	45 85 c0             	test   %r8d,%r8d
  402d35:	75 18                	jne    402d4f <driver_post+0x21>
  402d37:	48 85 ff             	test   %rdi,%rdi
  402d3a:	74 05                	je     402d41 <driver_post+0x13>
  402d3c:	80 3f 00             	cmpb   $0x0,(%rdi)
  402d3f:	75 37                	jne    402d78 <driver_post+0x4a>
  402d41:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402d46:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402d4a:	44 89 c0             	mov    %r8d,%eax
  402d4d:	5b                   	pop    %rbx
  402d4e:	c3                   	retq   
  402d4f:	48 89 ca             	mov    %rcx,%rdx
  402d52:	48 8d 35 fb 08 00 00 	lea    0x8fb(%rip),%rsi        # 403654 <trans_char+0xe4>
  402d59:	bf 01 00 00 00       	mov    $0x1,%edi
  402d5e:	b8 00 00 00 00       	mov    $0x0,%eax
  402d63:	e8 78 e0 ff ff       	callq  400de0 <__printf_chk@plt>
  402d68:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402d6d:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402d71:	b8 00 00 00 00       	mov    $0x0,%eax
  402d76:	eb d5                	jmp    402d4d <driver_post+0x1f>
  402d78:	48 83 ec 08          	sub    $0x8,%rsp
  402d7c:	41 51                	push   %r9
  402d7e:	49 89 c9             	mov    %rcx,%r9
  402d81:	49 89 d0             	mov    %rdx,%r8
  402d84:	48 89 f9             	mov    %rdi,%rcx
  402d87:	48 89 f2             	mov    %rsi,%rdx
  402d8a:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402d8f:	48 8d 3d a6 08 00 00 	lea    0x8a6(%rip),%rdi        # 40363c <trans_char+0xcc>
  402d96:	e8 b9 f5 ff ff       	callq  402354 <submitr>
  402d9b:	48 83 c4 10          	add    $0x10,%rsp
  402d9f:	eb ac                	jmp    402d4d <driver_post+0x1f>

0000000000402da1 <check>:
  402da1:	89 f8                	mov    %edi,%eax
  402da3:	c1 e8 1c             	shr    $0x1c,%eax
  402da6:	85 c0                	test   %eax,%eax
  402da8:	74 1d                	je     402dc7 <check+0x26>
  402daa:	b9 00 00 00 00       	mov    $0x0,%ecx
  402daf:	83 f9 1f             	cmp    $0x1f,%ecx
  402db2:	7f 0d                	jg     402dc1 <check+0x20>
  402db4:	89 f8                	mov    %edi,%eax
  402db6:	d3 e8                	shr    %cl,%eax
  402db8:	3c 0a                	cmp    $0xa,%al
  402dba:	74 11                	je     402dcd <check+0x2c>
  402dbc:	83 c1 08             	add    $0x8,%ecx
  402dbf:	eb ee                	jmp    402daf <check+0xe>
  402dc1:	b8 01 00 00 00       	mov    $0x1,%eax
  402dc6:	c3                   	retq   
  402dc7:	b8 00 00 00 00       	mov    $0x0,%eax
  402dcc:	c3                   	retq   
  402dcd:	b8 00 00 00 00       	mov    $0x0,%eax
  402dd2:	c3                   	retq   

0000000000402dd3 <gencookie>:
  402dd3:	53                   	push   %rbx
  402dd4:	83 c7 01             	add    $0x1,%edi
  402dd7:	e8 b4 de ff ff       	callq  400c90 <srandom@plt>
  402ddc:	e8 bf df ff ff       	callq  400da0 <random@plt>
  402de1:	89 c3                	mov    %eax,%ebx
  402de3:	89 c7                	mov    %eax,%edi
  402de5:	e8 b7 ff ff ff       	callq  402da1 <check>
  402dea:	85 c0                	test   %eax,%eax
  402dec:	74 ee                	je     402ddc <gencookie+0x9>
  402dee:	89 d8                	mov    %ebx,%eax
  402df0:	5b                   	pop    %rbx
  402df1:	c3                   	retq   
  402df2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402df9:	00 00 00 
  402dfc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402e00 <__libc_csu_init>:
  402e00:	41 57                	push   %r15
  402e02:	41 56                	push   %r14
  402e04:	49 89 d7             	mov    %rdx,%r15
  402e07:	41 55                	push   %r13
  402e09:	41 54                	push   %r12
  402e0b:	4c 8d 25 fe 0f 20 00 	lea    0x200ffe(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  402e12:	55                   	push   %rbp
  402e13:	48 8d 2d fe 0f 20 00 	lea    0x200ffe(%rip),%rbp        # 603e18 <__init_array_end>
  402e1a:	53                   	push   %rbx
  402e1b:	41 89 fd             	mov    %edi,%r13d
  402e1e:	49 89 f6             	mov    %rsi,%r14
  402e21:	4c 29 e5             	sub    %r12,%rbp
  402e24:	48 83 ec 08          	sub    $0x8,%rsp
  402e28:	48 c1 fd 03          	sar    $0x3,%rbp
  402e2c:	e8 17 de ff ff       	callq  400c48 <_init>
  402e31:	48 85 ed             	test   %rbp,%rbp
  402e34:	74 20                	je     402e56 <__libc_csu_init+0x56>
  402e36:	31 db                	xor    %ebx,%ebx
  402e38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402e3f:	00 
  402e40:	4c 89 fa             	mov    %r15,%rdx
  402e43:	4c 89 f6             	mov    %r14,%rsi
  402e46:	44 89 ef             	mov    %r13d,%edi
  402e49:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402e4d:	48 83 c3 01          	add    $0x1,%rbx
  402e51:	48 39 dd             	cmp    %rbx,%rbp
  402e54:	75 ea                	jne    402e40 <__libc_csu_init+0x40>
  402e56:	48 83 c4 08          	add    $0x8,%rsp
  402e5a:	5b                   	pop    %rbx
  402e5b:	5d                   	pop    %rbp
  402e5c:	41 5c                	pop    %r12
  402e5e:	41 5d                	pop    %r13
  402e60:	41 5e                	pop    %r14
  402e62:	41 5f                	pop    %r15
  402e64:	c3                   	retq   
  402e65:	90                   	nop
  402e66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402e6d:	00 00 00 

0000000000402e70 <__libc_csu_fini>:
  402e70:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402e74 <_fini>:
  402e74:	48 83 ec 08          	sub    $0x8,%rsp
  402e78:	48 83 c4 08          	add    $0x8,%rsp
  402e7c:	c3                   	retq   
