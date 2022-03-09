
Generic_Register/out.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 25 34 00 00 	mov    0x3425(%rip),%rax        # 140004440 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 26 34 00 00 	mov    0x3426(%rip),%rax        # 140004450 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 29 34 00 00 	mov    0x3429(%rip),%rax        # 140004460 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 9c 33 00 00 	mov    0x339c(%rip),%rax        # 1400043e0 <.refptr.__image_base__>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 cf 33 00 00 	mov    0x33cf(%rip),%rax        # 140004430 <.refptr.__mingw_app_type>
   140001061:	89 0d b9 5f 00 00    	mov    %ecx,0x5fb9(%rip)        # 140007020 <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 61 17 00 00       	call   1400027d8 <__set_app_type>
   140001077:	e8 d4 16 00 00       	call   140002750 <__p__fmode>
   14000107c:	48 8b 15 7d 34 00 00 	mov    0x347d(%rip),%rdx        # 140004500 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 d4 16 00 00       	call   140002760 <__p__commode>
   14000108c:	48 8b 15 4d 34 00 00 	mov    0x344d(%rip),%rdx        # 1400044e0 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 d4 06 00 00       	call   140001770 <_setargv>
   14000109c:	48 8b 05 cd 32 00 00 	mov    0x32cd(%rip),%rax        # 140004370 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret    
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 1e 17 00 00       	call   1400027d8 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d 21 34 00 00 	mov    0x3421(%rip),%rcx        # 140004520 <.refptr._matherr>
   1400010ff:	e8 cc 0d 00 00       	call   140001ed0 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret    
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 f5 33 00 00 	mov    0x33f5(%rip),%rax        # 140004530 <.refptr._newmode>
   14000113b:	4c 8d 05 e6 5e 00 00 	lea    0x5ee6(%rip),%r8        # 140007028 <envp>
   140001142:	48 8d 15 e7 5e 00 00 	lea    0x5ee7(%rip),%rdx        # 140007030 <argv>
   140001149:	48 8d 0d e8 5e 00 00 	lea    0x5ee8(%rip),%rcx        # 140007038 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 c0 5e 00 00    	mov    %eax,0x5ec0(%rip)        # 140007018 <startinfo>
   140001158:	48 8d 05 b9 5e 00 00 	lea    0x5eb9(%rip),%rax        # 140007018 <startinfo>
   14000115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001164:	48 8b 05 85 33 00 00 	mov    0x3385(%rip),%rax        # 1400044f0 <.refptr._dowildcard>
   14000116b:	44 8b 08             	mov    (%rax),%r9d
   14000116e:	e8 55 16 00 00       	call   1400027c8 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret    
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 55                	push   %r13
   140001182:	41 54                	push   %r12
   140001184:	55                   	push   %rbp
   140001185:	57                   	push   %rdi
   140001186:	56                   	push   %rsi
   140001187:	53                   	push   %rbx
   140001188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   14000118f:	b9 0d 00 00 00       	mov    $0xd,%ecx
   140001194:	31 c0                	xor    %eax,%eax
   140001196:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
   14000119b:	4c 89 c7             	mov    %r8,%rdi
   14000119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
   1400011a1:	48 8b 3d 88 32 00 00 	mov    0x3288(%rip),%rdi        # 140004430 <.refptr.__mingw_app_type>
   1400011a8:	44 8b 0f             	mov    (%rdi),%r9d
   1400011ab:	45 85 c9             	test   %r9d,%r9d
   1400011ae:	0f 85 9c 02 00 00    	jne    140001450 <__tmainCRTStartup+0x2d0>
   1400011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011bb:	00 00 
   1400011bd:	48 8b 1d bc 32 00 00 	mov    0x32bc(%rip),%rbx        # 140004480 <.refptr.__native_startup_lock>
   1400011c4:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011c8:	31 ed                	xor    %ebp,%ebp
   1400011ca:	4c 8b 25 27 70 00 00 	mov    0x7027(%rip),%r12        # 1400081f8 <__imp_Sleep>
   1400011d1:	eb 16                	jmp    1400011e9 <__tmainCRTStartup+0x69>
   1400011d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400011d8:	48 39 c6             	cmp    %rax,%rsi
   1400011db:	0f 84 17 02 00 00    	je     1400013f8 <__tmainCRTStartup+0x278>
   1400011e1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011e6:	41 ff d4             	call   *%r12
   1400011e9:	48 89 e8             	mov    %rbp,%rax
   1400011ec:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011f1:	48 85 c0             	test   %rax,%rax
   1400011f4:	75 e2                	jne    1400011d8 <__tmainCRTStartup+0x58>
   1400011f6:	48 8b 35 93 32 00 00 	mov    0x3293(%rip),%rsi        # 140004490 <.refptr.__native_startup_state>
   1400011fd:	31 ed                	xor    %ebp,%ebp
   1400011ff:	8b 06                	mov    (%rsi),%eax
   140001201:	83 f8 01             	cmp    $0x1,%eax
   140001204:	0f 84 05 02 00 00    	je     14000140f <__tmainCRTStartup+0x28f>
   14000120a:	8b 06                	mov    (%rsi),%eax
   14000120c:	85 c0                	test   %eax,%eax
   14000120e:	0f 84 6c 02 00 00    	je     140001480 <__tmainCRTStartup+0x300>
   140001214:	c7 05 fe 5d 00 00 01 	movl   $0x1,0x5dfe(%rip)        # 14000701c <has_cctor>
   14000121b:	00 00 00 
   14000121e:	8b 06                	mov    (%rsi),%eax
   140001220:	83 f8 01             	cmp    $0x1,%eax
   140001223:	0f 84 fb 01 00 00    	je     140001424 <__tmainCRTStartup+0x2a4>
   140001229:	85 ed                	test   %ebp,%ebp
   14000122b:	0f 84 14 02 00 00    	je     140001445 <__tmainCRTStartup+0x2c5>
   140001231:	48 8b 05 98 31 00 00 	mov    0x3198(%rip),%rax        # 1400043d0 <.refptr.__dyn_tls_init_callback>
   140001238:	48 8b 00             	mov    (%rax),%rax
   14000123b:	48 85 c0             	test   %rax,%rax
   14000123e:	74 0c                	je     14000124c <__tmainCRTStartup+0xcc>
   140001240:	45 31 c0             	xor    %r8d,%r8d
   140001243:	ba 02 00 00 00       	mov    $0x2,%edx
   140001248:	31 c9                	xor    %ecx,%ecx
   14000124a:	ff d0                	call   *%rax
   14000124c:	e8 ef 08 00 00       	call   140001b40 <_pei386_runtime_relocator>
   140001251:	48 8b 0d b8 32 00 00 	mov    0x32b8(%rip),%rcx        # 140004510 <.refptr._gnu_exception_handler>
   140001258:	ff 15 92 6f 00 00    	call   *0x6f92(%rip)        # 1400081f0 <__imp_SetUnhandledExceptionFilter>
   14000125e:	48 8b 15 0b 32 00 00 	mov    0x320b(%rip),%rdx        # 140004470 <.refptr.__mingw_oldexcpt_handler>
   140001265:	48 8d 0d 94 fd ff ff 	lea    -0x26c(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000126c:	48 89 02             	mov    %rax,(%rdx)
   14000126f:	e8 1c 15 00 00       	call   140002790 <_set_invalid_parameter_handler>
   140001274:	e8 d7 06 00 00       	call   140001950 <_fpreset>
   140001279:	48 8b 05 60 31 00 00 	mov    0x3160(%rip),%rax        # 1400043e0 <.refptr.__image_base__>
   140001280:	48 89 05 89 5d 00 00 	mov    %rax,0x5d89(%rip)        # 140007010 <__mingw_winmain_hInstance>
   140001287:	e8 e4 14 00 00       	call   140002770 <__p__acmdln>
   14000128c:	31 c9                	xor    %ecx,%ecx
   14000128e:	48 8b 00             	mov    (%rax),%rax
   140001291:	48 85 c0             	test   %rax,%rax
   140001294:	75 1c                	jne    1400012b2 <__tmainCRTStartup+0x132>
   140001296:	eb 58                	jmp    1400012f0 <__tmainCRTStartup+0x170>
   140001298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000129f:	00 
   1400012a0:	84 d2                	test   %dl,%dl
   1400012a2:	74 45                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012a4:	83 e1 01             	and    $0x1,%ecx
   1400012a7:	74 27                	je     1400012d0 <__tmainCRTStartup+0x150>
   1400012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400012ae:	48 83 c0 01          	add    $0x1,%rax
   1400012b2:	0f b6 10             	movzbl (%rax),%edx
   1400012b5:	80 fa 20             	cmp    $0x20,%dl
   1400012b8:	7e e6                	jle    1400012a0 <__tmainCRTStartup+0x120>
   1400012ba:	41 89 c8             	mov    %ecx,%r8d
   1400012bd:	41 83 f0 01          	xor    $0x1,%r8d
   1400012c1:	80 fa 22             	cmp    $0x22,%dl
   1400012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
   1400012c8:	eb e4                	jmp    1400012ae <__tmainCRTStartup+0x12e>
   1400012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400012d0:	84 d2                	test   %dl,%dl
   1400012d2:	74 15                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012d4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400012d8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
   1400012dc:	48 83 c0 01          	add    $0x1,%rax
   1400012e0:	84 d2                	test   %dl,%dl
   1400012e2:	74 05                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012e4:	80 fa 20             	cmp    $0x20,%dl
   1400012e7:	7e ef                	jle    1400012d8 <__tmainCRTStartup+0x158>
   1400012e9:	48 89 05 18 5d 00 00 	mov    %rax,0x5d18(%rip)        # 140007008 <__mingw_winmain_lpCmdLine>
   1400012f0:	44 8b 07             	mov    (%rdi),%r8d
   1400012f3:	45 85 c0             	test   %r8d,%r8d
   1400012f6:	74 16                	je     14000130e <__tmainCRTStartup+0x18e>
   1400012f8:	b8 0a 00 00 00       	mov    $0xa,%eax
   1400012fd:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
   140001302:	0f 85 e0 00 00 00    	jne    1400013e8 <__tmainCRTStartup+0x268>
   140001308:	89 05 f2 1c 00 00    	mov    %eax,0x1cf2(%rip)        # 140003000 <__data_start__>
   14000130e:	48 63 2d 23 5d 00 00 	movslq 0x5d23(%rip),%rbp        # 140007038 <argc>
   140001315:	44 8d 65 01          	lea    0x1(%rbp),%r12d
   140001319:	4d 63 e4             	movslq %r12d,%r12
   14000131c:	49 c1 e4 03          	shl    $0x3,%r12
   140001320:	4c 89 e1             	mov    %r12,%rcx
   140001323:	e8 10 15 00 00       	call   140002838 <malloc>
   140001328:	4c 8b 2d 01 5d 00 00 	mov    0x5d01(%rip),%r13        # 140007030 <argv>
   14000132f:	48 89 c7             	mov    %rax,%rdi
   140001332:	85 ed                	test   %ebp,%ebp
   140001334:	7e 42                	jle    140001378 <__tmainCRTStartup+0x1f8>
   140001336:	31 db                	xor    %ebx,%ebx
   140001338:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000133f:	00 
   140001340:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
   140001345:	e8 06 15 00 00       	call   140002850 <strlen>
   14000134a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000134e:	48 89 f1             	mov    %rsi,%rcx
   140001351:	e8 e2 14 00 00       	call   140002838 <malloc>
   140001356:	49 89 f0             	mov    %rsi,%r8
   140001359:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
   14000135d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
   140001362:	48 89 c1             	mov    %rax,%rcx
   140001365:	48 83 c3 01          	add    $0x1,%rbx
   140001369:	e8 d2 14 00 00       	call   140002840 <memcpy>
   14000136e:	48 39 dd             	cmp    %rbx,%rbp
   140001371:	75 cd                	jne    140001340 <__tmainCRTStartup+0x1c0>
   140001373:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
   140001378:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000137f:	48 89 3d aa 5c 00 00 	mov    %rdi,0x5caa(%rip)        # 140007030 <argv>
   140001386:	e8 c5 03 00 00       	call   140001750 <__main>
   14000138b:	48 8b 05 5e 30 00 00 	mov    0x305e(%rip),%rax        # 1400043f0 <.refptr.__imp___initenv>
   140001392:	4c 8b 05 8f 5c 00 00 	mov    0x5c8f(%rip),%r8        # 140007028 <envp>
   140001399:	8b 0d 99 5c 00 00    	mov    0x5c99(%rip),%ecx        # 140007038 <argc>
   14000139f:	48 8b 00             	mov    (%rax),%rax
   1400013a2:	4c 89 00             	mov    %r8,(%rax)
   1400013a5:	48 8b 15 84 5c 00 00 	mov    0x5c84(%rip),%rdx        # 140007030 <argv>
   1400013ac:	e8 7f 01 00 00       	call   140001530 <main>
   1400013b1:	8b 0d 69 5c 00 00    	mov    0x5c69(%rip),%ecx        # 140007020 <managedapp>
   1400013b7:	89 05 67 5c 00 00    	mov    %eax,0x5c67(%rip)        # 140007024 <mainret>
   1400013bd:	85 c9                	test   %ecx,%ecx
   1400013bf:	0f 84 d9 00 00 00    	je     14000149e <__tmainCRTStartup+0x31e>
   1400013c5:	8b 15 51 5c 00 00    	mov    0x5c51(%rip),%edx        # 14000701c <has_cctor>
   1400013cb:	85 d2                	test   %edx,%edx
   1400013cd:	0f 84 8d 00 00 00    	je     140001460 <__tmainCRTStartup+0x2e0>
   1400013d3:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   1400013da:	5b                   	pop    %rbx
   1400013db:	5e                   	pop    %rsi
   1400013dc:	5f                   	pop    %rdi
   1400013dd:	5d                   	pop    %rbp
   1400013de:	41 5c                	pop    %r12
   1400013e0:	41 5d                	pop    %r13
   1400013e2:	c3                   	ret    
   1400013e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400013e8:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
   1400013ed:	e9 16 ff ff ff       	jmp    140001308 <__tmainCRTStartup+0x188>
   1400013f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400013f8:	48 8b 35 91 30 00 00 	mov    0x3091(%rip),%rsi        # 140004490 <.refptr.__native_startup_state>
   1400013ff:	bd 01 00 00 00       	mov    $0x1,%ebp
   140001404:	8b 06                	mov    (%rsi),%eax
   140001406:	83 f8 01             	cmp    $0x1,%eax
   140001409:	0f 85 fb fd ff ff    	jne    14000120a <__tmainCRTStartup+0x8a>
   14000140f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   140001414:	e8 cf 13 00 00       	call   1400027e8 <_amsg_exit>
   140001419:	8b 06                	mov    (%rsi),%eax
   14000141b:	83 f8 01             	cmp    $0x1,%eax
   14000141e:	0f 85 05 fe ff ff    	jne    140001229 <__tmainCRTStartup+0xa9>
   140001424:	48 8b 15 85 30 00 00 	mov    0x3085(%rip),%rdx        # 1400044b0 <.refptr.__xc_z>
   14000142b:	48 8b 0d 6e 30 00 00 	mov    0x306e(%rip),%rcx        # 1400044a0 <.refptr.__xc_a>
   140001432:	e8 c1 13 00 00       	call   1400027f8 <_initterm>
   140001437:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   14000143d:	85 ed                	test   %ebp,%ebp
   14000143f:	0f 85 ec fd ff ff    	jne    140001231 <__tmainCRTStartup+0xb1>
   140001445:	31 c0                	xor    %eax,%eax
   140001447:	48 87 03             	xchg   %rax,(%rbx)
   14000144a:	e9 e2 fd ff ff       	jmp    140001231 <__tmainCRTStartup+0xb1>
   14000144f:	90                   	nop
   140001450:	4c 89 c1             	mov    %r8,%rcx
   140001453:	ff 15 7f 6d 00 00    	call   *0x6d7f(%rip)        # 1400081d8 <__imp_GetStartupInfoA>
   140001459:	e9 56 fd ff ff       	jmp    1400011b4 <__tmainCRTStartup+0x34>
   14000145e:	66 90                	xchg   %ax,%ax
   140001460:	e8 8b 13 00 00       	call   1400027f0 <_cexit>
   140001465:	8b 05 b9 5b 00 00    	mov    0x5bb9(%rip),%eax        # 140007024 <mainret>
   14000146b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001472:	5b                   	pop    %rbx
   140001473:	5e                   	pop    %rsi
   140001474:	5f                   	pop    %rdi
   140001475:	5d                   	pop    %rbp
   140001476:	41 5c                	pop    %r12
   140001478:	41 5d                	pop    %r13
   14000147a:	c3                   	ret    
   14000147b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001480:	48 8b 15 49 30 00 00 	mov    0x3049(%rip),%rdx        # 1400044d0 <.refptr.__xi_z>
   140001487:	48 8b 0d 32 30 00 00 	mov    0x3032(%rip),%rcx        # 1400044c0 <.refptr.__xi_a>
   14000148e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   140001494:	e8 5f 13 00 00       	call   1400027f8 <_initterm>
   140001499:	e9 80 fd ff ff       	jmp    14000121e <__tmainCRTStartup+0x9e>
   14000149e:	89 c1                	mov    %eax,%ecx
   1400014a0:	e8 73 13 00 00       	call   140002818 <exit>
   1400014a5:	90                   	nop
   1400014a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400014ad:	00 00 00 

00000001400014b0 <WinMainCRTStartup>:
   1400014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014b4 <.l_startw>:
   1400014b4:	48 8b 05 75 2f 00 00 	mov    0x2f75(%rip),%rax        # 140004430 <.refptr.__mingw_app_type>
   1400014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400014c1:	e8 ba fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014c6:	90                   	nop

00000001400014c7 <.l_endw>:
   1400014c7:	90                   	nop
   1400014c8:	48 83 c4 28          	add    $0x28,%rsp
   1400014cc:	c3                   	ret    
   1400014cd:	0f 1f 00             	nopl   (%rax)

00000001400014d0 <mainCRTStartup>:
   1400014d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014d4 <.l_start>:
   1400014d4:	48 8b 05 55 2f 00 00 	mov    0x2f55(%rip),%rax        # 140004430 <.refptr.__mingw_app_type>
   1400014db:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   1400014e1:	e8 9a fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014e6:	90                   	nop

00000001400014e7 <.l_end>:
   1400014e7:	90                   	nop
   1400014e8:	48 83 c4 28          	add    $0x28,%rsp
   1400014ec:	c3                   	ret    
   1400014ed:	0f 1f 00             	nopl   (%rax)

00000001400014f0 <atexit>:
   1400014f0:	48 83 ec 28          	sub    $0x28,%rsp
   1400014f4:	e8 07 13 00 00       	call   140002800 <_onexit>
   1400014f9:	48 83 f8 01          	cmp    $0x1,%rax
   1400014fd:	19 c0                	sbb    %eax,%eax
   1400014ff:	48 83 c4 28          	add    $0x28,%rsp
   140001503:	c3                   	ret    
   140001504:	90                   	nop
   140001505:	90                   	nop
   140001506:	90                   	nop
   140001507:	90                   	nop
   140001508:	90                   	nop
   140001509:	90                   	nop
   14000150a:	90                   	nop
   14000150b:	90                   	nop
   14000150c:	90                   	nop
   14000150d:	90                   	nop
   14000150e:	90                   	nop
   14000150f:	90                   	nop

0000000140001510 <__gcc_register_frame>:
   140001510:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001520 <__gcc_deregister_frame>
   140001517:	e9 d4 ff ff ff       	jmp    1400014f0 <atexit>
   14000151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001520 <__gcc_deregister_frame>:
   140001520:	c3                   	ret    
   140001521:	90                   	nop
   140001522:	90                   	nop
   140001523:	90                   	nop
   140001524:	90                   	nop
   140001525:	90                   	nop
   140001526:	90                   	nop
   140001527:	90                   	nop
   140001528:	90                   	nop
   140001529:	90                   	nop
   14000152a:	90                   	nop
   14000152b:	90                   	nop
   14000152c:	90                   	nop
   14000152d:	90                   	nop
   14000152e:	90                   	nop
#include <iostream>
#include "Generic_Register.hpp"

int main (){
   14000152f:	90                   	nop

0000000140001530 <main>:
   140001530:	55                   	push   %rbp
   140001531:	48 89 e5             	mov    %rsp,%rbp
   140001534:	48 83 ec 40          	sub    $0x40,%rsp
   140001538:	e8 13 02 00 00       	call   140001750 <__main>
    std::uint8_t Register = 0;
   14000153d:	c6 45 fb 00          	movb   $0x0,-0x5(%rbp)
    ERROR_STATUS ErrorChecker;
    Generic_Register ObjTest(&Register , RESERVED);
   140001541:	48 8d 55 fb          	lea    -0x5(%rbp),%rdx
   140001545:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   140001549:	41 b8 03 00 00 00    	mov    $0x3,%r8d
   14000154f:	48 89 c1             	mov    %rax,%rcx
   140001552:	e8 e9 13 00 00       	call   140002940 <_ZN16Generic_RegisterIhEC1EPh19REGISTER_PERMISSION>
    ErrorChecker = ObjTest.setBit(0);
   140001557:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   14000155b:	ba 00 00 00 00       	mov    $0x0,%edx
   140001560:	48 89 c1             	mov    %rax,%rcx
   140001563:	e8 68 13 00 00       	call   1400028d0 <_ZN16Generic_RegisterIhE6setBitEh>
   140001568:	89 45 fc             	mov    %eax,-0x4(%rbp)
    if(ErrorChecker == OK)
   14000156b:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
   14000156f:	75 3e                	jne    1400015af <main+0x7f>
    std::cout<<"SET_BIT -> "<<(int)Register<<std::endl;
   140001571:	48 8d 05 88 2a 00 00 	lea    0x2a88(%rip),%rax        # 140004000 <.rdata>
   140001578:	48 89 c2             	mov    %rax,%rdx
   14000157b:	48 8b 05 fe 2d 00 00 	mov    0x2dfe(%rip),%rax        # 140004380 <__fu0__ZSt4cout>
   140001582:	48 89 c1             	mov    %rax,%rcx
   140001585:	e8 e6 00 00 00       	call   140001670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000158a:	48 89 c1             	mov    %rax,%rcx
   14000158d:	0f b6 45 fb          	movzbl -0x5(%rbp),%eax
   140001591:	0f b6 c0             	movzbl %al,%eax
   140001594:	89 c2                	mov    %eax,%edx
   140001596:	e8 f5 00 00 00       	call   140001690 <_ZNSolsEi>
   14000159b:	48 89 c1             	mov    %rax,%rcx
   14000159e:	48 8b 05 eb 2d 00 00 	mov    0x2deb(%rip),%rax        # 140004390 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400015a5:	48 89 c2             	mov    %rax,%rdx
   1400015a8:	e8 eb 00 00 00       	call   140001698 <_ZNSolsEPFRSoS_E>
   1400015ad:	eb 2b                	jmp    1400015da <main+0xaa>
    else
    std::cout<<"PERMISSION DENIED"<<std::endl;
   1400015af:	48 8d 05 56 2a 00 00 	lea    0x2a56(%rip),%rax        # 14000400c <.rdata+0xc>
   1400015b6:	48 89 c2             	mov    %rax,%rdx
   1400015b9:	48 8b 05 c0 2d 00 00 	mov    0x2dc0(%rip),%rax        # 140004380 <__fu0__ZSt4cout>
   1400015c0:	48 89 c1             	mov    %rax,%rcx
   1400015c3:	e8 a8 00 00 00       	call   140001670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400015c8:	48 89 c1             	mov    %rax,%rcx
   1400015cb:	48 8b 05 be 2d 00 00 	mov    0x2dbe(%rip),%rax        # 140004390 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400015d2:	48 89 c2             	mov    %rax,%rdx
   1400015d5:	e8 be 00 00 00       	call   140001698 <_ZNSolsEPFRSoS_E>

   1400015da:	b8 00 00 00 00       	mov    $0x0,%eax
   1400015df:	48 83 c4 40          	add    $0x40,%rsp
   1400015e3:	5d                   	pop    %rbp
   1400015e4:	c3                   	ret    

00000001400015e5 <__tcf_0>:
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  ///@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
   1400015e5:	55                   	push   %rbp
   1400015e6:	48 89 e5             	mov    %rsp,%rbp
   1400015e9:	48 83 ec 20          	sub    $0x20,%rsp
   1400015ed:	48 8d 05 4c 5a 00 00 	lea    0x5a4c(%rip),%rax        # 140007040 <_ZStL8__ioinit>
   1400015f4:	48 89 c1             	mov    %rax,%rcx
   1400015f7:	e8 84 00 00 00       	call   140001680 <_ZNSt8ios_base4InitD1Ev>
   1400015fc:	90                   	nop
   1400015fd:	48 83 c4 20          	add    $0x20,%rsp
   140001601:	5d                   	pop    %rbp
   140001602:	c3                   	ret    

0000000140001603 <_Z41__static_initialization_and_destruction_0ii>:
   140001603:	55                   	push   %rbp
   140001604:	48 89 e5             	mov    %rsp,%rbp
   140001607:	48 83 ec 20          	sub    $0x20,%rsp
   14000160b:	89 4d 10             	mov    %ecx,0x10(%rbp)
   14000160e:	89 55 18             	mov    %edx,0x18(%rbp)
   140001611:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
   140001615:	75 27                	jne    14000163e <_Z41__static_initialization_and_destruction_0ii+0x3b>
   140001617:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
   14000161e:	75 1e                	jne    14000163e <_Z41__static_initialization_and_destruction_0ii+0x3b>
   140001620:	48 8d 05 19 5a 00 00 	lea    0x5a19(%rip),%rax        # 140007040 <_ZStL8__ioinit>
   140001627:	48 89 c1             	mov    %rax,%rcx
   14000162a:	e8 59 00 00 00       	call   140001688 <_ZNSt8ios_base4InitC1Ev>
   14000162f:	48 8d 05 af ff ff ff 	lea    -0x51(%rip),%rax        # 1400015e5 <__tcf_0>
   140001636:	48 89 c1             	mov    %rax,%rcx
   140001639:	e8 b2 fe ff ff       	call   1400014f0 <atexit>
   14000163e:	90                   	nop
   14000163f:	48 83 c4 20          	add    $0x20,%rsp
   140001643:	5d                   	pop    %rbp
   140001644:	c3                   	ret    

0000000140001645 <_GLOBAL__sub_I_main>:
   140001645:	55                   	push   %rbp
   140001646:	48 89 e5             	mov    %rsp,%rbp
   140001649:	48 83 ec 20          	sub    $0x20,%rsp
   14000164d:	ba ff ff 00 00       	mov    $0xffff,%edx
   140001652:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001657:	e8 a7 ff ff ff       	call   140001603 <_Z41__static_initialization_and_destruction_0ii>
   14000165c:	90                   	nop
   14000165d:	48 83 c4 20          	add    $0x20,%rsp
   140001661:	5d                   	pop    %rbp
   140001662:	c3                   	ret    
   140001663:	90                   	nop
   140001664:	90                   	nop
   140001665:	90                   	nop
   140001666:	90                   	nop
   140001667:	90                   	nop
   140001668:	90                   	nop
   140001669:	90                   	nop
   14000166a:	90                   	nop
   14000166b:	90                   	nop
   14000166c:	90                   	nop
   14000166d:	90                   	nop
   14000166e:	90                   	nop
   14000166f:	90                   	nop

0000000140001670 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
   140001670:	ff 25 aa 6c 00 00    	jmp    *0x6caa(%rip)        # 140008320 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001676:	90                   	nop
   140001677:	90                   	nop

0000000140001678 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
   140001678:	ff 25 9a 6c 00 00    	jmp    *0x6c9a(%rip)        # 140008318 <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000167e:	90                   	nop
   14000167f:	90                   	nop

0000000140001680 <_ZNSt8ios_base4InitD1Ev>:
   140001680:	ff 25 82 6c 00 00    	jmp    *0x6c82(%rip)        # 140008308 <__imp__ZNSt8ios_base4InitD1Ev>
   140001686:	90                   	nop
   140001687:	90                   	nop

0000000140001688 <_ZNSt8ios_base4InitC1Ev>:
   140001688:	ff 25 72 6c 00 00    	jmp    *0x6c72(%rip)        # 140008300 <__imp__ZNSt8ios_base4InitC1Ev>
   14000168e:	90                   	nop
   14000168f:	90                   	nop

0000000140001690 <_ZNSolsEi>:
   140001690:	ff 25 62 6c 00 00    	jmp    *0x6c62(%rip)        # 1400082f8 <__imp__ZNSolsEi>
   140001696:	90                   	nop
   140001697:	90                   	nop

0000000140001698 <_ZNSolsEPFRSoS_E>:
   140001698:	ff 25 52 6c 00 00    	jmp    *0x6c52(%rip)        # 1400082f0 <__imp__ZNSolsEPFRSoS_E>
   14000169e:	90                   	nop
   14000169f:	90                   	nop

00000001400016a0 <__do_global_dtors>:
   1400016a0:	48 83 ec 28          	sub    $0x28,%rsp
   1400016a4:	48 8b 05 65 19 00 00 	mov    0x1965(%rip),%rax        # 140003010 <p.0>
   1400016ab:	48 8b 00             	mov    (%rax),%rax
   1400016ae:	48 85 c0             	test   %rax,%rax
   1400016b1:	74 22                	je     1400016d5 <__do_global_dtors+0x35>
   1400016b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400016b8:	ff d0                	call   *%rax
   1400016ba:	48 8b 05 4f 19 00 00 	mov    0x194f(%rip),%rax        # 140003010 <p.0>
   1400016c1:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400016c5:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400016c9:	48 89 15 40 19 00 00 	mov    %rdx,0x1940(%rip)        # 140003010 <p.0>
   1400016d0:	48 85 c0             	test   %rax,%rax
   1400016d3:	75 e3                	jne    1400016b8 <__do_global_dtors+0x18>
   1400016d5:	48 83 c4 28          	add    $0x28,%rsp
   1400016d9:	c3                   	ret    
   1400016da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400016e0 <__do_global_ctors>:
   1400016e0:	56                   	push   %rsi
   1400016e1:	53                   	push   %rbx
   1400016e2:	48 83 ec 28          	sub    $0x28,%rsp
   1400016e6:	48 8b 15 b3 2c 00 00 	mov    0x2cb3(%rip),%rdx        # 1400043a0 <.refptr.__CTOR_LIST__>
   1400016ed:	48 8b 02             	mov    (%rdx),%rax
   1400016f0:	89 c1                	mov    %eax,%ecx
   1400016f2:	83 f8 ff             	cmp    $0xffffffff,%eax
   1400016f5:	74 39                	je     140001730 <__do_global_ctors+0x50>
   1400016f7:	85 c9                	test   %ecx,%ecx
   1400016f9:	74 20                	je     14000171b <__do_global_ctors+0x3b>
   1400016fb:	89 c8                	mov    %ecx,%eax
   1400016fd:	83 e9 01             	sub    $0x1,%ecx
   140001700:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140001704:	48 29 c8             	sub    %rcx,%rax
   140001707:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   14000170c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001710:	ff 13                	call   *(%rbx)
   140001712:	48 83 eb 08          	sub    $0x8,%rbx
   140001716:	48 39 f3             	cmp    %rsi,%rbx
   140001719:	75 f5                	jne    140001710 <__do_global_ctors+0x30>
   14000171b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 1400016a0 <__do_global_dtors>
   140001722:	48 83 c4 28          	add    $0x28,%rsp
   140001726:	5b                   	pop    %rbx
   140001727:	5e                   	pop    %rsi
   140001728:	e9 c3 fd ff ff       	jmp    1400014f0 <atexit>
   14000172d:	0f 1f 00             	nopl   (%rax)
   140001730:	31 c0                	xor    %eax,%eax
   140001732:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001738:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000173c:	89 c1                	mov    %eax,%ecx
   14000173e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001743:	4c 89 c0             	mov    %r8,%rax
   140001746:	75 f0                	jne    140001738 <__do_global_ctors+0x58>
   140001748:	eb ad                	jmp    1400016f7 <__do_global_ctors+0x17>
   14000174a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001750 <__main>:
   140001750:	8b 05 fa 58 00 00    	mov    0x58fa(%rip),%eax        # 140007050 <initialized>
   140001756:	85 c0                	test   %eax,%eax
   140001758:	74 06                	je     140001760 <__main+0x10>
   14000175a:	c3                   	ret    
   14000175b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001760:	c7 05 e6 58 00 00 01 	movl   $0x1,0x58e6(%rip)        # 140007050 <initialized>
   140001767:	00 00 00 
   14000176a:	e9 71 ff ff ff       	jmp    1400016e0 <__do_global_ctors>
   14000176f:	90                   	nop

0000000140001770 <_setargv>:
   140001770:	31 c0                	xor    %eax,%eax
   140001772:	c3                   	ret    
   140001773:	90                   	nop
   140001774:	90                   	nop
   140001775:	90                   	nop
   140001776:	90                   	nop
   140001777:	90                   	nop
   140001778:	90                   	nop
   140001779:	90                   	nop
   14000177a:	90                   	nop
   14000177b:	90                   	nop
   14000177c:	90                   	nop
   14000177d:	90                   	nop
   14000177e:	90                   	nop
   14000177f:	90                   	nop

0000000140001780 <__dyn_tls_dtor>:
   140001780:	48 83 ec 28          	sub    $0x28,%rsp
   140001784:	83 fa 03             	cmp    $0x3,%edx
   140001787:	74 17                	je     1400017a0 <__dyn_tls_dtor+0x20>
   140001789:	85 d2                	test   %edx,%edx
   14000178b:	74 13                	je     1400017a0 <__dyn_tls_dtor+0x20>
   14000178d:	b8 01 00 00 00       	mov    $0x1,%eax
   140001792:	48 83 c4 28          	add    $0x28,%rsp
   140001796:	c3                   	ret    
   140001797:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000179e:	00 00 
   1400017a0:	e8 9b 0a 00 00       	call   140002240 <__mingw_TLScallback>
   1400017a5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400017aa:	48 83 c4 28          	add    $0x28,%rsp
   1400017ae:	c3                   	ret    
   1400017af:	90                   	nop

00000001400017b0 <__dyn_tls_init>:
   1400017b0:	56                   	push   %rsi
   1400017b1:	53                   	push   %rbx
   1400017b2:	48 83 ec 28          	sub    $0x28,%rsp
   1400017b6:	48 8b 05 a3 2b 00 00 	mov    0x2ba3(%rip),%rax        # 140004360 <.refptr._CRT_MT>
   1400017bd:	83 38 02             	cmpl   $0x2,(%rax)
   1400017c0:	74 06                	je     1400017c8 <__dyn_tls_init+0x18>
   1400017c2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   1400017c8:	83 fa 02             	cmp    $0x2,%edx
   1400017cb:	74 13                	je     1400017e0 <__dyn_tls_init+0x30>
   1400017cd:	83 fa 01             	cmp    $0x1,%edx
   1400017d0:	74 4e                	je     140001820 <__dyn_tls_init+0x70>
   1400017d2:	b8 01 00 00 00       	mov    $0x1,%eax
   1400017d7:	48 83 c4 28          	add    $0x28,%rsp
   1400017db:	5b                   	pop    %rbx
   1400017dc:	5e                   	pop    %rsi
   1400017dd:	c3                   	ret    
   1400017de:	66 90                	xchg   %ax,%ax
   1400017e0:	48 8d 1d 71 78 00 00 	lea    0x7871(%rip),%rbx        # 140009058 <__xd_z>
   1400017e7:	48 8d 35 6a 78 00 00 	lea    0x786a(%rip),%rsi        # 140009058 <__xd_z>
   1400017ee:	48 39 de             	cmp    %rbx,%rsi
   1400017f1:	74 df                	je     1400017d2 <__dyn_tls_init+0x22>
   1400017f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400017f8:	48 8b 03             	mov    (%rbx),%rax
   1400017fb:	48 85 c0             	test   %rax,%rax
   1400017fe:	74 02                	je     140001802 <__dyn_tls_init+0x52>
   140001800:	ff d0                	call   *%rax
   140001802:	48 83 c3 08          	add    $0x8,%rbx
   140001806:	48 39 de             	cmp    %rbx,%rsi
   140001809:	75 ed                	jne    1400017f8 <__dyn_tls_init+0x48>
   14000180b:	b8 01 00 00 00       	mov    $0x1,%eax
   140001810:	48 83 c4 28          	add    $0x28,%rsp
   140001814:	5b                   	pop    %rbx
   140001815:	5e                   	pop    %rsi
   140001816:	c3                   	ret    
   140001817:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000181e:	00 00 
   140001820:	e8 1b 0a 00 00       	call   140002240 <__mingw_TLScallback>
   140001825:	b8 01 00 00 00       	mov    $0x1,%eax
   14000182a:	48 83 c4 28          	add    $0x28,%rsp
   14000182e:	5b                   	pop    %rbx
   14000182f:	5e                   	pop    %rsi
   140001830:	c3                   	ret    
   140001831:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001838:	00 00 00 00 
   14000183c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001840 <__tlregdtor>:
   140001840:	31 c0                	xor    %eax,%eax
   140001842:	c3                   	ret    
   140001843:	90                   	nop
   140001844:	90                   	nop
   140001845:	90                   	nop
   140001846:	90                   	nop
   140001847:	90                   	nop
   140001848:	90                   	nop
   140001849:	90                   	nop
   14000184a:	90                   	nop
   14000184b:	90                   	nop
   14000184c:	90                   	nop
   14000184d:	90                   	nop
   14000184e:	90                   	nop
   14000184f:	90                   	nop

0000000140001850 <_matherr>:
   140001850:	56                   	push   %rsi
   140001851:	53                   	push   %rbx
   140001852:	48 83 ec 78          	sub    $0x78,%rsp
   140001856:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
   14000185b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
   140001860:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
   140001866:	83 39 06             	cmpl   $0x6,(%rcx)
   140001869:	0f 87 cd 00 00 00    	ja     14000193c <_matherr+0xec>
   14000186f:	8b 01                	mov    (%rcx),%eax
   140001871:	48 8d 15 2c 29 00 00 	lea    0x292c(%rip),%rdx        # 1400041a4 <.rdata+0x124>
   140001878:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000187c:	48 01 d0             	add    %rdx,%rax
   14000187f:	ff e0                	jmp    *%rax
   140001881:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001888:	48 8d 1d 10 28 00 00 	lea    0x2810(%rip),%rbx        # 14000409f <.rdata+0x1f>
   14000188f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140001895:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000189a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000189f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   1400018a3:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400018a8:	e8 f3 0e 00 00       	call   1400027a0 <__acrt_iob_func>
   1400018ad:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   1400018b4:	49 89 d8             	mov    %rbx,%r8
   1400018b7:	48 8d 15 ba 28 00 00 	lea    0x28ba(%rip),%rdx        # 140004178 <.rdata+0xf8>
   1400018be:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400018c4:	48 89 c1             	mov    %rax,%rcx
   1400018c7:	49 89 f1             	mov    %rsi,%r9
   1400018ca:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400018d0:	e8 4b 0f 00 00       	call   140002820 <fprintf>
   1400018d5:	90                   	nop
   1400018d6:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
   1400018db:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
   1400018e0:	31 c0                	xor    %eax,%eax
   1400018e2:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
   1400018e8:	48 83 c4 78          	add    $0x78,%rsp
   1400018ec:	5b                   	pop    %rbx
   1400018ed:	5e                   	pop    %rsi
   1400018ee:	c3                   	ret    
   1400018ef:	90                   	nop
   1400018f0:	48 8d 1d 89 27 00 00 	lea    0x2789(%rip),%rbx        # 140004080 <.rdata>
   1400018f7:	eb 96                	jmp    14000188f <_matherr+0x3f>
   1400018f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001900:	48 8d 1d d9 27 00 00 	lea    0x27d9(%rip),%rbx        # 1400040e0 <.rdata+0x60>
   140001907:	eb 86                	jmp    14000188f <_matherr+0x3f>
   140001909:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001910:	48 8d 1d a9 27 00 00 	lea    0x27a9(%rip),%rbx        # 1400040c0 <.rdata+0x40>
   140001917:	e9 73 ff ff ff       	jmp    14000188f <_matherr+0x3f>
   14000191c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001920:	48 8d 1d 09 28 00 00 	lea    0x2809(%rip),%rbx        # 140004130 <.rdata+0xb0>
   140001927:	e9 63 ff ff ff       	jmp    14000188f <_matherr+0x3f>
   14000192c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001930:	48 8d 1d d1 27 00 00 	lea    0x27d1(%rip),%rbx        # 140004108 <.rdata+0x88>
   140001937:	e9 53 ff ff ff       	jmp    14000188f <_matherr+0x3f>
   14000193c:	48 8d 1d 23 28 00 00 	lea    0x2823(%rip),%rbx        # 140004166 <.rdata+0xe6>
   140001943:	e9 47 ff ff ff       	jmp    14000188f <_matherr+0x3f>
   140001948:	90                   	nop
   140001949:	90                   	nop
   14000194a:	90                   	nop
   14000194b:	90                   	nop
   14000194c:	90                   	nop
   14000194d:	90                   	nop
   14000194e:	90                   	nop
   14000194f:	90                   	nop

0000000140001950 <_fpreset>:
   140001950:	db e3                	fninit 
   140001952:	c3                   	ret    
   140001953:	90                   	nop
   140001954:	90                   	nop
   140001955:	90                   	nop
   140001956:	90                   	nop
   140001957:	90                   	nop
   140001958:	90                   	nop
   140001959:	90                   	nop
   14000195a:	90                   	nop
   14000195b:	90                   	nop
   14000195c:	90                   	nop
   14000195d:	90                   	nop
   14000195e:	90                   	nop
   14000195f:	90                   	nop

0000000140001960 <__report_error>:
   140001960:	41 54                	push   %r12
   140001962:	53                   	push   %rbx
   140001963:	48 83 ec 38          	sub    $0x38,%rsp
   140001967:	49 89 cc             	mov    %rcx,%r12
   14000196a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000196f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001974:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001979:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000197e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001983:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001988:	e8 13 0e 00 00       	call   1400027a0 <__acrt_iob_func>
   14000198d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140001993:	ba 01 00 00 00       	mov    $0x1,%edx
   140001998:	48 8d 0d 21 28 00 00 	lea    0x2821(%rip),%rcx        # 1400041c0 <.rdata>
   14000199f:	49 89 c1             	mov    %rax,%r9
   1400019a2:	e8 89 0e 00 00       	call   140002830 <fwrite>
   1400019a7:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   1400019ac:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400019b1:	e8 ea 0d 00 00       	call   1400027a0 <__acrt_iob_func>
   1400019b6:	4c 89 e2             	mov    %r12,%rdx
   1400019b9:	48 89 c1             	mov    %rax,%rcx
   1400019bc:	49 89 d8             	mov    %rbx,%r8
   1400019bf:	e8 9c 0e 00 00       	call   140002860 <vfprintf>
   1400019c4:	e8 3f 0e 00 00       	call   140002808 <abort>
   1400019c9:	90                   	nop
   1400019ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400019d0 <mark_section_writable>:
   1400019d0:	41 54                	push   %r12
   1400019d2:	56                   	push   %rsi
   1400019d3:	53                   	push   %rbx
   1400019d4:	48 83 ec 50          	sub    $0x50,%rsp
   1400019d8:	48 63 1d d5 56 00 00 	movslq 0x56d5(%rip),%rbx        # 1400070b4 <maxSections>
   1400019df:	49 89 cc             	mov    %rcx,%r12
   1400019e2:	85 db                	test   %ebx,%ebx
   1400019e4:	0f 8e 16 01 00 00    	jle    140001b00 <mark_section_writable+0x130>
   1400019ea:	48 8b 05 c7 56 00 00 	mov    0x56c7(%rip),%rax        # 1400070b8 <the_secs>
   1400019f1:	45 31 c9             	xor    %r9d,%r9d
   1400019f4:	48 83 c0 18          	add    $0x18,%rax
   1400019f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400019ff:	00 
   140001a00:	4c 8b 00             	mov    (%rax),%r8
   140001a03:	4d 39 e0             	cmp    %r12,%r8
   140001a06:	77 13                	ja     140001a1b <mark_section_writable+0x4b>
   140001a08:	48 8b 50 08          	mov    0x8(%rax),%rdx
   140001a0c:	8b 52 08             	mov    0x8(%rdx),%edx
   140001a0f:	49 01 d0             	add    %rdx,%r8
   140001a12:	4d 39 c4             	cmp    %r8,%r12
   140001a15:	0f 82 8a 00 00 00    	jb     140001aa5 <mark_section_writable+0xd5>
   140001a1b:	41 83 c1 01          	add    $0x1,%r9d
   140001a1f:	48 83 c0 28          	add    $0x28,%rax
   140001a23:	41 39 d9             	cmp    %ebx,%r9d
   140001a26:	75 d8                	jne    140001a00 <mark_section_writable+0x30>
   140001a28:	4c 89 e1             	mov    %r12,%rcx
   140001a2b:	e8 20 0a 00 00       	call   140002450 <__mingw_GetSectionForAddress>
   140001a30:	48 89 c6             	mov    %rax,%rsi
   140001a33:	48 85 c0             	test   %rax,%rax
   140001a36:	0f 84 e6 00 00 00    	je     140001b22 <mark_section_writable+0x152>
   140001a3c:	48 8b 05 75 56 00 00 	mov    0x5675(%rip),%rax        # 1400070b8 <the_secs>
   140001a43:	48 8d 1c 9b          	lea    (%rbx,%rbx,4),%rbx
   140001a47:	48 c1 e3 03          	shl    $0x3,%rbx
   140001a4b:	48 01 d8             	add    %rbx,%rax
   140001a4e:	48 89 70 20          	mov    %rsi,0x20(%rax)
   140001a52:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001a58:	e8 23 0b 00 00       	call   140002580 <_GetPEImageBase>
   140001a5d:	8b 56 0c             	mov    0xc(%rsi),%edx
   140001a60:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001a66:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   140001a6a:	48 8b 05 47 56 00 00 	mov    0x5647(%rip),%rax        # 1400070b8 <the_secs>
   140001a71:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001a76:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   140001a7b:	ff 15 8f 67 00 00    	call   *0x678f(%rip)        # 140008210 <__imp_VirtualQuery>
   140001a81:	48 85 c0             	test   %rax,%rax
   140001a84:	0f 84 7d 00 00 00    	je     140001b07 <mark_section_writable+0x137>
   140001a8a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   140001a8e:	8d 50 c0             	lea    -0x40(%rax),%edx
   140001a91:	83 e2 bf             	and    $0xffffffbf,%edx
   140001a94:	74 08                	je     140001a9e <mark_section_writable+0xce>
   140001a96:	8d 50 fc             	lea    -0x4(%rax),%edx
   140001a99:	83 e2 fb             	and    $0xfffffffb,%edx
   140001a9c:	75 12                	jne    140001ab0 <mark_section_writable+0xe0>
   140001a9e:	83 05 0f 56 00 00 01 	addl   $0x1,0x560f(%rip)        # 1400070b4 <maxSections>
   140001aa5:	48 83 c4 50          	add    $0x50,%rsp
   140001aa9:	5b                   	pop    %rbx
   140001aaa:	5e                   	pop    %rsi
   140001aab:	41 5c                	pop    %r12
   140001aad:	c3                   	ret    
   140001aae:	66 90                	xchg   %ax,%ax
   140001ab0:	83 f8 02             	cmp    $0x2,%eax
   140001ab3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001ab8:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   140001abd:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001ac3:	b8 40 00 00 00       	mov    $0x40,%eax
   140001ac8:	44 0f 45 c0          	cmovne %eax,%r8d
   140001acc:	48 03 1d e5 55 00 00 	add    0x55e5(%rip),%rbx        # 1400070b8 <the_secs>
   140001ad3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140001ad7:	49 89 d9             	mov    %rbx,%r9
   140001ada:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   140001ade:	ff 15 24 67 00 00    	call   *0x6724(%rip)        # 140008208 <__imp_VirtualProtect>
   140001ae4:	85 c0                	test   %eax,%eax
   140001ae6:	75 b6                	jne    140001a9e <mark_section_writable+0xce>
   140001ae8:	ff 15 e2 66 00 00    	call   *0x66e2(%rip)        # 1400081d0 <__imp_GetLastError>
   140001aee:	48 8d 0d 43 27 00 00 	lea    0x2743(%rip),%rcx        # 140004238 <.rdata+0x78>
   140001af5:	89 c2                	mov    %eax,%edx
   140001af7:	e8 64 fe ff ff       	call   140001960 <__report_error>
   140001afc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001b00:	31 db                	xor    %ebx,%ebx
   140001b02:	e9 21 ff ff ff       	jmp    140001a28 <mark_section_writable+0x58>
   140001b07:	48 8b 05 aa 55 00 00 	mov    0x55aa(%rip),%rax        # 1400070b8 <the_secs>
   140001b0e:	8b 56 08             	mov    0x8(%rsi),%edx
   140001b11:	48 8d 0d e8 26 00 00 	lea    0x26e8(%rip),%rcx        # 140004200 <.rdata+0x40>
   140001b18:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   140001b1d:	e8 3e fe ff ff       	call   140001960 <__report_error>
   140001b22:	4c 89 e2             	mov    %r12,%rdx
   140001b25:	48 8d 0d b4 26 00 00 	lea    0x26b4(%rip),%rcx        # 1400041e0 <.rdata+0x20>
   140001b2c:	e8 2f fe ff ff       	call   140001960 <__report_error>
   140001b31:	90                   	nop
   140001b32:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001b39:	00 00 00 00 
   140001b3d:	0f 1f 00             	nopl   (%rax)

0000000140001b40 <_pei386_runtime_relocator>:
   140001b40:	55                   	push   %rbp
   140001b41:	41 57                	push   %r15
   140001b43:	41 56                	push   %r14
   140001b45:	41 55                	push   %r13
   140001b47:	41 54                	push   %r12
   140001b49:	57                   	push   %rdi
   140001b4a:	56                   	push   %rsi
   140001b4b:	53                   	push   %rbx
   140001b4c:	48 83 ec 48          	sub    $0x48,%rsp
   140001b50:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140001b55:	8b 35 55 55 00 00    	mov    0x5555(%rip),%esi        # 1400070b0 <was_init.0>
   140001b5b:	85 f6                	test   %esi,%esi
   140001b5d:	74 11                	je     140001b70 <_pei386_runtime_relocator+0x30>
   140001b5f:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140001b63:	5b                   	pop    %rbx
   140001b64:	5e                   	pop    %rsi
   140001b65:	5f                   	pop    %rdi
   140001b66:	41 5c                	pop    %r12
   140001b68:	41 5d                	pop    %r13
   140001b6a:	41 5e                	pop    %r14
   140001b6c:	41 5f                	pop    %r15
   140001b6e:	5d                   	pop    %rbp
   140001b6f:	c3                   	ret    
   140001b70:	c7 05 36 55 00 00 01 	movl   $0x1,0x5536(%rip)        # 1400070b0 <was_init.0>
   140001b77:	00 00 00 
   140001b7a:	e8 51 09 00 00       	call   1400024d0 <__mingw_GetSectionCount>
   140001b7f:	48 98                	cltq   
   140001b81:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001b85:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140001b8c:	00 
   140001b8d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001b91:	e8 7a 0b 00 00       	call   140002710 <___chkstk_ms>
   140001b96:	48 8b 3d 13 28 00 00 	mov    0x2813(%rip),%rdi        # 1400043b0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001b9d:	48 8b 1d 1c 28 00 00 	mov    0x281c(%rip),%rbx        # 1400043c0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001ba4:	c7 05 06 55 00 00 00 	movl   $0x0,0x5506(%rip)        # 1400070b4 <maxSections>
   140001bab:	00 00 00 
   140001bae:	48 29 c4             	sub    %rax,%rsp
   140001bb1:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140001bb6:	48 89 05 fb 54 00 00 	mov    %rax,0x54fb(%rip)        # 1400070b8 <the_secs>
   140001bbd:	48 89 f8             	mov    %rdi,%rax
   140001bc0:	48 29 d8             	sub    %rbx,%rax
   140001bc3:	48 83 f8 07          	cmp    $0x7,%rax
   140001bc7:	7e 96                	jle    140001b5f <_pei386_runtime_relocator+0x1f>
   140001bc9:	8b 13                	mov    (%rbx),%edx
   140001bcb:	48 83 f8 0b          	cmp    $0xb,%rax
   140001bcf:	0f 8f 83 01 00 00    	jg     140001d58 <_pei386_runtime_relocator+0x218>
   140001bd5:	8b 03                	mov    (%rbx),%eax
   140001bd7:	85 c0                	test   %eax,%eax
   140001bd9:	0f 85 29 02 00 00    	jne    140001e08 <_pei386_runtime_relocator+0x2c8>
   140001bdf:	8b 43 04             	mov    0x4(%rbx),%eax
   140001be2:	85 c0                	test   %eax,%eax
   140001be4:	0f 85 1e 02 00 00    	jne    140001e08 <_pei386_runtime_relocator+0x2c8>
   140001bea:	8b 53 08             	mov    0x8(%rbx),%edx
   140001bed:	83 fa 01             	cmp    $0x1,%edx
   140001bf0:	0f 85 72 02 00 00    	jne    140001e68 <_pei386_runtime_relocator+0x328>
   140001bf6:	48 83 c3 0c          	add    $0xc,%rbx
   140001bfa:	48 39 fb             	cmp    %rdi,%rbx
   140001bfd:	0f 83 5c ff ff ff    	jae    140001b5f <_pei386_runtime_relocator+0x1f>
   140001c03:	4c 8b 3d d6 27 00 00 	mov    0x27d6(%rip),%r15        # 1400043e0 <.refptr.__image_base__>
   140001c0a:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
   140001c11:	ff ff ff 
   140001c14:	eb 5d                	jmp    140001c73 <_pei386_runtime_relocator+0x133>
   140001c16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001c1d:	00 00 00 
   140001c20:	41 0f b6 06          	movzbl (%r14),%eax
   140001c24:	49 89 c3             	mov    %rax,%r11
   140001c27:	49 81 cb 00 ff ff ff 	or     $0xffffffffffffff00,%r11
   140001c2e:	84 c0                	test   %al,%al
   140001c30:	49 0f 48 c3          	cmovs  %r11,%rax
   140001c34:	48 29 c8             	sub    %rcx,%rax
   140001c37:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140001c3e:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140001c42:	75 17                	jne    140001c5b <_pei386_runtime_relocator+0x11b>
   140001c44:	49 83 fd 80          	cmp    $0xffffffffffffff80,%r13
   140001c48:	0f 8c 06 02 00 00    	jl     140001e54 <_pei386_runtime_relocator+0x314>
   140001c4e:	49 81 fd ff 00 00 00 	cmp    $0xff,%r13
   140001c55:	0f 8f f9 01 00 00    	jg     140001e54 <_pei386_runtime_relocator+0x314>
   140001c5b:	4c 89 f1             	mov    %r14,%rcx
   140001c5e:	e8 6d fd ff ff       	call   1400019d0 <mark_section_writable>
   140001c63:	45 88 2e             	mov    %r13b,(%r14)
   140001c66:	48 83 c3 0c          	add    $0xc,%rbx
   140001c6a:	48 39 fb             	cmp    %rdi,%rbx
   140001c6d:	0f 83 8d 00 00 00    	jae    140001d00 <_pei386_runtime_relocator+0x1c0>
   140001c73:	8b 0b                	mov    (%rbx),%ecx
   140001c75:	44 8b 43 08          	mov    0x8(%rbx),%r8d
   140001c79:	44 8b 73 04          	mov    0x4(%rbx),%r14d
   140001c7d:	4c 01 f9             	add    %r15,%rcx
   140001c80:	41 0f b6 d0          	movzbl %r8b,%edx
   140001c84:	4c 8b 09             	mov    (%rcx),%r9
   140001c87:	4d 01 fe             	add    %r15,%r14
   140001c8a:	83 fa 20             	cmp    $0x20,%edx
   140001c8d:	0f 84 25 01 00 00    	je     140001db8 <_pei386_runtime_relocator+0x278>
   140001c93:	0f 87 e7 00 00 00    	ja     140001d80 <_pei386_runtime_relocator+0x240>
   140001c99:	83 fa 08             	cmp    $0x8,%edx
   140001c9c:	74 82                	je     140001c20 <_pei386_runtime_relocator+0xe0>
   140001c9e:	83 fa 10             	cmp    $0x10,%edx
   140001ca1:	0f 85 a1 01 00 00    	jne    140001e48 <_pei386_runtime_relocator+0x308>
   140001ca7:	41 0f b7 06          	movzwl (%r14),%eax
   140001cab:	49 89 c3             	mov    %rax,%r11
   140001cae:	49 81 cb 00 00 ff ff 	or     $0xffffffffffff0000,%r11
   140001cb5:	66 85 c0             	test   %ax,%ax
   140001cb8:	49 0f 48 c3          	cmovs  %r11,%rax
   140001cbc:	48 29 c8             	sub    %rcx,%rax
   140001cbf:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140001cc6:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140001cca:	75 1a                	jne    140001ce6 <_pei386_runtime_relocator+0x1a6>
   140001ccc:	49 81 fd 00 80 ff ff 	cmp    $0xffffffffffff8000,%r13
   140001cd3:	0f 8c 7b 01 00 00    	jl     140001e54 <_pei386_runtime_relocator+0x314>
   140001cd9:	49 81 fd ff ff 00 00 	cmp    $0xffff,%r13
   140001ce0:	0f 8f 6e 01 00 00    	jg     140001e54 <_pei386_runtime_relocator+0x314>
   140001ce6:	4c 89 f1             	mov    %r14,%rcx
   140001ce9:	48 83 c3 0c          	add    $0xc,%rbx
   140001ced:	e8 de fc ff ff       	call   1400019d0 <mark_section_writable>
   140001cf2:	66 45 89 2e          	mov    %r13w,(%r14)
   140001cf6:	48 39 fb             	cmp    %rdi,%rbx
   140001cf9:	0f 82 74 ff ff ff    	jb     140001c73 <_pei386_runtime_relocator+0x133>
   140001cff:	90                   	nop
   140001d00:	8b 15 ae 53 00 00    	mov    0x53ae(%rip),%edx        # 1400070b4 <maxSections>
   140001d06:	85 d2                	test   %edx,%edx
   140001d08:	0f 8e 51 fe ff ff    	jle    140001b5f <_pei386_runtime_relocator+0x1f>
   140001d0e:	48 8b 3d f3 64 00 00 	mov    0x64f3(%rip),%rdi        # 140008208 <__imp_VirtualProtect>
   140001d15:	31 db                	xor    %ebx,%ebx
   140001d17:	4c 8d 65 fc          	lea    -0x4(%rbp),%r12
   140001d1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001d20:	48 8b 05 91 53 00 00 	mov    0x5391(%rip),%rax        # 1400070b8 <the_secs>
   140001d27:	48 01 d8             	add    %rbx,%rax
   140001d2a:	44 8b 00             	mov    (%rax),%r8d
   140001d2d:	45 85 c0             	test   %r8d,%r8d
   140001d30:	74 0d                	je     140001d3f <_pei386_runtime_relocator+0x1ff>
   140001d32:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001d36:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001d3a:	4d 89 e1             	mov    %r12,%r9
   140001d3d:	ff d7                	call   *%rdi
   140001d3f:	83 c6 01             	add    $0x1,%esi
   140001d42:	48 83 c3 28          	add    $0x28,%rbx
   140001d46:	3b 35 68 53 00 00    	cmp    0x5368(%rip),%esi        # 1400070b4 <maxSections>
   140001d4c:	7c d2                	jl     140001d20 <_pei386_runtime_relocator+0x1e0>
   140001d4e:	e9 0c fe ff ff       	jmp    140001b5f <_pei386_runtime_relocator+0x1f>
   140001d53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001d58:	85 d2                	test   %edx,%edx
   140001d5a:	0f 85 a8 00 00 00    	jne    140001e08 <_pei386_runtime_relocator+0x2c8>
   140001d60:	8b 43 04             	mov    0x4(%rbx),%eax
   140001d63:	89 c2                	mov    %eax,%edx
   140001d65:	0b 53 08             	or     0x8(%rbx),%edx
   140001d68:	0f 85 74 fe ff ff    	jne    140001be2 <_pei386_runtime_relocator+0xa2>
   140001d6e:	48 83 c3 0c          	add    $0xc,%rbx
   140001d72:	e9 5e fe ff ff       	jmp    140001bd5 <_pei386_runtime_relocator+0x95>
   140001d77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001d7e:	00 00 
   140001d80:	83 fa 40             	cmp    $0x40,%edx
   140001d83:	0f 85 bf 00 00 00    	jne    140001e48 <_pei386_runtime_relocator+0x308>
   140001d89:	49 8b 06             	mov    (%r14),%rax
   140001d8c:	48 29 c8             	sub    %rcx,%rax
   140001d8f:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140001d96:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140001d9a:	75 09                	jne    140001da5 <_pei386_runtime_relocator+0x265>
   140001d9c:	4d 85 ed             	test   %r13,%r13
   140001d9f:	0f 89 af 00 00 00    	jns    140001e54 <_pei386_runtime_relocator+0x314>
   140001da5:	4c 89 f1             	mov    %r14,%rcx
   140001da8:	e8 23 fc ff ff       	call   1400019d0 <mark_section_writable>
   140001dad:	4d 89 2e             	mov    %r13,(%r14)
   140001db0:	e9 b1 fe ff ff       	jmp    140001c66 <_pei386_runtime_relocator+0x126>
   140001db5:	0f 1f 00             	nopl   (%rax)
   140001db8:	41 8b 06             	mov    (%r14),%eax
   140001dbb:	49 89 c2             	mov    %rax,%r10
   140001dbe:	4c 09 e0             	or     %r12,%rax
   140001dc1:	45 85 d2             	test   %r10d,%r10d
   140001dc4:	49 0f 49 c2          	cmovns %r10,%rax
   140001dc8:	48 29 c8             	sub    %rcx,%rax
   140001dcb:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140001dd2:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140001dd6:	75 19                	jne    140001df1 <_pei386_runtime_relocator+0x2b1>
   140001dd8:	48 b8 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rax
   140001ddf:	ff ff ff 
   140001de2:	49 39 c5             	cmp    %rax,%r13
   140001de5:	7e 6d                	jle    140001e54 <_pei386_runtime_relocator+0x314>
   140001de7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001dec:	49 39 c5             	cmp    %rax,%r13
   140001def:	7f 63                	jg     140001e54 <_pei386_runtime_relocator+0x314>
   140001df1:	4c 89 f1             	mov    %r14,%rcx
   140001df4:	e8 d7 fb ff ff       	call   1400019d0 <mark_section_writable>
   140001df9:	45 89 2e             	mov    %r13d,(%r14)
   140001dfc:	e9 65 fe ff ff       	jmp    140001c66 <_pei386_runtime_relocator+0x126>
   140001e01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001e08:	48 39 fb             	cmp    %rdi,%rbx
   140001e0b:	0f 83 4e fd ff ff    	jae    140001b5f <_pei386_runtime_relocator+0x1f>
   140001e11:	4c 8b 35 c8 25 00 00 	mov    0x25c8(%rip),%r14        # 1400043e0 <.refptr.__image_base__>
   140001e18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001e1f:	00 
   140001e20:	44 8b 63 04          	mov    0x4(%rbx),%r12d
   140001e24:	44 8b 2b             	mov    (%rbx),%r13d
   140001e27:	48 83 c3 08          	add    $0x8,%rbx
   140001e2b:	4d 01 f4             	add    %r14,%r12
   140001e2e:	45 03 2c 24          	add    (%r12),%r13d
   140001e32:	4c 89 e1             	mov    %r12,%rcx
   140001e35:	e8 96 fb ff ff       	call   1400019d0 <mark_section_writable>
   140001e3a:	45 89 2c 24          	mov    %r13d,(%r12)
   140001e3e:	48 39 fb             	cmp    %rdi,%rbx
   140001e41:	72 dd                	jb     140001e20 <_pei386_runtime_relocator+0x2e0>
   140001e43:	e9 b8 fe ff ff       	jmp    140001d00 <_pei386_runtime_relocator+0x1c0>
   140001e48:	48 8d 0d 49 24 00 00 	lea    0x2449(%rip),%rcx        # 140004298 <.rdata+0xd8>
   140001e4f:	e8 0c fb ff ff       	call   140001960 <__report_error>
   140001e54:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
   140001e59:	4d 89 f0             	mov    %r14,%r8
   140001e5c:	48 8d 0d 65 24 00 00 	lea    0x2465(%rip),%rcx        # 1400042c8 <.rdata+0x108>
   140001e63:	e8 f8 fa ff ff       	call   140001960 <__report_error>
   140001e68:	48 8d 0d f1 23 00 00 	lea    0x23f1(%rip),%rcx        # 140004260 <.rdata+0xa0>
   140001e6f:	e8 ec fa ff ff       	call   140001960 <__report_error>
   140001e74:	90                   	nop
   140001e75:	90                   	nop
   140001e76:	90                   	nop
   140001e77:	90                   	nop
   140001e78:	90                   	nop
   140001e79:	90                   	nop
   140001e7a:	90                   	nop
   140001e7b:	90                   	nop
   140001e7c:	90                   	nop
   140001e7d:	90                   	nop
   140001e7e:	90                   	nop
   140001e7f:	90                   	nop

0000000140001e80 <__mingw_raise_matherr>:
   140001e80:	48 83 ec 58          	sub    $0x58,%rsp
   140001e84:	48 8b 05 35 52 00 00 	mov    0x5235(%rip),%rax        # 1400070c0 <stUserMathErr>
   140001e8b:	48 85 c0             	test   %rax,%rax
   140001e8e:	74 2c                	je     140001ebc <__mingw_raise_matherr+0x3c>
   140001e90:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001e97:	00 00 
   140001e99:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001e9d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001ea2:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001ea7:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
   140001ead:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
   140001eb3:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001eb9:	ff d0                	call   *%rax
   140001ebb:	90                   	nop
   140001ebc:	48 83 c4 58          	add    $0x58,%rsp
   140001ec0:	c3                   	ret    
   140001ec1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001ec8:	00 00 00 00 
   140001ecc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001ed0 <__mingw_setusermatherr>:
   140001ed0:	48 89 0d e9 51 00 00 	mov    %rcx,0x51e9(%rip)        # 1400070c0 <stUserMathErr>
   140001ed7:	e9 04 09 00 00       	jmp    1400027e0 <__setusermatherr>
   140001edc:	90                   	nop
   140001edd:	90                   	nop
   140001ede:	90                   	nop
   140001edf:	90                   	nop

0000000140001ee0 <_gnu_exception_handler>:
   140001ee0:	41 54                	push   %r12
   140001ee2:	48 83 ec 20          	sub    $0x20,%rsp
   140001ee6:	48 8b 11             	mov    (%rcx),%rdx
   140001ee9:	8b 02                	mov    (%rdx),%eax
   140001eeb:	49 89 cc             	mov    %rcx,%r12
   140001eee:	89 c1                	mov    %eax,%ecx
   140001ef0:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001ef6:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001efc:	0f 84 be 00 00 00    	je     140001fc0 <_gnu_exception_handler+0xe0>
   140001f02:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001f07:	0f 87 9a 00 00 00    	ja     140001fa7 <_gnu_exception_handler+0xc7>
   140001f0d:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001f12:	76 44                	jbe    140001f58 <_gnu_exception_handler+0x78>
   140001f14:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001f19:	83 f8 09             	cmp    $0x9,%eax
   140001f1c:	77 2a                	ja     140001f48 <_gnu_exception_handler+0x68>
   140001f1e:	48 8d 15 fb 23 00 00 	lea    0x23fb(%rip),%rdx        # 140004320 <.rdata>
   140001f25:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001f29:	48 01 d0             	add    %rdx,%rax
   140001f2c:	ff e0                	jmp    *%rax
   140001f2e:	66 90                	xchg   %ax,%ax
   140001f30:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f35:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f3a:	e8 09 09 00 00       	call   140002848 <signal>
   140001f3f:	e8 0c fa ff ff       	call   140001950 <_fpreset>
   140001f44:	0f 1f 40 00          	nopl   0x0(%rax)
   140001f48:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001f4d:	48 83 c4 20          	add    $0x20,%rsp
   140001f51:	41 5c                	pop    %r12
   140001f53:	c3                   	ret    
   140001f54:	0f 1f 40 00          	nopl   0x0(%rax)
   140001f58:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001f5d:	0f 84 dd 00 00 00    	je     140002040 <_gnu_exception_handler+0x160>
   140001f63:	76 3b                	jbe    140001fa0 <_gnu_exception_handler+0xc0>
   140001f65:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001f6a:	74 dc                	je     140001f48 <_gnu_exception_handler+0x68>
   140001f6c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001f71:	75 34                	jne    140001fa7 <_gnu_exception_handler+0xc7>
   140001f73:	31 d2                	xor    %edx,%edx
   140001f75:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001f7a:	e8 c9 08 00 00       	call   140002848 <signal>
   140001f7f:	48 83 f8 01          	cmp    $0x1,%rax
   140001f83:	0f 84 e3 00 00 00    	je     14000206c <_gnu_exception_handler+0x18c>
   140001f89:	48 85 c0             	test   %rax,%rax
   140001f8c:	74 19                	je     140001fa7 <_gnu_exception_handler+0xc7>
   140001f8e:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001f93:	ff d0                	call   *%rax
   140001f95:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001f9a:	eb b1                	jmp    140001f4d <_gnu_exception_handler+0x6d>
   140001f9c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001fa0:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001fa5:	74 a1                	je     140001f48 <_gnu_exception_handler+0x68>
   140001fa7:	48 8b 05 32 51 00 00 	mov    0x5132(%rip),%rax        # 1400070e0 <__mingw_oldexcpt_handler>
   140001fae:	48 85 c0             	test   %rax,%rax
   140001fb1:	74 1d                	je     140001fd0 <_gnu_exception_handler+0xf0>
   140001fb3:	4c 89 e1             	mov    %r12,%rcx
   140001fb6:	48 83 c4 20          	add    $0x20,%rsp
   140001fba:	41 5c                	pop    %r12
   140001fbc:	48 ff e0             	rex.W jmp *%rax
   140001fbf:	90                   	nop
   140001fc0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001fc4:	0f 85 38 ff ff ff    	jne    140001f02 <_gnu_exception_handler+0x22>
   140001fca:	e9 79 ff ff ff       	jmp    140001f48 <_gnu_exception_handler+0x68>
   140001fcf:	90                   	nop
   140001fd0:	31 c0                	xor    %eax,%eax
   140001fd2:	48 83 c4 20          	add    $0x20,%rsp
   140001fd6:	41 5c                	pop    %r12
   140001fd8:	c3                   	ret    
   140001fd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001fe0:	31 d2                	xor    %edx,%edx
   140001fe2:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001fe7:	e8 5c 08 00 00       	call   140002848 <signal>
   140001fec:	48 83 f8 01          	cmp    $0x1,%rax
   140001ff0:	0f 84 3a ff ff ff    	je     140001f30 <_gnu_exception_handler+0x50>
   140001ff6:	48 85 c0             	test   %rax,%rax
   140001ff9:	74 ac                	je     140001fa7 <_gnu_exception_handler+0xc7>
   140001ffb:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002000:	ff d0                	call   *%rax
   140002002:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002007:	e9 41 ff ff ff       	jmp    140001f4d <_gnu_exception_handler+0x6d>
   14000200c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002010:	31 d2                	xor    %edx,%edx
   140002012:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002017:	e8 2c 08 00 00       	call   140002848 <signal>
   14000201c:	48 83 f8 01          	cmp    $0x1,%rax
   140002020:	75 d4                	jne    140001ff6 <_gnu_exception_handler+0x116>
   140002022:	ba 01 00 00 00       	mov    $0x1,%edx
   140002027:	b9 08 00 00 00       	mov    $0x8,%ecx
   14000202c:	e8 17 08 00 00       	call   140002848 <signal>
   140002031:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002036:	e9 12 ff ff ff       	jmp    140001f4d <_gnu_exception_handler+0x6d>
   14000203b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002040:	31 d2                	xor    %edx,%edx
   140002042:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002047:	e8 fc 07 00 00       	call   140002848 <signal>
   14000204c:	48 83 f8 01          	cmp    $0x1,%rax
   140002050:	74 31                	je     140002083 <_gnu_exception_handler+0x1a3>
   140002052:	48 85 c0             	test   %rax,%rax
   140002055:	0f 84 4c ff ff ff    	je     140001fa7 <_gnu_exception_handler+0xc7>
   14000205b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002060:	ff d0                	call   *%rax
   140002062:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002067:	e9 e1 fe ff ff       	jmp    140001f4d <_gnu_exception_handler+0x6d>
   14000206c:	ba 01 00 00 00       	mov    $0x1,%edx
   140002071:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002076:	e8 cd 07 00 00       	call   140002848 <signal>
   14000207b:	83 c8 ff             	or     $0xffffffff,%eax
   14000207e:	e9 ca fe ff ff       	jmp    140001f4d <_gnu_exception_handler+0x6d>
   140002083:	ba 01 00 00 00       	mov    $0x1,%edx
   140002088:	b9 0b 00 00 00       	mov    $0xb,%ecx
   14000208d:	e8 b6 07 00 00       	call   140002848 <signal>
   140002092:	83 c8 ff             	or     $0xffffffff,%eax
   140002095:	e9 b3 fe ff ff       	jmp    140001f4d <_gnu_exception_handler+0x6d>
   14000209a:	90                   	nop
   14000209b:	90                   	nop
   14000209c:	90                   	nop
   14000209d:	90                   	nop
   14000209e:	90                   	nop
   14000209f:	90                   	nop

00000001400020a0 <__mingwthr_run_key_dtors.part.0>:
   1400020a0:	41 55                	push   %r13
   1400020a2:	41 54                	push   %r12
   1400020a4:	57                   	push   %rdi
   1400020a5:	56                   	push   %rsi
   1400020a6:	53                   	push   %rbx
   1400020a7:	48 83 ec 20          	sub    $0x20,%rsp
   1400020ab:	4c 8d 2d 6e 50 00 00 	lea    0x506e(%rip),%r13        # 140007120 <__mingwthr_cs>
   1400020b2:	4c 89 e9             	mov    %r13,%rcx
   1400020b5:	ff 15 0d 61 00 00    	call   *0x610d(%rip)        # 1400081c8 <__imp_EnterCriticalSection>
   1400020bb:	48 8b 1d 3e 50 00 00 	mov    0x503e(%rip),%rbx        # 140007100 <key_dtor_list>
   1400020c2:	48 85 db             	test   %rbx,%rbx
   1400020c5:	74 35                	je     1400020fc <__mingwthr_run_key_dtors.part.0+0x5c>
   1400020c7:	48 8b 3d 32 61 00 00 	mov    0x6132(%rip),%rdi        # 140008200 <__imp_TlsGetValue>
   1400020ce:	48 8b 35 fb 60 00 00 	mov    0x60fb(%rip),%rsi        # 1400081d0 <__imp_GetLastError>
   1400020d5:	0f 1f 00             	nopl   (%rax)
   1400020d8:	8b 0b                	mov    (%rbx),%ecx
   1400020da:	ff d7                	call   *%rdi
   1400020dc:	49 89 c4             	mov    %rax,%r12
   1400020df:	ff d6                	call   *%rsi
   1400020e1:	85 c0                	test   %eax,%eax
   1400020e3:	75 0e                	jne    1400020f3 <__mingwthr_run_key_dtors.part.0+0x53>
   1400020e5:	4d 85 e4             	test   %r12,%r12
   1400020e8:	74 09                	je     1400020f3 <__mingwthr_run_key_dtors.part.0+0x53>
   1400020ea:	48 8b 43 08          	mov    0x8(%rbx),%rax
   1400020ee:	4c 89 e1             	mov    %r12,%rcx
   1400020f1:	ff d0                	call   *%rax
   1400020f3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   1400020f7:	48 85 db             	test   %rbx,%rbx
   1400020fa:	75 dc                	jne    1400020d8 <__mingwthr_run_key_dtors.part.0+0x38>
   1400020fc:	4c 89 e9             	mov    %r13,%rcx
   1400020ff:	48 83 c4 20          	add    $0x20,%rsp
   140002103:	5b                   	pop    %rbx
   140002104:	5e                   	pop    %rsi
   140002105:	5f                   	pop    %rdi
   140002106:	41 5c                	pop    %r12
   140002108:	41 5d                	pop    %r13
   14000210a:	48 ff 25 d7 60 00 00 	rex.W jmp *0x60d7(%rip)        # 1400081e8 <__imp_LeaveCriticalSection>
   140002111:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002118:	00 00 00 00 
   14000211c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002120 <___w64_mingwthr_add_key_dtor>:
   140002120:	41 54                	push   %r12
   140002122:	57                   	push   %rdi
   140002123:	56                   	push   %rsi
   140002124:	53                   	push   %rbx
   140002125:	48 83 ec 28          	sub    $0x28,%rsp
   140002129:	8b 05 d9 4f 00 00    	mov    0x4fd9(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   14000212f:	89 cf                	mov    %ecx,%edi
   140002131:	48 89 d6             	mov    %rdx,%rsi
   140002134:	85 c0                	test   %eax,%eax
   140002136:	75 10                	jne    140002148 <___w64_mingwthr_add_key_dtor+0x28>
   140002138:	48 83 c4 28          	add    $0x28,%rsp
   14000213c:	5b                   	pop    %rbx
   14000213d:	5e                   	pop    %rsi
   14000213e:	5f                   	pop    %rdi
   14000213f:	41 5c                	pop    %r12
   140002141:	c3                   	ret    
   140002142:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002148:	ba 18 00 00 00       	mov    $0x18,%edx
   14000214d:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002152:	e8 b9 06 00 00       	call   140002810 <calloc>
   140002157:	48 89 c3             	mov    %rax,%rbx
   14000215a:	48 85 c0             	test   %rax,%rax
   14000215d:	74 3d                	je     14000219c <___w64_mingwthr_add_key_dtor+0x7c>
   14000215f:	4c 8d 25 ba 4f 00 00 	lea    0x4fba(%rip),%r12        # 140007120 <__mingwthr_cs>
   140002166:	89 38                	mov    %edi,(%rax)
   140002168:	48 89 70 08          	mov    %rsi,0x8(%rax)
   14000216c:	4c 89 e1             	mov    %r12,%rcx
   14000216f:	ff 15 53 60 00 00    	call   *0x6053(%rip)        # 1400081c8 <__imp_EnterCriticalSection>
   140002175:	48 8b 05 84 4f 00 00 	mov    0x4f84(%rip),%rax        # 140007100 <key_dtor_list>
   14000217c:	4c 89 e1             	mov    %r12,%rcx
   14000217f:	48 89 1d 7a 4f 00 00 	mov    %rbx,0x4f7a(%rip)        # 140007100 <key_dtor_list>
   140002186:	48 89 43 10          	mov    %rax,0x10(%rbx)
   14000218a:	ff 15 58 60 00 00    	call   *0x6058(%rip)        # 1400081e8 <__imp_LeaveCriticalSection>
   140002190:	31 c0                	xor    %eax,%eax
   140002192:	48 83 c4 28          	add    $0x28,%rsp
   140002196:	5b                   	pop    %rbx
   140002197:	5e                   	pop    %rsi
   140002198:	5f                   	pop    %rdi
   140002199:	41 5c                	pop    %r12
   14000219b:	c3                   	ret    
   14000219c:	83 c8 ff             	or     $0xffffffff,%eax
   14000219f:	eb 97                	jmp    140002138 <___w64_mingwthr_add_key_dtor+0x18>
   1400021a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400021a8:	00 00 00 00 
   1400021ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400021b0 <___w64_mingwthr_remove_key_dtor>:
   1400021b0:	41 54                	push   %r12
   1400021b2:	53                   	push   %rbx
   1400021b3:	48 83 ec 28          	sub    $0x28,%rsp
   1400021b7:	8b 05 4b 4f 00 00    	mov    0x4f4b(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   1400021bd:	89 cb                	mov    %ecx,%ebx
   1400021bf:	85 c0                	test   %eax,%eax
   1400021c1:	75 0d                	jne    1400021d0 <___w64_mingwthr_remove_key_dtor+0x20>
   1400021c3:	31 c0                	xor    %eax,%eax
   1400021c5:	48 83 c4 28          	add    $0x28,%rsp
   1400021c9:	5b                   	pop    %rbx
   1400021ca:	41 5c                	pop    %r12
   1400021cc:	c3                   	ret    
   1400021cd:	0f 1f 00             	nopl   (%rax)
   1400021d0:	4c 8d 25 49 4f 00 00 	lea    0x4f49(%rip),%r12        # 140007120 <__mingwthr_cs>
   1400021d7:	4c 89 e1             	mov    %r12,%rcx
   1400021da:	ff 15 e8 5f 00 00    	call   *0x5fe8(%rip)        # 1400081c8 <__imp_EnterCriticalSection>
   1400021e0:	48 8b 0d 19 4f 00 00 	mov    0x4f19(%rip),%rcx        # 140007100 <key_dtor_list>
   1400021e7:	48 85 c9             	test   %rcx,%rcx
   1400021ea:	74 27                	je     140002213 <___w64_mingwthr_remove_key_dtor+0x63>
   1400021ec:	31 d2                	xor    %edx,%edx
   1400021ee:	eb 0b                	jmp    1400021fb <___w64_mingwthr_remove_key_dtor+0x4b>
   1400021f0:	48 89 ca             	mov    %rcx,%rdx
   1400021f3:	48 85 c0             	test   %rax,%rax
   1400021f6:	74 1b                	je     140002213 <___w64_mingwthr_remove_key_dtor+0x63>
   1400021f8:	48 89 c1             	mov    %rax,%rcx
   1400021fb:	8b 01                	mov    (%rcx),%eax
   1400021fd:	39 d8                	cmp    %ebx,%eax
   1400021ff:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002203:	75 eb                	jne    1400021f0 <___w64_mingwthr_remove_key_dtor+0x40>
   140002205:	48 85 d2             	test   %rdx,%rdx
   140002208:	74 26                	je     140002230 <___w64_mingwthr_remove_key_dtor+0x80>
   14000220a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   14000220e:	e8 15 06 00 00       	call   140002828 <free>
   140002213:	4c 89 e1             	mov    %r12,%rcx
   140002216:	ff 15 cc 5f 00 00    	call   *0x5fcc(%rip)        # 1400081e8 <__imp_LeaveCriticalSection>
   14000221c:	31 c0                	xor    %eax,%eax
   14000221e:	48 83 c4 28          	add    $0x28,%rsp
   140002222:	5b                   	pop    %rbx
   140002223:	41 5c                	pop    %r12
   140002225:	c3                   	ret    
   140002226:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000222d:	00 00 00 
   140002230:	48 89 05 c9 4e 00 00 	mov    %rax,0x4ec9(%rip)        # 140007100 <key_dtor_list>
   140002237:	eb d5                	jmp    14000220e <___w64_mingwthr_remove_key_dtor+0x5e>
   140002239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002240 <__mingw_TLScallback>:
   140002240:	53                   	push   %rbx
   140002241:	48 83 ec 20          	sub    $0x20,%rsp
   140002245:	83 fa 02             	cmp    $0x2,%edx
   140002248:	74 46                	je     140002290 <__mingw_TLScallback+0x50>
   14000224a:	77 2c                	ja     140002278 <__mingw_TLScallback+0x38>
   14000224c:	85 d2                	test   %edx,%edx
   14000224e:	74 50                	je     1400022a0 <__mingw_TLScallback+0x60>
   140002250:	8b 05 b2 4e 00 00    	mov    0x4eb2(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   140002256:	85 c0                	test   %eax,%eax
   140002258:	0f 84 b2 00 00 00    	je     140002310 <__mingw_TLScallback+0xd0>
   14000225e:	c7 05 a0 4e 00 00 01 	movl   $0x1,0x4ea0(%rip)        # 140007108 <__mingwthr_cs_init>
   140002265:	00 00 00 
   140002268:	b8 01 00 00 00       	mov    $0x1,%eax
   14000226d:	48 83 c4 20          	add    $0x20,%rsp
   140002271:	5b                   	pop    %rbx
   140002272:	c3                   	ret    
   140002273:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002278:	83 fa 03             	cmp    $0x3,%edx
   14000227b:	75 eb                	jne    140002268 <__mingw_TLScallback+0x28>
   14000227d:	8b 05 85 4e 00 00    	mov    0x4e85(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   140002283:	85 c0                	test   %eax,%eax
   140002285:	74 e1                	je     140002268 <__mingw_TLScallback+0x28>
   140002287:	e8 14 fe ff ff       	call   1400020a0 <__mingwthr_run_key_dtors.part.0>
   14000228c:	eb da                	jmp    140002268 <__mingw_TLScallback+0x28>
   14000228e:	66 90                	xchg   %ax,%ax
   140002290:	e8 bb f6 ff ff       	call   140001950 <_fpreset>
   140002295:	b8 01 00 00 00       	mov    $0x1,%eax
   14000229a:	48 83 c4 20          	add    $0x20,%rsp
   14000229e:	5b                   	pop    %rbx
   14000229f:	c3                   	ret    
   1400022a0:	8b 05 62 4e 00 00    	mov    0x4e62(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   1400022a6:	85 c0                	test   %eax,%eax
   1400022a8:	75 56                	jne    140002300 <__mingw_TLScallback+0xc0>
   1400022aa:	8b 05 58 4e 00 00    	mov    0x4e58(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   1400022b0:	83 f8 01             	cmp    $0x1,%eax
   1400022b3:	75 b3                	jne    140002268 <__mingw_TLScallback+0x28>
   1400022b5:	48 8b 1d 44 4e 00 00 	mov    0x4e44(%rip),%rbx        # 140007100 <key_dtor_list>
   1400022bc:	48 85 db             	test   %rbx,%rbx
   1400022bf:	74 18                	je     1400022d9 <__mingw_TLScallback+0x99>
   1400022c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400022c8:	48 89 d9             	mov    %rbx,%rcx
   1400022cb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   1400022cf:	e8 54 05 00 00       	call   140002828 <free>
   1400022d4:	48 85 db             	test   %rbx,%rbx
   1400022d7:	75 ef                	jne    1400022c8 <__mingw_TLScallback+0x88>
   1400022d9:	48 8d 0d 40 4e 00 00 	lea    0x4e40(%rip),%rcx        # 140007120 <__mingwthr_cs>
   1400022e0:	48 c7 05 15 4e 00 00 	movq   $0x0,0x4e15(%rip)        # 140007100 <key_dtor_list>
   1400022e7:	00 00 00 00 
   1400022eb:	c7 05 13 4e 00 00 00 	movl   $0x0,0x4e13(%rip)        # 140007108 <__mingwthr_cs_init>
   1400022f2:	00 00 00 
   1400022f5:	ff 15 c5 5e 00 00    	call   *0x5ec5(%rip)        # 1400081c0 <__IAT_start__>
   1400022fb:	e9 68 ff ff ff       	jmp    140002268 <__mingw_TLScallback+0x28>
   140002300:	e8 9b fd ff ff       	call   1400020a0 <__mingwthr_run_key_dtors.part.0>
   140002305:	eb a3                	jmp    1400022aa <__mingw_TLScallback+0x6a>
   140002307:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000230e:	00 00 
   140002310:	48 8d 0d 09 4e 00 00 	lea    0x4e09(%rip),%rcx        # 140007120 <__mingwthr_cs>
   140002317:	ff 15 c3 5e 00 00    	call   *0x5ec3(%rip)        # 1400081e0 <__imp_InitializeCriticalSection>
   14000231d:	e9 3c ff ff ff       	jmp    14000225e <__mingw_TLScallback+0x1e>
   140002322:	90                   	nop
   140002323:	90                   	nop
   140002324:	90                   	nop
   140002325:	90                   	nop
   140002326:	90                   	nop
   140002327:	90                   	nop
   140002328:	90                   	nop
   140002329:	90                   	nop
   14000232a:	90                   	nop
   14000232b:	90                   	nop
   14000232c:	90                   	nop
   14000232d:	90                   	nop
   14000232e:	90                   	nop
   14000232f:	90                   	nop

0000000140002330 <_ValidateImageBase>:
   140002330:	31 c0                	xor    %eax,%eax
   140002332:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002337:	75 0f                	jne    140002348 <_ValidateImageBase+0x18>
   140002339:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   14000233d:	48 01 d1             	add    %rdx,%rcx
   140002340:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002346:	74 08                	je     140002350 <_ValidateImageBase+0x20>
   140002348:	c3                   	ret    
   140002349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002350:	31 c0                	xor    %eax,%eax
   140002352:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002358:	0f 94 c0             	sete   %al
   14000235b:	c3                   	ret    
   14000235c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002360 <_FindPESection>:
   140002360:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002364:	48 01 c1             	add    %rax,%rcx
   140002367:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000236b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002370:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   140002374:	85 c9                	test   %ecx,%ecx
   140002376:	74 2d                	je     1400023a5 <_FindPESection+0x45>
   140002378:	83 e9 01             	sub    $0x1,%ecx
   14000237b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   14000237f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002384:	0f 1f 40 00          	nopl   0x0(%rax)
   140002388:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   14000238c:	4c 89 c1             	mov    %r8,%rcx
   14000238f:	49 39 d0             	cmp    %rdx,%r8
   140002392:	77 08                	ja     14000239c <_FindPESection+0x3c>
   140002394:	03 48 08             	add    0x8(%rax),%ecx
   140002397:	48 39 d1             	cmp    %rdx,%rcx
   14000239a:	77 0b                	ja     1400023a7 <_FindPESection+0x47>
   14000239c:	48 83 c0 28          	add    $0x28,%rax
   1400023a0:	4c 39 c8             	cmp    %r9,%rax
   1400023a3:	75 e3                	jne    140002388 <_FindPESection+0x28>
   1400023a5:	31 c0                	xor    %eax,%eax
   1400023a7:	c3                   	ret    
   1400023a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400023af:	00 

00000001400023b0 <_FindPESectionByName>:
   1400023b0:	41 54                	push   %r12
   1400023b2:	56                   	push   %rsi
   1400023b3:	53                   	push   %rbx
   1400023b4:	48 83 ec 20          	sub    $0x20,%rsp
   1400023b8:	48 89 cb             	mov    %rcx,%rbx
   1400023bb:	e8 90 04 00 00       	call   140002850 <strlen>
   1400023c0:	48 83 f8 08          	cmp    $0x8,%rax
   1400023c4:	77 7a                	ja     140002440 <_FindPESectionByName+0x90>
   1400023c6:	48 8b 15 13 20 00 00 	mov    0x2013(%rip),%rdx        # 1400043e0 <.refptr.__image_base__>
   1400023cd:	45 31 e4             	xor    %r12d,%r12d
   1400023d0:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400023d5:	75 57                	jne    14000242e <_FindPESectionByName+0x7e>
   1400023d7:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   1400023db:	48 01 d0             	add    %rdx,%rax
   1400023de:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400023e4:	75 48                	jne    14000242e <_FindPESectionByName+0x7e>
   1400023e6:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400023ec:	75 40                	jne    14000242e <_FindPESectionByName+0x7e>
   1400023ee:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   1400023f2:	4c 8d 64 10 18       	lea    0x18(%rax,%rdx,1),%r12
   1400023f7:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   1400023fb:	85 c0                	test   %eax,%eax
   1400023fd:	74 41                	je     140002440 <_FindPESectionByName+0x90>
   1400023ff:	83 e8 01             	sub    $0x1,%eax
   140002402:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002406:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   14000240b:	eb 0c                	jmp    140002419 <_FindPESectionByName+0x69>
   14000240d:	0f 1f 00             	nopl   (%rax)
   140002410:	49 83 c4 28          	add    $0x28,%r12
   140002414:	49 39 f4             	cmp    %rsi,%r12
   140002417:	74 27                	je     140002440 <_FindPESectionByName+0x90>
   140002419:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000241f:	48 89 da             	mov    %rbx,%rdx
   140002422:	4c 89 e1             	mov    %r12,%rcx
   140002425:	e8 2e 04 00 00       	call   140002858 <strncmp>
   14000242a:	85 c0                	test   %eax,%eax
   14000242c:	75 e2                	jne    140002410 <_FindPESectionByName+0x60>
   14000242e:	4c 89 e0             	mov    %r12,%rax
   140002431:	48 83 c4 20          	add    $0x20,%rsp
   140002435:	5b                   	pop    %rbx
   140002436:	5e                   	pop    %rsi
   140002437:	41 5c                	pop    %r12
   140002439:	c3                   	ret    
   14000243a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002440:	45 31 e4             	xor    %r12d,%r12d
   140002443:	4c 89 e0             	mov    %r12,%rax
   140002446:	48 83 c4 20          	add    $0x20,%rsp
   14000244a:	5b                   	pop    %rbx
   14000244b:	5e                   	pop    %rsi
   14000244c:	41 5c                	pop    %r12
   14000244e:	c3                   	ret    
   14000244f:	90                   	nop

0000000140002450 <__mingw_GetSectionForAddress>:
   140002450:	48 8b 15 89 1f 00 00 	mov    0x1f89(%rip),%rdx        # 1400043e0 <.refptr.__image_base__>
   140002457:	31 c0                	xor    %eax,%eax
   140002459:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000245e:	75 10                	jne    140002470 <__mingw_GetSectionForAddress+0x20>
   140002460:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002464:	49 01 d0             	add    %rdx,%r8
   140002467:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000246e:	74 08                	je     140002478 <__mingw_GetSectionForAddress+0x28>
   140002470:	c3                   	ret    
   140002471:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002478:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000247f:	75 ef                	jne    140002470 <__mingw_GetSectionForAddress+0x20>
   140002481:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140002486:	48 29 d1             	sub    %rdx,%rcx
   140002489:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
   14000248e:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   140002493:	85 d2                	test   %edx,%edx
   140002495:	74 2e                	je     1400024c5 <__mingw_GetSectionForAddress+0x75>
   140002497:	83 ea 01             	sub    $0x1,%edx
   14000249a:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000249e:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   1400024a3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400024a8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400024ac:	4c 89 c2             	mov    %r8,%rdx
   1400024af:	4c 39 c1             	cmp    %r8,%rcx
   1400024b2:	72 08                	jb     1400024bc <__mingw_GetSectionForAddress+0x6c>
   1400024b4:	03 50 08             	add    0x8(%rax),%edx
   1400024b7:	48 39 d1             	cmp    %rdx,%rcx
   1400024ba:	72 b4                	jb     140002470 <__mingw_GetSectionForAddress+0x20>
   1400024bc:	48 83 c0 28          	add    $0x28,%rax
   1400024c0:	4c 39 c8             	cmp    %r9,%rax
   1400024c3:	75 e3                	jne    1400024a8 <__mingw_GetSectionForAddress+0x58>
   1400024c5:	31 c0                	xor    %eax,%eax
   1400024c7:	c3                   	ret    
   1400024c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400024cf:	00 

00000001400024d0 <__mingw_GetSectionCount>:
   1400024d0:	48 8b 05 09 1f 00 00 	mov    0x1f09(%rip),%rax        # 1400043e0 <.refptr.__image_base__>
   1400024d7:	45 31 c0             	xor    %r8d,%r8d
   1400024da:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400024df:	75 0f                	jne    1400024f0 <__mingw_GetSectionCount+0x20>
   1400024e1:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   1400024e5:	48 01 d0             	add    %rdx,%rax
   1400024e8:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400024ee:	74 08                	je     1400024f8 <__mingw_GetSectionCount+0x28>
   1400024f0:	44 89 c0             	mov    %r8d,%eax
   1400024f3:	c3                   	ret    
   1400024f4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400024f8:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400024fe:	75 f0                	jne    1400024f0 <__mingw_GetSectionCount+0x20>
   140002500:	44 0f b7 40 06       	movzwl 0x6(%rax),%r8d
   140002505:	44 89 c0             	mov    %r8d,%eax
   140002508:	c3                   	ret    
   140002509:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002510 <_FindPESectionExec>:
   140002510:	4c 8b 05 c9 1e 00 00 	mov    0x1ec9(%rip),%r8        # 1400043e0 <.refptr.__image_base__>
   140002517:	31 c0                	xor    %eax,%eax
   140002519:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   14000251f:	75 0f                	jne    140002530 <_FindPESectionExec+0x20>
   140002521:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002525:	4c 01 c2             	add    %r8,%rdx
   140002528:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000252e:	74 08                	je     140002538 <_FindPESectionExec+0x28>
   140002530:	c3                   	ret    
   140002531:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002538:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000253e:	75 f0                	jne    140002530 <_FindPESectionExec+0x20>
   140002540:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002544:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140002549:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
   14000254d:	85 d2                	test   %edx,%edx
   14000254f:	74 27                	je     140002578 <_FindPESectionExec+0x68>
   140002551:	83 ea 01             	sub    $0x1,%edx
   140002554:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002558:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   14000255d:	0f 1f 00             	nopl   (%rax)
   140002560:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   140002564:	74 09                	je     14000256f <_FindPESectionExec+0x5f>
   140002566:	48 85 c9             	test   %rcx,%rcx
   140002569:	74 c5                	je     140002530 <_FindPESectionExec+0x20>
   14000256b:	48 83 e9 01          	sub    $0x1,%rcx
   14000256f:	48 83 c0 28          	add    $0x28,%rax
   140002573:	48 39 d0             	cmp    %rdx,%rax
   140002576:	75 e8                	jne    140002560 <_FindPESectionExec+0x50>
   140002578:	31 c0                	xor    %eax,%eax
   14000257a:	c3                   	ret    
   14000257b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140002580 <_GetPEImageBase>:
   140002580:	48 8b 05 59 1e 00 00 	mov    0x1e59(%rip),%rax        # 1400043e0 <.refptr.__image_base__>
   140002587:	45 31 c0             	xor    %r8d,%r8d
   14000258a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000258f:	75 0f                	jne    1400025a0 <_GetPEImageBase+0x20>
   140002591:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002595:	48 01 c2             	add    %rax,%rdx
   140002598:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000259e:	74 08                	je     1400025a8 <_GetPEImageBase+0x28>
   1400025a0:	4c 89 c0             	mov    %r8,%rax
   1400025a3:	c3                   	ret    
   1400025a4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400025a8:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   1400025ae:	4c 0f 44 c0          	cmove  %rax,%r8
   1400025b2:	4c 89 c0             	mov    %r8,%rax
   1400025b5:	c3                   	ret    
   1400025b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400025bd:	00 00 00 

00000001400025c0 <_IsNonwritableInCurrentImage>:
   1400025c0:	48 8b 15 19 1e 00 00 	mov    0x1e19(%rip),%rdx        # 1400043e0 <.refptr.__image_base__>
   1400025c7:	31 c0                	xor    %eax,%eax
   1400025c9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400025ce:	75 10                	jne    1400025e0 <_IsNonwritableInCurrentImage+0x20>
   1400025d0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400025d4:	49 01 d0             	add    %rdx,%r8
   1400025d7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400025de:	74 08                	je     1400025e8 <_IsNonwritableInCurrentImage+0x28>
   1400025e0:	c3                   	ret    
   1400025e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400025e8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400025ef:	75 ef                	jne    1400025e0 <_IsNonwritableInCurrentImage+0x20>
   1400025f1:	48 29 d1             	sub    %rdx,%rcx
   1400025f4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400025f9:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400025fe:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002603:	45 85 c0             	test   %r8d,%r8d
   140002606:	74 d8                	je     1400025e0 <_IsNonwritableInCurrentImage+0x20>
   140002608:	41 8d 40 ff          	lea    -0x1(%r8),%eax
   14000260c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002610:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140002615:	0f 1f 00             	nopl   (%rax)
   140002618:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   14000261c:	4c 89 c0             	mov    %r8,%rax
   14000261f:	4c 39 c1             	cmp    %r8,%rcx
   140002622:	72 08                	jb     14000262c <_IsNonwritableInCurrentImage+0x6c>
   140002624:	03 42 08             	add    0x8(%rdx),%eax
   140002627:	48 39 c1             	cmp    %rax,%rcx
   14000262a:	72 14                	jb     140002640 <_IsNonwritableInCurrentImage+0x80>
   14000262c:	48 83 c2 28          	add    $0x28,%rdx
   140002630:	4c 39 ca             	cmp    %r9,%rdx
   140002633:	75 e3                	jne    140002618 <_IsNonwritableInCurrentImage+0x58>
   140002635:	31 c0                	xor    %eax,%eax
   140002637:	c3                   	ret    
   140002638:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000263f:	00 
   140002640:	8b 42 24             	mov    0x24(%rdx),%eax
   140002643:	f7 d0                	not    %eax
   140002645:	c1 e8 1f             	shr    $0x1f,%eax
   140002648:	c3                   	ret    
   140002649:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002650 <__mingw_enum_import_library_names>:
   140002650:	4c 8b 1d 89 1d 00 00 	mov    0x1d89(%rip),%r11        # 1400043e0 <.refptr.__image_base__>
   140002657:	45 31 c9             	xor    %r9d,%r9d
   14000265a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002660:	75 10                	jne    140002672 <__mingw_enum_import_library_names+0x22>
   140002662:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140002666:	4d 01 d8             	add    %r11,%r8
   140002669:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002670:	74 0e                	je     140002680 <__mingw_enum_import_library_names+0x30>
   140002672:	4c 89 c8             	mov    %r9,%rax
   140002675:	c3                   	ret    
   140002676:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000267d:	00 00 00 
   140002680:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002687:	75 e9                	jne    140002672 <__mingw_enum_import_library_names+0x22>
   140002689:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140002690:	85 c0                	test   %eax,%eax
   140002692:	74 de                	je     140002672 <__mingw_enum_import_library_names+0x22>
   140002694:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002699:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   14000269e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   1400026a3:	45 85 c0             	test   %r8d,%r8d
   1400026a6:	74 ca                	je     140002672 <__mingw_enum_import_library_names+0x22>
   1400026a8:	41 83 e8 01          	sub    $0x1,%r8d
   1400026ac:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   1400026b0:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   1400026b5:	0f 1f 00             	nopl   (%rax)
   1400026b8:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   1400026bc:	4d 89 c8             	mov    %r9,%r8
   1400026bf:	4c 39 c8             	cmp    %r9,%rax
   1400026c2:	72 09                	jb     1400026cd <__mingw_enum_import_library_names+0x7d>
   1400026c4:	44 03 42 08          	add    0x8(%rdx),%r8d
   1400026c8:	4c 39 c0             	cmp    %r8,%rax
   1400026cb:	72 13                	jb     1400026e0 <__mingw_enum_import_library_names+0x90>
   1400026cd:	48 83 c2 28          	add    $0x28,%rdx
   1400026d1:	49 39 d2             	cmp    %rdx,%r10
   1400026d4:	75 e2                	jne    1400026b8 <__mingw_enum_import_library_names+0x68>
   1400026d6:	45 31 c9             	xor    %r9d,%r9d
   1400026d9:	4c 89 c8             	mov    %r9,%rax
   1400026dc:	c3                   	ret    
   1400026dd:	0f 1f 00             	nopl   (%rax)
   1400026e0:	4c 01 d8             	add    %r11,%rax
   1400026e3:	eb 0a                	jmp    1400026ef <__mingw_enum_import_library_names+0x9f>
   1400026e5:	0f 1f 00             	nopl   (%rax)
   1400026e8:	83 e9 01             	sub    $0x1,%ecx
   1400026eb:	48 83 c0 14          	add    $0x14,%rax
   1400026ef:	44 8b 40 04          	mov    0x4(%rax),%r8d
   1400026f3:	45 85 c0             	test   %r8d,%r8d
   1400026f6:	75 07                	jne    1400026ff <__mingw_enum_import_library_names+0xaf>
   1400026f8:	8b 50 0c             	mov    0xc(%rax),%edx
   1400026fb:	85 d2                	test   %edx,%edx
   1400026fd:	74 d7                	je     1400026d6 <__mingw_enum_import_library_names+0x86>
   1400026ff:	85 c9                	test   %ecx,%ecx
   140002701:	7f e5                	jg     1400026e8 <__mingw_enum_import_library_names+0x98>
   140002703:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   140002707:	4d 01 d9             	add    %r11,%r9
   14000270a:	4c 89 c8             	mov    %r9,%rax
   14000270d:	c3                   	ret    
   14000270e:	90                   	nop
   14000270f:	90                   	nop

0000000140002710 <___chkstk_ms>:
   140002710:	51                   	push   %rcx
   140002711:	50                   	push   %rax
   140002712:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002718:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000271d:	72 19                	jb     140002738 <___chkstk_ms+0x28>
   14000271f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002726:	48 83 09 00          	orq    $0x0,(%rcx)
   14000272a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002730:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002736:	77 e7                	ja     14000271f <___chkstk_ms+0xf>
   140002738:	48 29 c1             	sub    %rax,%rcx
   14000273b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000273f:	58                   	pop    %rax
   140002740:	59                   	pop    %rcx
   140002741:	c3                   	ret    
   140002742:	90                   	nop
   140002743:	90                   	nop
   140002744:	90                   	nop
   140002745:	90                   	nop
   140002746:	90                   	nop
   140002747:	90                   	nop
   140002748:	90                   	nop
   140002749:	90                   	nop
   14000274a:	90                   	nop
   14000274b:	90                   	nop
   14000274c:	90                   	nop
   14000274d:	90                   	nop
   14000274e:	90                   	nop
   14000274f:	90                   	nop

0000000140002750 <__p__fmode>:
   140002750:	48 8b 05 c9 1c 00 00 	mov    0x1cc9(%rip),%rax        # 140004420 <.refptr.__imp__fmode>
   140002757:	48 8b 00             	mov    (%rax),%rax
   14000275a:	c3                   	ret    
   14000275b:	90                   	nop
   14000275c:	90                   	nop
   14000275d:	90                   	nop
   14000275e:	90                   	nop
   14000275f:	90                   	nop

0000000140002760 <__p__commode>:
   140002760:	48 8b 05 a9 1c 00 00 	mov    0x1ca9(%rip),%rax        # 140004410 <.refptr.__imp__commode>
   140002767:	48 8b 00             	mov    (%rax),%rax
   14000276a:	c3                   	ret    
   14000276b:	90                   	nop
   14000276c:	90                   	nop
   14000276d:	90                   	nop
   14000276e:	90                   	nop
   14000276f:	90                   	nop

0000000140002770 <__p__acmdln>:
   140002770:	48 8b 05 89 1c 00 00 	mov    0x1c89(%rip),%rax        # 140004400 <.refptr.__imp__acmdln>
   140002777:	48 8b 00             	mov    (%rax),%rax
   14000277a:	c3                   	ret    
   14000277b:	90                   	nop
   14000277c:	90                   	nop
   14000277d:	90                   	nop
   14000277e:	90                   	nop
   14000277f:	90                   	nop

0000000140002780 <_get_invalid_parameter_handler>:
   140002780:	48 8b 05 09 4a 00 00 	mov    0x4a09(%rip),%rax        # 140007190 <handler>
   140002787:	c3                   	ret    
   140002788:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000278f:	00 

0000000140002790 <_set_invalid_parameter_handler>:
   140002790:	48 89 c8             	mov    %rcx,%rax
   140002793:	48 87 05 f6 49 00 00 	xchg   %rax,0x49f6(%rip)        # 140007190 <handler>
   14000279a:	c3                   	ret    
   14000279b:	90                   	nop
   14000279c:	90                   	nop
   14000279d:	90                   	nop
   14000279e:	90                   	nop
   14000279f:	90                   	nop

00000001400027a0 <__acrt_iob_func>:
   1400027a0:	53                   	push   %rbx
   1400027a1:	48 83 ec 20          	sub    $0x20,%rsp
   1400027a5:	89 cb                	mov    %ecx,%ebx
   1400027a7:	e8 24 00 00 00       	call   1400027d0 <__iob_func>
   1400027ac:	89 d9                	mov    %ebx,%ecx
   1400027ae:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   1400027b2:	48 c1 e2 04          	shl    $0x4,%rdx
   1400027b6:	48 01 d0             	add    %rdx,%rax
   1400027b9:	48 83 c4 20          	add    $0x20,%rsp
   1400027bd:	5b                   	pop    %rbx
   1400027be:	c3                   	ret    
   1400027bf:	90                   	nop

00000001400027c0 <__C_specific_handler>:
   1400027c0:	ff 25 5a 5a 00 00    	jmp    *0x5a5a(%rip)        # 140008220 <__imp___C_specific_handler>
   1400027c6:	90                   	nop
   1400027c7:	90                   	nop

00000001400027c8 <__getmainargs>:
   1400027c8:	ff 25 5a 5a 00 00    	jmp    *0x5a5a(%rip)        # 140008228 <__imp___getmainargs>
   1400027ce:	90                   	nop
   1400027cf:	90                   	nop

00000001400027d0 <__iob_func>:
   1400027d0:	ff 25 62 5a 00 00    	jmp    *0x5a62(%rip)        # 140008238 <__imp___iob_func>
   1400027d6:	90                   	nop
   1400027d7:	90                   	nop

00000001400027d8 <__set_app_type>:
   1400027d8:	ff 25 62 5a 00 00    	jmp    *0x5a62(%rip)        # 140008240 <__imp___set_app_type>
   1400027de:	90                   	nop
   1400027df:	90                   	nop

00000001400027e0 <__setusermatherr>:
   1400027e0:	ff 25 62 5a 00 00    	jmp    *0x5a62(%rip)        # 140008248 <__imp___setusermatherr>
   1400027e6:	90                   	nop
   1400027e7:	90                   	nop

00000001400027e8 <_amsg_exit>:
   1400027e8:	ff 25 6a 5a 00 00    	jmp    *0x5a6a(%rip)        # 140008258 <__imp__amsg_exit>
   1400027ee:	90                   	nop
   1400027ef:	90                   	nop

00000001400027f0 <_cexit>:
   1400027f0:	ff 25 6a 5a 00 00    	jmp    *0x5a6a(%rip)        # 140008260 <__imp__cexit>
   1400027f6:	90                   	nop
   1400027f7:	90                   	nop

00000001400027f8 <_initterm>:
   1400027f8:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 140008278 <__imp__initterm>
   1400027fe:	90                   	nop
   1400027ff:	90                   	nop

0000000140002800 <_onexit>:
   140002800:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 140008280 <__imp__onexit>
   140002806:	90                   	nop
   140002807:	90                   	nop

0000000140002808 <abort>:
   140002808:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 140008288 <__imp_abort>
   14000280e:	90                   	nop
   14000280f:	90                   	nop

0000000140002810 <calloc>:
   140002810:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 140008290 <__imp_calloc>
   140002816:	90                   	nop
   140002817:	90                   	nop

0000000140002818 <exit>:
   140002818:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 140008298 <__imp_exit>
   14000281e:	90                   	nop
   14000281f:	90                   	nop

0000000140002820 <fprintf>:
   140002820:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 1400082a0 <__imp_fprintf>
   140002826:	90                   	nop
   140002827:	90                   	nop

0000000140002828 <free>:
   140002828:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 1400082a8 <__imp_free>
   14000282e:	90                   	nop
   14000282f:	90                   	nop

0000000140002830 <fwrite>:
   140002830:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 1400082b0 <__imp_fwrite>
   140002836:	90                   	nop
   140002837:	90                   	nop

0000000140002838 <malloc>:
   140002838:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 1400082b8 <__imp_malloc>
   14000283e:	90                   	nop
   14000283f:	90                   	nop

0000000140002840 <memcpy>:
   140002840:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 1400082c0 <__imp_memcpy>
   140002846:	90                   	nop
   140002847:	90                   	nop

0000000140002848 <signal>:
   140002848:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 1400082c8 <__imp_signal>
   14000284e:	90                   	nop
   14000284f:	90                   	nop

0000000140002850 <strlen>:
   140002850:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 1400082d0 <__imp_strlen>
   140002856:	90                   	nop
   140002857:	90                   	nop

0000000140002858 <strncmp>:
   140002858:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 1400082d8 <__imp_strncmp>
   14000285e:	90                   	nop
   14000285f:	90                   	nop

0000000140002860 <vfprintf>:
   140002860:	ff 25 7a 5a 00 00    	jmp    *0x5a7a(%rip)        # 1400082e0 <__imp_vfprintf>
   140002866:	90                   	nop
   140002867:	90                   	nop
   140002868:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000286f:	00 

0000000140002870 <VirtualQuery>:
   140002870:	ff 25 9a 59 00 00    	jmp    *0x599a(%rip)        # 140008210 <__imp_VirtualQuery>
   140002876:	90                   	nop
   140002877:	90                   	nop

0000000140002878 <VirtualProtect>:
   140002878:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 140008208 <__imp_VirtualProtect>
   14000287e:	90                   	nop
   14000287f:	90                   	nop

0000000140002880 <TlsGetValue>:
   140002880:	ff 25 7a 59 00 00    	jmp    *0x597a(%rip)        # 140008200 <__imp_TlsGetValue>
   140002886:	90                   	nop
   140002887:	90                   	nop

0000000140002888 <Sleep>:
   140002888:	ff 25 6a 59 00 00    	jmp    *0x596a(%rip)        # 1400081f8 <__imp_Sleep>
   14000288e:	90                   	nop
   14000288f:	90                   	nop

0000000140002890 <SetUnhandledExceptionFilter>:
   140002890:	ff 25 5a 59 00 00    	jmp    *0x595a(%rip)        # 1400081f0 <__imp_SetUnhandledExceptionFilter>
   140002896:	90                   	nop
   140002897:	90                   	nop

0000000140002898 <LeaveCriticalSection>:
   140002898:	ff 25 4a 59 00 00    	jmp    *0x594a(%rip)        # 1400081e8 <__imp_LeaveCriticalSection>
   14000289e:	90                   	nop
   14000289f:	90                   	nop

00000001400028a0 <InitializeCriticalSection>:
   1400028a0:	ff 25 3a 59 00 00    	jmp    *0x593a(%rip)        # 1400081e0 <__imp_InitializeCriticalSection>
   1400028a6:	90                   	nop
   1400028a7:	90                   	nop

00000001400028a8 <GetStartupInfoA>:
   1400028a8:	ff 25 2a 59 00 00    	jmp    *0x592a(%rip)        # 1400081d8 <__imp_GetStartupInfoA>
   1400028ae:	90                   	nop
   1400028af:	90                   	nop

00000001400028b0 <GetLastError>:
   1400028b0:	ff 25 1a 59 00 00    	jmp    *0x591a(%rip)        # 1400081d0 <__imp_GetLastError>
   1400028b6:	90                   	nop
   1400028b7:	90                   	nop

00000001400028b8 <EnterCriticalSection>:
   1400028b8:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 1400081c8 <__imp_EnterCriticalSection>
   1400028be:	90                   	nop
   1400028bf:	90                   	nop

00000001400028c0 <DeleteCriticalSection>:
   1400028c0:	ff 25 fa 58 00 00    	jmp    *0x58fa(%rip)        # 1400081c0 <__IAT_start__>
   1400028c6:	90                   	nop
   1400028c7:	90                   	nop
   1400028c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400028cf:	00 

00000001400028d0 <_ZN16Generic_RegisterIhE6setBitEh>:
        LOC_enuReturnError= OK;
    }
    return LOC_enuReturnError;
}
template <class T>
ERROR_STATUS Generic_Register<T>::setBit(std::uint8_t Copy_BitNum)
   1400028d0:	55                   	push   %rbp
   1400028d1:	48 89 e5             	mov    %rsp,%rbp
   1400028d4:	48 83 ec 10          	sub    $0x10,%rsp
   1400028d8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400028dc:	89 d0                	mov    %edx,%eax
   1400028de:	88 45 18             	mov    %al,0x18(%rbp)
{
    ERROR_STATUS LOC_enuReturnError= NOK;
   1400028e1:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
    if(GET_BIT(Write_Only , Copy_BitNum) == 1)
   1400028e8:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400028ec:	0f b6 40 08          	movzbl 0x8(%rax),%eax
   1400028f0:	0f b6 d0             	movzbl %al,%edx
   1400028f3:	0f b6 45 18          	movzbl 0x18(%rbp),%eax
   1400028f7:	89 c1                	mov    %eax,%ecx
   1400028f9:	d3 fa                	sar    %cl,%edx
   1400028fb:	89 d0                	mov    %edx,%eax
   1400028fd:	83 e0 01             	and    $0x1,%eax
   140002900:	85 c0                	test   %eax,%eax
   140002902:	74 31                	je     140002935 <_ZN16Generic_RegisterIhE6setBitEh+0x65>
    {
        *PrvRegister |= (1<<Copy_BitNum);
   140002904:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002908:	48 8b 00             	mov    (%rax),%rax
   14000290b:	0f b6 00             	movzbl (%rax),%eax
   14000290e:	41 89 c0             	mov    %eax,%r8d
   140002911:	0f b6 45 18          	movzbl 0x18(%rbp),%eax
   140002915:	ba 01 00 00 00       	mov    $0x1,%edx
   14000291a:	89 c1                	mov    %eax,%ecx
   14000291c:	d3 e2                	shl    %cl,%edx
   14000291e:	89 d0                	mov    %edx,%eax
   140002920:	44 89 c2             	mov    %r8d,%edx
   140002923:	09 c2                	or     %eax,%edx
   140002925:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002929:	48 8b 00             	mov    (%rax),%rax
   14000292c:	88 10                	mov    %dl,(%rax)
        LOC_enuReturnError= OK;
   14000292e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    }
    return LOC_enuReturnError;
   140002935:	8b 45 fc             	mov    -0x4(%rbp),%eax
}
   140002938:	48 83 c4 10          	add    $0x10,%rsp
   14000293c:	5d                   	pop    %rbp
   14000293d:	c3                   	ret    
   14000293e:	90                   	nop
Generic_Register<T>::Generic_Register(T * Register , REGISTER_PERMISSION Permission)
   14000293f:	90                   	nop

0000000140002940 <_ZN16Generic_RegisterIhEC1EPh19REGISTER_PERMISSION>:
   140002940:	55                   	push   %rbp
   140002941:	48 89 e5             	mov    %rsp,%rbp
   140002944:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002948:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000294c:	44 89 45 20          	mov    %r8d,0x20(%rbp)
    PrvRegister = Register;
   140002950:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002954:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140002958:	48 89 10             	mov    %rdx,(%rax)
    switch(Permission)
   14000295b:	8b 45 20             	mov    0x20(%rbp),%eax
   14000295e:	83 f8 03             	cmp    $0x3,%eax
   140002961:	74 50                	je     1400029b3 <_ZN16Generic_RegisterIhEC1EPh19REGISTER_PERMISSION+0x73>
   140002963:	83 f8 03             	cmp    $0x3,%eax
   140002966:	7f 5c                	jg     1400029c4 <_ZN16Generic_RegisterIhEC1EPh19REGISTER_PERMISSION+0x84>
   140002968:	83 f8 02             	cmp    $0x2,%eax
   14000296b:	74 34                	je     1400029a1 <_ZN16Generic_RegisterIhEC1EPh19REGISTER_PERMISSION+0x61>
   14000296d:	83 f8 02             	cmp    $0x2,%eax
   140002970:	7f 52                	jg     1400029c4 <_ZN16Generic_RegisterIhEC1EPh19REGISTER_PERMISSION+0x84>
   140002972:	85 c0                	test   %eax,%eax
   140002974:	74 07                	je     14000297d <_ZN16Generic_RegisterIhEC1EPh19REGISTER_PERMISSION+0x3d>
   140002976:	83 f8 01             	cmp    $0x1,%eax
   140002979:	74 14                	je     14000298f <_ZN16Generic_RegisterIhEC1EPh19REGISTER_PERMISSION+0x4f>
}
   14000297b:	eb 47                	jmp    1400029c4 <_ZN16Generic_RegisterIhEC1EPh19REGISTER_PERMISSION+0x84>
            Read_Only = ~((T) 0);
   14000297d:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002981:	c6 40 09 ff          	movb   $0xff,0x9(%rax)
            Write_Only = 0;
   140002985:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002989:	c6 40 08 00          	movb   $0x0,0x8(%rax)
            break;
   14000298d:	eb 35                	jmp    1400029c4 <_ZN16Generic_RegisterIhEC1EPh19REGISTER_PERMISSION+0x84>
            Write_Only = ~((T) 0);
   14000298f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002993:	c6 40 08 ff          	movb   $0xff,0x8(%rax)
            Read_Only = 0;
   140002997:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000299b:	c6 40 09 00          	movb   $0x0,0x9(%rax)
            break;        
   14000299f:	eb 23                	jmp    1400029c4 <_ZN16Generic_RegisterIhEC1EPh19REGISTER_PERMISSION+0x84>
            Write_Only = ~((T) 0);
   1400029a1:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400029a5:	c6 40 08 ff          	movb   $0xff,0x8(%rax)
            Read_Only = ~((T) 0);
   1400029a9:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400029ad:	c6 40 09 ff          	movb   $0xff,0x9(%rax)
            break;
   1400029b1:	eb 11                	jmp    1400029c4 <_ZN16Generic_RegisterIhEC1EPh19REGISTER_PERMISSION+0x84>
            Read_Only = 0;
   1400029b3:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400029b7:	c6 40 09 00          	movb   $0x0,0x9(%rax)
            Write_Only = 0;
   1400029bb:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400029bf:	c6 40 08 00          	movb   $0x0,0x8(%rax)
            break;            
   1400029c3:	90                   	nop
}
   1400029c4:	90                   	nop
   1400029c5:	5d                   	pop    %rbp
   1400029c6:	c3                   	ret    
   1400029c7:	90                   	nop
   1400029c8:	90                   	nop
   1400029c9:	90                   	nop
   1400029ca:	90                   	nop
   1400029cb:	90                   	nop
   1400029cc:	90                   	nop
   1400029cd:	90                   	nop
   1400029ce:	90                   	nop
   1400029cf:	90                   	nop

00000001400029d0 <register_frame_ctor>:
   1400029d0:	e9 3b eb ff ff       	jmp    140001510 <__gcc_register_frame>
   1400029d5:	90                   	nop
   1400029d6:	90                   	nop
   1400029d7:	90                   	nop
   1400029d8:	90                   	nop
   1400029d9:	90                   	nop
   1400029da:	90                   	nop
   1400029db:	90                   	nop
   1400029dc:	90                   	nop
   1400029dd:	90                   	nop
   1400029de:	90                   	nop
   1400029df:	90                   	nop

00000001400029e0 <__CTOR_LIST__>:
   1400029e0:	ff                   	(bad)  
   1400029e1:	ff                   	(bad)  
   1400029e2:	ff                   	(bad)  
   1400029e3:	ff                   	(bad)  
   1400029e4:	ff                   	(bad)  
   1400029e5:	ff                   	(bad)  
   1400029e6:	ff                   	(bad)  
   1400029e7:	ff                   	.byte 0xff

00000001400029e8 <.ctors>:
   1400029e8:	45 16                	rex.RB (bad) 
   1400029ea:	00 40 01             	add    %al,0x1(%rax)
   1400029ed:	00 00                	add    %al,(%rax)
	...

00000001400029f0 <.ctors.65535>:
   1400029f0:	d0 29                	shrb   (%rcx)
   1400029f2:	00 40 01             	add    %al,0x1(%rax)
	...

0000000140002a00 <__DTOR_LIST__>:
   140002a00:	ff                   	(bad)  
   140002a01:	ff                   	(bad)  
   140002a02:	ff                   	(bad)  
   140002a03:	ff                   	(bad)  
   140002a04:	ff                   	(bad)  
   140002a05:	ff                   	(bad)  
   140002a06:	ff                   	(bad)  
   140002a07:	ff 00                	incl   (%rax)
   140002a09:	00 00                	add    %al,(%rax)
   140002a0b:	00 00                	add    %al,(%rax)
   140002a0d:	00 00                	add    %al,(%rax)
	...
