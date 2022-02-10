
files_size_calc/out.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 95 44 00 00 	mov    0x4495(%rip),%rax        # 1400054b0 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 96 44 00 00 	mov    0x4496(%rip),%rax        # 1400054c0 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 99 44 00 00 	mov    0x4499(%rip),%rax        # 1400054d0 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 0c 44 00 00 	mov    0x440c(%rip),%rax        # 140005450 <.refptr.__image_base__>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 3f 44 00 00 	mov    0x443f(%rip),%rax        # 1400054a0 <.refptr.__mingw_app_type>
   140001061:	89 0d b9 6f 00 00    	mov    %ecx,0x6fb9(%rip)        # 140008020 <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 11 20 00 00       	call   140003088 <__set_app_type>
   140001077:	e8 84 1f 00 00       	call   140003000 <__p__fmode>
   14000107c:	48 8b 15 ed 44 00 00 	mov    0x44ed(%rip),%rdx        # 140005570 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 84 1f 00 00       	call   140003010 <__p__commode>
   14000108c:	48 8b 15 bd 44 00 00 	mov    0x44bd(%rip),%rdx        # 140005550 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 74 0f 00 00       	call   140002010 <_setargv>
   14000109c:	48 8b 05 2d 43 00 00 	mov    0x432d(%rip),%rax        # 1400053d0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret    
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 ce 1f 00 00       	call   140003088 <__set_app_type>
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
   1400010f8:	48 8b 0d 91 44 00 00 	mov    0x4491(%rip),%rcx        # 140005590 <.refptr._matherr>
   1400010ff:	e8 6c 16 00 00       	call   140002770 <__mingw_setusermatherr>
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
   140001134:	48 8b 05 65 44 00 00 	mov    0x4465(%rip),%rax        # 1400055a0 <.refptr._newmode>
   14000113b:	4c 8d 05 e6 6e 00 00 	lea    0x6ee6(%rip),%r8        # 140008028 <envp>
   140001142:	48 8d 15 e7 6e 00 00 	lea    0x6ee7(%rip),%rdx        # 140008030 <argv>
   140001149:	48 8d 0d e8 6e 00 00 	lea    0x6ee8(%rip),%rcx        # 140008038 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 c0 6e 00 00    	mov    %eax,0x6ec0(%rip)        # 140008018 <startinfo>
   140001158:	48 8d 05 b9 6e 00 00 	lea    0x6eb9(%rip),%rax        # 140008018 <startinfo>
   14000115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001164:	48 8b 05 f5 43 00 00 	mov    0x43f5(%rip),%rax        # 140005560 <.refptr._dowildcard>
   14000116b:	44 8b 08             	mov    (%rax),%r9d
   14000116e:	e8 05 1f 00 00       	call   140003078 <__getmainargs>
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
   1400011a1:	48 8b 3d f8 42 00 00 	mov    0x42f8(%rip),%rdi        # 1400054a0 <.refptr.__mingw_app_type>
   1400011a8:	44 8b 0f             	mov    (%rdi),%r9d
   1400011ab:	45 85 c9             	test   %r9d,%r9d
   1400011ae:	0f 85 9c 02 00 00    	jne    140001450 <__tmainCRTStartup+0x2d0>
   1400011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011bb:	00 00 
   1400011bd:	48 8b 1d 2c 43 00 00 	mov    0x432c(%rip),%rbx        # 1400054f0 <.refptr.__native_startup_lock>
   1400011c4:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011c8:	31 ed                	xor    %ebp,%ebp
   1400011ca:	4c 8b 25 d3 80 00 00 	mov    0x80d3(%rip),%r12        # 1400092a4 <__imp_Sleep>
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
   1400011f6:	48 8b 35 03 43 00 00 	mov    0x4303(%rip),%rsi        # 140005500 <.refptr.__native_startup_state>
   1400011fd:	31 ed                	xor    %ebp,%ebp
   1400011ff:	8b 06                	mov    (%rsi),%eax
   140001201:	83 f8 01             	cmp    $0x1,%eax
   140001204:	0f 84 05 02 00 00    	je     14000140f <__tmainCRTStartup+0x28f>
   14000120a:	8b 06                	mov    (%rsi),%eax
   14000120c:	85 c0                	test   %eax,%eax
   14000120e:	0f 84 6c 02 00 00    	je     140001480 <__tmainCRTStartup+0x300>
   140001214:	c7 05 fe 6d 00 00 01 	movl   $0x1,0x6dfe(%rip)        # 14000801c <has_cctor>
   14000121b:	00 00 00 
   14000121e:	8b 06                	mov    (%rsi),%eax
   140001220:	83 f8 01             	cmp    $0x1,%eax
   140001223:	0f 84 fb 01 00 00    	je     140001424 <__tmainCRTStartup+0x2a4>
   140001229:	85 ed                	test   %ebp,%ebp
   14000122b:	0f 84 14 02 00 00    	je     140001445 <__tmainCRTStartup+0x2c5>
   140001231:	48 8b 05 08 42 00 00 	mov    0x4208(%rip),%rax        # 140005440 <.refptr.__dyn_tls_init_callback>
   140001238:	48 8b 00             	mov    (%rax),%rax
   14000123b:	48 85 c0             	test   %rax,%rax
   14000123e:	74 0c                	je     14000124c <__tmainCRTStartup+0xcc>
   140001240:	45 31 c0             	xor    %r8d,%r8d
   140001243:	ba 02 00 00 00       	mov    $0x2,%edx
   140001248:	31 c9                	xor    %ecx,%ecx
   14000124a:	ff d0                	call   *%rax
   14000124c:	e8 8f 11 00 00       	call   1400023e0 <_pei386_runtime_relocator>
   140001251:	48 8b 0d 28 43 00 00 	mov    0x4328(%rip),%rcx        # 140005580 <.refptr._gnu_exception_handler>
   140001258:	ff 15 3e 80 00 00    	call   *0x803e(%rip)        # 14000929c <__imp_SetUnhandledExceptionFilter>
   14000125e:	48 8b 15 7b 42 00 00 	mov    0x427b(%rip),%rdx        # 1400054e0 <.refptr.__mingw_oldexcpt_handler>
   140001265:	48 8d 0d 94 fd ff ff 	lea    -0x26c(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000126c:	48 89 02             	mov    %rax,(%rdx)
   14000126f:	e8 cc 1d 00 00       	call   140003040 <_set_invalid_parameter_handler>
   140001274:	e8 77 0f 00 00       	call   1400021f0 <_fpreset>
   140001279:	48 8b 05 d0 41 00 00 	mov    0x41d0(%rip),%rax        # 140005450 <.refptr.__image_base__>
   140001280:	48 89 05 89 6d 00 00 	mov    %rax,0x6d89(%rip)        # 140008010 <__mingw_winmain_hInstance>
   140001287:	e8 94 1d 00 00       	call   140003020 <__p__acmdln>
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
   1400012e9:	48 89 05 18 6d 00 00 	mov    %rax,0x6d18(%rip)        # 140008008 <__mingw_winmain_lpCmdLine>
   1400012f0:	44 8b 07             	mov    (%rdi),%r8d
   1400012f3:	45 85 c0             	test   %r8d,%r8d
   1400012f6:	74 16                	je     14000130e <__tmainCRTStartup+0x18e>
   1400012f8:	b8 0a 00 00 00       	mov    $0xa,%eax
   1400012fd:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
   140001302:	0f 85 e0 00 00 00    	jne    1400013e8 <__tmainCRTStartup+0x268>
   140001308:	89 05 f2 2c 00 00    	mov    %eax,0x2cf2(%rip)        # 140004000 <__data_start__>
   14000130e:	48 63 2d 23 6d 00 00 	movslq 0x6d23(%rip),%rbp        # 140008038 <argc>
   140001315:	44 8d 65 01          	lea    0x1(%rbp),%r12d
   140001319:	4d 63 e4             	movslq %r12d,%r12
   14000131c:	49 c1 e4 03          	shl    $0x3,%r12
   140001320:	4c 89 e1             	mov    %r12,%rcx
   140001323:	e8 c0 1d 00 00       	call   1400030e8 <malloc>
   140001328:	4c 8b 2d 01 6d 00 00 	mov    0x6d01(%rip),%r13        # 140008030 <argv>
   14000132f:	48 89 c7             	mov    %rax,%rdi
   140001332:	85 ed                	test   %ebp,%ebp
   140001334:	7e 42                	jle    140001378 <__tmainCRTStartup+0x1f8>
   140001336:	31 db                	xor    %ebx,%ebx
   140001338:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000133f:	00 
   140001340:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
   140001345:	e8 b6 1d 00 00       	call   140003100 <strlen>
   14000134a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000134e:	48 89 f1             	mov    %rsi,%rcx
   140001351:	e8 92 1d 00 00       	call   1400030e8 <malloc>
   140001356:	49 89 f0             	mov    %rsi,%r8
   140001359:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
   14000135d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
   140001362:	48 89 c1             	mov    %rax,%rcx
   140001365:	48 83 c3 01          	add    $0x1,%rbx
   140001369:	e8 82 1d 00 00       	call   1400030f0 <memcpy>
   14000136e:	48 39 dd             	cmp    %rbx,%rbp
   140001371:	75 cd                	jne    140001340 <__tmainCRTStartup+0x1c0>
   140001373:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
   140001378:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000137f:	48 89 3d aa 6c 00 00 	mov    %rdi,0x6caa(%rip)        # 140008030 <argv>
   140001386:	e8 65 0c 00 00       	call   140001ff0 <__main>
   14000138b:	48 8b 05 ce 40 00 00 	mov    0x40ce(%rip),%rax        # 140005460 <.refptr.__imp___initenv>
   140001392:	4c 8b 05 8f 6c 00 00 	mov    0x6c8f(%rip),%r8        # 140008028 <envp>
   140001399:	8b 0d 99 6c 00 00    	mov    0x6c99(%rip),%ecx        # 140008038 <argc>
   14000139f:	48 8b 00             	mov    (%rax),%rax
   1400013a2:	4c 89 00             	mov    %r8,(%rax)
   1400013a5:	48 8b 15 84 6c 00 00 	mov    0x6c84(%rip),%rdx        # 140008030 <argv>
   1400013ac:	e8 7f 01 00 00       	call   140001530 <main>
   1400013b1:	8b 0d 69 6c 00 00    	mov    0x6c69(%rip),%ecx        # 140008020 <managedapp>
   1400013b7:	89 05 67 6c 00 00    	mov    %eax,0x6c67(%rip)        # 140008024 <mainret>
   1400013bd:	85 c9                	test   %ecx,%ecx
   1400013bf:	0f 84 d9 00 00 00    	je     14000149e <__tmainCRTStartup+0x31e>
   1400013c5:	8b 15 51 6c 00 00    	mov    0x6c51(%rip),%edx        # 14000801c <has_cctor>
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
   1400013f8:	48 8b 35 01 41 00 00 	mov    0x4101(%rip),%rsi        # 140005500 <.refptr.__native_startup_state>
   1400013ff:	bd 01 00 00 00       	mov    $0x1,%ebp
   140001404:	8b 06                	mov    (%rsi),%eax
   140001406:	83 f8 01             	cmp    $0x1,%eax
   140001409:	0f 85 fb fd ff ff    	jne    14000120a <__tmainCRTStartup+0x8a>
   14000140f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   140001414:	e8 7f 1c 00 00       	call   140003098 <_amsg_exit>
   140001419:	8b 06                	mov    (%rsi),%eax
   14000141b:	83 f8 01             	cmp    $0x1,%eax
   14000141e:	0f 85 05 fe ff ff    	jne    140001229 <__tmainCRTStartup+0xa9>
   140001424:	48 8b 15 f5 40 00 00 	mov    0x40f5(%rip),%rdx        # 140005520 <.refptr.__xc_z>
   14000142b:	48 8b 0d de 40 00 00 	mov    0x40de(%rip),%rcx        # 140005510 <.refptr.__xc_a>
   140001432:	e8 71 1c 00 00       	call   1400030a8 <_initterm>
   140001437:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   14000143d:	85 ed                	test   %ebp,%ebp
   14000143f:	0f 85 ec fd ff ff    	jne    140001231 <__tmainCRTStartup+0xb1>
   140001445:	31 c0                	xor    %eax,%eax
   140001447:	48 87 03             	xchg   %rax,(%rbx)
   14000144a:	e9 e2 fd ff ff       	jmp    140001231 <__tmainCRTStartup+0xb1>
   14000144f:	90                   	nop
   140001450:	4c 89 c1             	mov    %r8,%rcx
   140001453:	ff 15 2b 7e 00 00    	call   *0x7e2b(%rip)        # 140009284 <__imp_GetStartupInfoA>
   140001459:	e9 56 fd ff ff       	jmp    1400011b4 <__tmainCRTStartup+0x34>
   14000145e:	66 90                	xchg   %ax,%ax
   140001460:	e8 3b 1c 00 00       	call   1400030a0 <_cexit>
   140001465:	8b 05 b9 6b 00 00    	mov    0x6bb9(%rip),%eax        # 140008024 <mainret>
   14000146b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001472:	5b                   	pop    %rbx
   140001473:	5e                   	pop    %rsi
   140001474:	5f                   	pop    %rdi
   140001475:	5d                   	pop    %rbp
   140001476:	41 5c                	pop    %r12
   140001478:	41 5d                	pop    %r13
   14000147a:	c3                   	ret    
   14000147b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001480:	48 8b 15 b9 40 00 00 	mov    0x40b9(%rip),%rdx        # 140005540 <.refptr.__xi_z>
   140001487:	48 8b 0d a2 40 00 00 	mov    0x40a2(%rip),%rcx        # 140005530 <.refptr.__xi_a>
   14000148e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   140001494:	e8 0f 1c 00 00       	call   1400030a8 <_initterm>
   140001499:	e9 80 fd ff ff       	jmp    14000121e <__tmainCRTStartup+0x9e>
   14000149e:	89 c1                	mov    %eax,%ecx
   1400014a0:	e8 23 1c 00 00       	call   1400030c8 <exit>
   1400014a5:	90                   	nop
   1400014a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400014ad:	00 00 00 

00000001400014b0 <WinMainCRTStartup>:
   1400014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014b4 <.l_startw>:
   1400014b4:	48 8b 05 e5 3f 00 00 	mov    0x3fe5(%rip),%rax        # 1400054a0 <.refptr.__mingw_app_type>
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
   1400014d4:	48 8b 05 c5 3f 00 00 	mov    0x3fc5(%rip),%rax        # 1400054a0 <.refptr.__mingw_app_type>
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
   1400014f4:	e8 b7 1b 00 00       	call   1400030b0 <_onexit>
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
void linecheck(string input);
void extension_check(string extension,int size);
int music=0,movie=0,image=0,other=0;

int main()
{
   14000152f:	90                   	nop

0000000140001530 <main>:
   140001530:	55                   	push   %rbp
   140001531:	41 57                	push   %r15
   140001533:	41 56                	push   %r14
   140001535:	41 55                	push   %r13
   140001537:	41 54                	push   %r12
   140001539:	56                   	push   %rsi
   14000153a:	53                   	push   %rbx
   14000153b:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
   140001542:	48 8d ac 24 c0 00 00 	lea    0xc0(%rsp),%rbp
   140001549:	00 
   14000154a:	e8 a1 0a 00 00       	call   140001ff0 <__main>
       cout<<"music "<<arr_final[i][0]<<"b"<<" images "<<arr_final[i][1]<<"b"<<" movies "<<arr_final[i][2]<<"b"<<" other "<<arr_final[i][3]<<"b"<<endl;
       
   }

return 0;
}
   14000154f:	48 89 e0             	mov    %rsp,%rax
   140001552:	48 89 c6             	mov    %rax,%rsi
    string input;
   140001555:	48 8d 45 80          	lea    -0x80(%rbp),%rax
   140001559:	48 89 c1             	mov    %rax,%rcx
   14000155c:	e8 97 09 00 00       	call   140001ef8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
   cin>>test_cases;
   140001561:	48 8d 45 ac          	lea    -0x54(%rbp),%rax
   140001565:	48 89 c2             	mov    %rax,%rdx
   140001568:	48 8b 05 71 3e 00 00 	mov    0x3e71(%rip),%rax        # 1400053e0 <__fu1__ZSt3cin>
   14000156f:	48 89 c1             	mov    %rax,%rcx
   140001572:	e8 a1 09 00 00       	call   140001f18 <_ZNSirsERi>
   int arr[test_cases];
   140001577:	8b 45 ac             	mov    -0x54(%rbp),%eax
   14000157a:	48 63 d0             	movslq %eax,%rdx
   14000157d:	48 83 ea 01          	sub    $0x1,%rdx
   140001581:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   140001585:	48 63 d0             	movslq %eax,%rdx
   140001588:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
   14000158f:	48 c7 85 78 ff ff ff 	movq   $0x0,-0x88(%rbp)
   140001596:	00 00 00 00 
   14000159a:	48 63 d0             	movslq %eax,%rdx
   14000159d:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
   1400015a4:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
   1400015ab:	00 00 00 00 
   1400015af:	48 98                	cltq   
   1400015b1:	48 c1 e0 02          	shl    $0x2,%rax
   1400015b5:	48 83 c0 0f          	add    $0xf,%rax
   1400015b9:	48 c1 e8 04          	shr    $0x4,%rax
   1400015bd:	48 c1 e0 04          	shl    $0x4,%rax
   1400015c1:	e8 fa 19 00 00       	call   140002fc0 <___chkstk_ms>
   1400015c6:	48 29 c4             	sub    %rax,%rsp
   1400015c9:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
   1400015ce:	48 83 c0 03          	add    $0x3,%rax
   1400015d2:	48 c1 e8 02          	shr    $0x2,%rax
   1400015d6:	48 c1 e0 02          	shl    $0x2,%rax
   1400015da:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   int arr_final[test_cases][4];
   1400015de:	8b 45 ac             	mov    -0x54(%rbp),%eax
   1400015e1:	48 63 d0             	movslq %eax,%rdx
   1400015e4:	48 83 ea 01          	sub    $0x1,%rdx
   1400015e8:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   1400015ec:	48 63 d0             	movslq %eax,%rdx
   1400015ef:	49 89 d6             	mov    %rdx,%r14
   1400015f2:	41 bf 00 00 00 00    	mov    $0x0,%r15d
   1400015f8:	48 63 d0             	movslq %eax,%rdx
   1400015fb:	49 89 d4             	mov    %rdx,%r12
   1400015fe:	41 bd 00 00 00 00    	mov    $0x0,%r13d
   140001604:	48 98                	cltq   
   140001606:	48 c1 e0 04          	shl    $0x4,%rax
   14000160a:	48 83 c0 0f          	add    $0xf,%rax
   14000160e:	48 c1 e8 04          	shr    $0x4,%rax
   140001612:	48 c1 e0 04          	shl    $0x4,%rax
   140001616:	e8 a5 19 00 00       	call   140002fc0 <___chkstk_ms>
   14000161b:	48 29 c4             	sub    %rax,%rsp
   14000161e:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
   140001623:	48 83 c0 03          	add    $0x3,%rax
   140001627:	48 c1 e8 02          	shr    $0x2,%rax
   14000162b:	48 c1 e0 02          	shl    $0x2,%rax
   14000162f:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   for(i=0;i<test_cases;i++)
   140001633:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   14000163a:	eb 2a                	jmp    140001666 <main+0x136>
       cin>>arr[i];
   14000163c:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000163f:	48 98                	cltq   
   140001641:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140001648:	00 
   140001649:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   14000164d:	48 01 d0             	add    %rdx,%rax
   140001650:	48 89 c2             	mov    %rax,%rdx
   140001653:	48 8b 05 86 3d 00 00 	mov    0x3d86(%rip),%rax        # 1400053e0 <__fu1__ZSt3cin>
   14000165a:	48 89 c1             	mov    %rax,%rcx
   14000165d:	e8 b6 08 00 00       	call   140001f18 <_ZNSirsERi>
   for(i=0;i<test_cases;i++)
   140001662:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140001666:	8b 45 ac             	mov    -0x54(%rbp),%eax
   140001669:	39 45 fc             	cmp    %eax,-0x4(%rbp)
   14000166c:	7c ce                	jl     14000163c <main+0x10c>
   for(i=0;i<test_cases;i++)
   14000166e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140001675:	eb 34                	jmp    1400016ab <main+0x17b>
       cout<<arr[i]<<endl;
   140001677:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   14000167b:	8b 55 fc             	mov    -0x4(%rbp),%edx
   14000167e:	48 63 d2             	movslq %edx,%rdx
   140001681:	8b 04 90             	mov    (%rax,%rdx,4),%eax
   140001684:	89 c2                	mov    %eax,%edx
   140001686:	48 8b 05 63 3d 00 00 	mov    0x3d63(%rip),%rax        # 1400053f0 <__fu0__ZSt4cout>
   14000168d:	48 89 c1             	mov    %rax,%rcx
   140001690:	e8 73 08 00 00       	call   140001f08 <_ZNSolsEi>
   140001695:	48 89 c1             	mov    %rax,%rcx
   140001698:	48 8b 05 61 3d 00 00 	mov    0x3d61(%rip),%rax        # 140005400 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000169f:	48 89 c2             	mov    %rax,%rdx
   1400016a2:	e8 69 08 00 00       	call   140001f10 <_ZNSolsEPFRSoS_E>
   for(i=0;i<test_cases;i++)
   1400016a7:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   1400016ab:	8b 45 ac             	mov    -0x54(%rbp),%eax
   1400016ae:	39 45 fc             	cmp    %eax,-0x4(%rbp)
   1400016b1:	7c c4                	jl     140001677 <main+0x147>
   cout<<"enter lines "<<endl;
   1400016b3:	48 8d 05 46 39 00 00 	lea    0x3946(%rip),%rax        # 140005000 <.rdata>
   1400016ba:	48 89 c2             	mov    %rax,%rdx
   1400016bd:	48 8b 05 2c 3d 00 00 	mov    0x3d2c(%rip),%rax        # 1400053f0 <__fu0__ZSt4cout>
   1400016c4:	48 89 c1             	mov    %rax,%rcx
   1400016c7:	e8 dc 07 00 00       	call   140001ea8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400016cc:	48 89 c1             	mov    %rax,%rcx
   1400016cf:	48 8b 05 2a 3d 00 00 	mov    0x3d2a(%rip),%rax        # 140005400 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400016d6:	48 89 c2             	mov    %rax,%rdx
   1400016d9:	e8 32 08 00 00       	call   140001f10 <_ZNSolsEPFRSoS_E>
   getline(cin,input);
   1400016de:	48 8d 45 80          	lea    -0x80(%rbp),%rax
   1400016e2:	48 89 c2             	mov    %rax,%rdx
   1400016e5:	48 8b 05 f4 3c 00 00 	mov    0x3cf4(%rip),%rax        # 1400053e0 <__fu1__ZSt3cin>
   1400016ec:	48 89 c1             	mov    %rax,%rcx
   1400016ef:	e8 bc 07 00 00       	call   140001eb0 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   for(i=0;i<test_cases;i++)
   1400016f4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   1400016fb:	e9 ff 00 00 00       	jmp    1400017ff <main+0x2cf>
       music=image=movie=other=0;
   140001700:	c7 05 42 69 00 00 00 	movl   $0x0,0x6942(%rip)        # 14000804c <other>
   140001707:	00 00 00 
   14000170a:	8b 05 3c 69 00 00    	mov    0x693c(%rip),%eax        # 14000804c <other>
   140001710:	89 05 2e 69 00 00    	mov    %eax,0x692e(%rip)        # 140008044 <movie>
   140001716:	8b 05 28 69 00 00    	mov    0x6928(%rip),%eax        # 140008044 <movie>
   14000171c:	89 05 26 69 00 00    	mov    %eax,0x6926(%rip)        # 140008048 <image>
   140001722:	8b 05 20 69 00 00    	mov    0x6920(%rip),%eax        # 140008048 <image>
   140001728:	89 05 12 69 00 00    	mov    %eax,0x6912(%rip)        # 140008040 <music>
       for(j=0;j<(arr[i]);j++)
   14000172e:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   140001735:	eb 42                	jmp    140001779 <main+0x249>
           getline(cin,input);
   140001737:	48 8d 45 80          	lea    -0x80(%rbp),%rax
   14000173b:	48 89 c2             	mov    %rax,%rdx
   14000173e:	48 8b 05 9b 3c 00 00 	mov    0x3c9b(%rip),%rax        # 1400053e0 <__fu1__ZSt3cin>
   140001745:	48 89 c1             	mov    %rax,%rcx
   140001748:	e8 63 07 00 00       	call   140001eb0 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
           linecheck(input);
   14000174d:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
   140001751:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   140001755:	48 89 c1             	mov    %rax,%rcx
   140001758:	e8 a3 07 00 00       	call   140001f00 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
   14000175d:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   140001761:	48 89 c1             	mov    %rax,%rcx
   140001764:	e8 35 02 00 00       	call   14000199e <_Z9linecheckNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
   140001769:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   14000176d:	48 89 c1             	mov    %rax,%rcx
   140001770:	e8 7b 07 00 00       	call   140001ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
       for(j=0;j<(arr[i]);j++)
   140001775:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
   140001779:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   14000177d:	8b 55 fc             	mov    -0x4(%rbp),%edx
   140001780:	48 63 d2             	movslq %edx,%rdx
   140001783:	8b 04 90             	mov    (%rax,%rdx,4),%eax
   140001786:	39 45 f8             	cmp    %eax,-0x8(%rbp)
   140001789:	7c ac                	jl     140001737 <main+0x207>
        arr_final[i][0]=music;
   14000178b:	8b 05 af 68 00 00    	mov    0x68af(%rip),%eax        # 140008040 <music>
   140001791:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
   140001795:	8b 55 fc             	mov    -0x4(%rbp),%edx
   140001798:	48 63 d2             	movslq %edx,%rdx
   14000179b:	48 c1 e2 04          	shl    $0x4,%rdx
   14000179f:	48 01 ca             	add    %rcx,%rdx
   1400017a2:	89 02                	mov    %eax,(%rdx)
        arr_final[i][1]=image;
   1400017a4:	8b 05 9e 68 00 00    	mov    0x689e(%rip),%eax        # 140008048 <image>
   1400017aa:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
   1400017ae:	8b 55 fc             	mov    -0x4(%rbp),%edx
   1400017b1:	48 63 d2             	movslq %edx,%rdx
   1400017b4:	48 c1 e2 04          	shl    $0x4,%rdx
   1400017b8:	48 01 ca             	add    %rcx,%rdx
   1400017bb:	48 83 c2 04          	add    $0x4,%rdx
   1400017bf:	89 02                	mov    %eax,(%rdx)
        arr_final[i][2]=movie;
   1400017c1:	8b 05 7d 68 00 00    	mov    0x687d(%rip),%eax        # 140008044 <movie>
   1400017c7:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
   1400017cb:	8b 55 fc             	mov    -0x4(%rbp),%edx
   1400017ce:	48 63 d2             	movslq %edx,%rdx
   1400017d1:	48 c1 e2 04          	shl    $0x4,%rdx
   1400017d5:	48 01 ca             	add    %rcx,%rdx
   1400017d8:	48 83 c2 08          	add    $0x8,%rdx
   1400017dc:	89 02                	mov    %eax,(%rdx)
        arr_final[i][3]=other;
   1400017de:	8b 05 68 68 00 00    	mov    0x6868(%rip),%eax        # 14000804c <other>
   1400017e4:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
   1400017e8:	8b 55 fc             	mov    -0x4(%rbp),%edx
   1400017eb:	48 63 d2             	movslq %edx,%rdx
   1400017ee:	48 c1 e2 04          	shl    $0x4,%rdx
   1400017f2:	48 01 ca             	add    %rcx,%rdx
   1400017f5:	48 83 c2 0c          	add    $0xc,%rdx
   1400017f9:	89 02                	mov    %eax,(%rdx)
   for(i=0;i<test_cases;i++)
   1400017fb:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   1400017ff:	8b 45 ac             	mov    -0x54(%rbp),%eax
   140001802:	39 45 fc             	cmp    %eax,-0x4(%rbp)
   140001805:	0f 8c f5 fe ff ff    	jl     140001700 <main+0x1d0>
    for(i=0;i<test_cases;i++)
   14000180b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140001812:	e9 29 01 00 00       	jmp    140001940 <main+0x410>
       cout<<"music "<<arr_final[i][0]<<"b"<<" images "<<arr_final[i][1]<<"b"<<" movies "<<arr_final[i][2]<<"b"<<" other "<<arr_final[i][3]<<"b"<<endl;
   140001817:	48 8d 05 ef 37 00 00 	lea    0x37ef(%rip),%rax        # 14000500d <.rdata+0xd>
   14000181e:	48 89 c2             	mov    %rax,%rdx
   140001821:	48 8b 05 c8 3b 00 00 	mov    0x3bc8(%rip),%rax        # 1400053f0 <__fu0__ZSt4cout>
   140001828:	48 89 c1             	mov    %rax,%rcx
   14000182b:	e8 78 06 00 00       	call   140001ea8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001830:	48 89 c1             	mov    %rax,%rcx
   140001833:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
   140001837:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000183a:	48 98                	cltq   
   14000183c:	48 c1 e0 04          	shl    $0x4,%rax
   140001840:	48 01 d0             	add    %rdx,%rax
   140001843:	8b 00                	mov    (%rax),%eax
   140001845:	89 c2                	mov    %eax,%edx
   140001847:	e8 bc 06 00 00       	call   140001f08 <_ZNSolsEi>
   14000184c:	48 89 c1             	mov    %rax,%rcx
   14000184f:	48 8d 05 be 37 00 00 	lea    0x37be(%rip),%rax        # 140005014 <.rdata+0x14>
   140001856:	48 89 c2             	mov    %rax,%rdx
   140001859:	e8 4a 06 00 00       	call   140001ea8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000185e:	48 89 c1             	mov    %rax,%rcx
   140001861:	48 8d 05 ae 37 00 00 	lea    0x37ae(%rip),%rax        # 140005016 <.rdata+0x16>
   140001868:	48 89 c2             	mov    %rax,%rdx
   14000186b:	e8 38 06 00 00       	call   140001ea8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001870:	48 89 c1             	mov    %rax,%rcx
   140001873:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
   140001877:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000187a:	48 98                	cltq   
   14000187c:	48 c1 e0 04          	shl    $0x4,%rax
   140001880:	48 01 d0             	add    %rdx,%rax
   140001883:	48 83 c0 04          	add    $0x4,%rax
   140001887:	8b 00                	mov    (%rax),%eax
   140001889:	89 c2                	mov    %eax,%edx
   14000188b:	e8 78 06 00 00       	call   140001f08 <_ZNSolsEi>
   140001890:	48 89 c1             	mov    %rax,%rcx
   140001893:	48 8d 05 7a 37 00 00 	lea    0x377a(%rip),%rax        # 140005014 <.rdata+0x14>
   14000189a:	48 89 c2             	mov    %rax,%rdx
   14000189d:	e8 06 06 00 00       	call   140001ea8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400018a2:	48 89 c1             	mov    %rax,%rcx
   1400018a5:	48 8d 05 73 37 00 00 	lea    0x3773(%rip),%rax        # 14000501f <.rdata+0x1f>
   1400018ac:	48 89 c2             	mov    %rax,%rdx
   1400018af:	e8 f4 05 00 00       	call   140001ea8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400018b4:	48 89 c1             	mov    %rax,%rcx
   1400018b7:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
   1400018bb:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400018be:	48 98                	cltq   
   1400018c0:	48 c1 e0 04          	shl    $0x4,%rax
   1400018c4:	48 01 d0             	add    %rdx,%rax
   1400018c7:	48 83 c0 08          	add    $0x8,%rax
   1400018cb:	8b 00                	mov    (%rax),%eax
   1400018cd:	89 c2                	mov    %eax,%edx
   1400018cf:	e8 34 06 00 00       	call   140001f08 <_ZNSolsEi>
   1400018d4:	48 89 c1             	mov    %rax,%rcx
   1400018d7:	48 8d 05 36 37 00 00 	lea    0x3736(%rip),%rax        # 140005014 <.rdata+0x14>
   1400018de:	48 89 c2             	mov    %rax,%rdx
   1400018e1:	e8 c2 05 00 00       	call   140001ea8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400018e6:	48 89 c1             	mov    %rax,%rcx
   1400018e9:	48 8d 05 38 37 00 00 	lea    0x3738(%rip),%rax        # 140005028 <.rdata+0x28>
   1400018f0:	48 89 c2             	mov    %rax,%rdx
   1400018f3:	e8 b0 05 00 00       	call   140001ea8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400018f8:	48 89 c1             	mov    %rax,%rcx
   1400018fb:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
   1400018ff:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001902:	48 98                	cltq   
   140001904:	48 c1 e0 04          	shl    $0x4,%rax
   140001908:	48 01 d0             	add    %rdx,%rax
   14000190b:	48 83 c0 0c          	add    $0xc,%rax
   14000190f:	8b 00                	mov    (%rax),%eax
   140001911:	89 c2                	mov    %eax,%edx
   140001913:	e8 f0 05 00 00       	call   140001f08 <_ZNSolsEi>
   140001918:	48 89 c1             	mov    %rax,%rcx
   14000191b:	48 8d 05 f2 36 00 00 	lea    0x36f2(%rip),%rax        # 140005014 <.rdata+0x14>
   140001922:	48 89 c2             	mov    %rax,%rdx
   140001925:	e8 7e 05 00 00       	call   140001ea8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000192a:	48 89 c1             	mov    %rax,%rcx
   14000192d:	48 8b 05 cc 3a 00 00 	mov    0x3acc(%rip),%rax        # 140005400 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001934:	48 89 c2             	mov    %rax,%rdx
   140001937:	e8 d4 05 00 00       	call   140001f10 <_ZNSolsEPFRSoS_E>
    for(i=0;i<test_cases;i++)
   14000193c:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140001940:	8b 45 ac             	mov    -0x54(%rbp),%eax
   140001943:	39 45 fc             	cmp    %eax,-0x4(%rbp)
   140001946:	0f 8c cb fe ff ff    	jl     140001817 <main+0x2e7>
return 0;
   14000194c:	bb 00 00 00 00       	mov    $0x0,%ebx
}
   140001951:	48 8d 45 80          	lea    -0x80(%rbp),%rax
   140001955:	48 89 c1             	mov    %rax,%rcx
   140001958:	e8 93 05 00 00       	call   140001ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   14000195d:	48 89 f4             	mov    %rsi,%rsp
   140001960:	89 d8                	mov    %ebx,%eax
   140001962:	eb 2b                	jmp    14000198f <main+0x45f>
           linecheck(input);
   140001964:	48 89 c3             	mov    %rax,%rbx
   140001967:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   14000196b:	48 89 c1             	mov    %rax,%rcx
   14000196e:	e8 7d 05 00 00       	call   140001ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001973:	eb 03                	jmp    140001978 <main+0x448>
}
   140001975:	48 89 c3             	mov    %rax,%rbx
   140001978:	48 8d 45 80          	lea    -0x80(%rbp),%rax
   14000197c:	48 89 c1             	mov    %rax,%rcx
   14000197f:	e8 6c 05 00 00       	call   140001ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001984:	48 89 d8             	mov    %rbx,%rax
   140001987:	48 89 c1             	mov    %rax,%rcx
   14000198a:	e8 21 16 00 00       	call   140002fb0 <_Unwind_Resume>
   14000198f:	48 89 ec             	mov    %rbp,%rsp
   140001992:	5b                   	pop    %rbx
   140001993:	5e                   	pop    %rsi
   140001994:	41 5c                	pop    %r12
   140001996:	41 5d                	pop    %r13
   140001998:	41 5e                	pop    %r14
   14000199a:	41 5f                	pop    %r15
   14000199c:	5d                   	pop    %rbp
   14000199d:	c3                   	ret    

000000014000199e <_Z9linecheckNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:

void linecheck(string input)
{
   14000199e:	55                   	push   %rbp
   14000199f:	53                   	push   %rbx
   1400019a0:	48 81 ec e8 03 00 00 	sub    $0x3e8,%rsp
   1400019a7:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   1400019ae:	00 
   1400019af:	48 89 8d 80 03 00 00 	mov    %rcx,0x380(%rbp)
    int size_int;
    string size_str,extension;
   1400019b6:	48 8d 85 e0 02 00 00 	lea    0x2e0(%rbp),%rax
   1400019bd:	48 89 c1             	mov    %rax,%rcx
   1400019c0:	e8 33 05 00 00       	call   140001ef8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
   1400019c5:	48 8d 85 c0 02 00 00 	lea    0x2c0(%rbp),%rax
   1400019cc:	48 89 c1             	mov    %rax,%rcx
   1400019cf:	e8 24 05 00 00       	call   140001ef8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>

    stringstream ss(input);
   1400019d4:	ba 08 00 00 00       	mov    $0x8,%edx
   1400019d9:	b9 10 00 00 00       	mov    $0x10,%ecx
   1400019de:	e8 cd 17 00 00       	call   1400031b0 <_ZStorSt13_Ios_OpenmodeS_>
   1400019e3:	89 c2                	mov    %eax,%edx
   1400019e5:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   1400019ec:	41 89 d0             	mov    %edx,%r8d
   1400019ef:	48 8b 95 80 03 00 00 	mov    0x380(%rbp),%rdx
   1400019f6:	48 89 c1             	mov    %rax,%rcx
   1400019f9:	e8 da 04 00 00       	call   140001ed8 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
    size_str =" ";
   1400019fe:	48 8d 85 e0 02 00 00 	lea    0x2e0(%rbp),%rax
   140001a05:	48 8d 15 24 36 00 00 	lea    0x3624(%rip),%rdx        # 140005030 <.rdata+0x30>
   140001a0c:	48 89 c1             	mov    %rax,%rcx
   140001a0f:	e8 cc 04 00 00       	call   140001ee0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc>
    while(ss>>size_str);
   140001a14:	90                   	nop
   140001a15:	48 8d 95 e0 02 00 00 	lea    0x2e0(%rbp),%rdx
   140001a1c:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   140001a23:	48 89 c1             	mov    %rax,%rcx
   140001a26:	e8 6d 04 00 00       	call   140001e98 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   140001a2b:	48 8b 10             	mov    (%rax),%rdx
   140001a2e:	48 83 ea 18          	sub    $0x18,%rdx
   140001a32:	48 8b 12             	mov    (%rdx),%rdx
   140001a35:	48 01 d0             	add    %rdx,%rax
   140001a38:	48 89 c1             	mov    %rax,%rcx
   140001a3b:	e8 e0 04 00 00       	call   140001f20 <_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>
   140001a40:	84 c0                	test   %al,%al
   140001a42:	75 d1                	jne    140001a15 <_Z9linecheckNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x77>

    stringstream size(size_str);
   140001a44:	ba 08 00 00 00       	mov    $0x8,%edx
   140001a49:	b9 10 00 00 00       	mov    $0x10,%ecx
   140001a4e:	e8 5d 17 00 00       	call   1400031b0 <_ZStorSt13_Ios_OpenmodeS_>
   140001a53:	89 c1                	mov    %eax,%ecx
   140001a55:	48 8d 95 e0 02 00 00 	lea    0x2e0(%rbp),%rdx
   140001a5c:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001a60:	41 89 c8             	mov    %ecx,%r8d
   140001a63:	48 89 c1             	mov    %rax,%rcx
   140001a66:	e8 6d 04 00 00       	call   140001ed8 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
    size>>size_int;
   140001a6b:	48 8d 95 0c 03 00 00 	lea    0x30c(%rbp),%rdx
   140001a72:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001a76:	48 89 c1             	mov    %rax,%rcx
   140001a79:	e8 9a 04 00 00       	call   140001f18 <_ZNSirsERi>

   int index = input.rfind(".");
   140001a7e:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
   140001a85:	48 8d 05 a6 35 00 00 	lea    0x35a6(%rip),%rax        # 140005032 <.rdata+0x32>
   140001a8c:	48 89 c2             	mov    %rax,%rdx
   140001a8f:	48 8b 8d 80 03 00 00 	mov    0x380(%rbp),%rcx
   140001a96:	e8 9d 04 00 00       	call   140001f38 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcy>
   140001a9b:	89 85 5c 03 00 00    	mov    %eax,0x35c(%rbp)
   cout<<"index = "<<index<<endl;
   140001aa1:	48 8d 05 8c 35 00 00 	lea    0x358c(%rip),%rax        # 140005034 <.rdata+0x34>
   140001aa8:	48 89 c2             	mov    %rax,%rdx
   140001aab:	48 8b 05 3e 39 00 00 	mov    0x393e(%rip),%rax        # 1400053f0 <__fu0__ZSt4cout>
   140001ab2:	48 89 c1             	mov    %rax,%rcx
   140001ab5:	e8 ee 03 00 00       	call   140001ea8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001aba:	48 89 c1             	mov    %rax,%rcx
   140001abd:	8b 85 5c 03 00 00    	mov    0x35c(%rbp),%eax
   140001ac3:	89 c2                	mov    %eax,%edx
   140001ac5:	e8 3e 04 00 00       	call   140001f08 <_ZNSolsEi>
   140001aca:	48 89 c1             	mov    %rax,%rcx
   140001acd:	48 8b 05 2c 39 00 00 	mov    0x392c(%rip),%rax        # 140005400 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001ad4:	48 89 c2             	mov    %rax,%rdx
   140001ad7:	e8 34 04 00 00       	call   140001f10 <_ZNSolsEPFRSoS_E>
   int index_space=input.rfind(" ");
   140001adc:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
   140001ae3:	48 8d 05 46 35 00 00 	lea    0x3546(%rip),%rax        # 140005030 <.rdata+0x30>
   140001aea:	48 89 c2             	mov    %rax,%rdx
   140001aed:	48 8b 8d 80 03 00 00 	mov    0x380(%rbp),%rcx
   140001af4:	e8 3f 04 00 00       	call   140001f38 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcy>
   140001af9:	89 85 58 03 00 00    	mov    %eax,0x358(%rbp)
   cout<<"index = "<<index_space<<endl;
   140001aff:	48 8d 05 2e 35 00 00 	lea    0x352e(%rip),%rax        # 140005034 <.rdata+0x34>
   140001b06:	48 89 c2             	mov    %rax,%rdx
   140001b09:	48 8b 05 e0 38 00 00 	mov    0x38e0(%rip),%rax        # 1400053f0 <__fu0__ZSt4cout>
   140001b10:	48 89 c1             	mov    %rax,%rcx
   140001b13:	e8 90 03 00 00       	call   140001ea8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001b18:	48 89 c1             	mov    %rax,%rcx
   140001b1b:	8b 85 58 03 00 00    	mov    0x358(%rbp),%eax
   140001b21:	89 c2                	mov    %eax,%edx
   140001b23:	e8 e0 03 00 00       	call   140001f08 <_ZNSolsEi>
   140001b28:	48 89 c1             	mov    %rax,%rcx
   140001b2b:	48 8b 05 ce 38 00 00 	mov    0x38ce(%rip),%rax        # 140005400 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001b32:	48 89 c2             	mov    %rax,%rdx
   140001b35:	e8 d6 03 00 00       	call   140001f10 <_ZNSolsEPFRSoS_E>
  
   extension =input.substr(index,index_space-index);
   140001b3a:	8b 85 58 03 00 00    	mov    0x358(%rbp),%eax
   140001b40:	2b 85 5c 03 00 00    	sub    0x35c(%rbp),%eax
   140001b46:	48 63 c8             	movslq %eax,%rcx
   140001b49:	8b 85 5c 03 00 00    	mov    0x35c(%rbp),%eax
   140001b4f:	48 63 d0             	movslq %eax,%rdx
   140001b52:	48 8d 85 10 03 00 00 	lea    0x310(%rbp),%rax
   140001b59:	49 89 c9             	mov    %rcx,%r9
   140001b5c:	49 89 d0             	mov    %rdx,%r8
   140001b5f:	48 8b 95 80 03 00 00 	mov    0x380(%rbp),%rdx
   140001b66:	48 89 c1             	mov    %rax,%rcx
   140001b69:	e8 c2 03 00 00       	call   140001f30 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
   140001b6e:	48 8d 95 10 03 00 00 	lea    0x310(%rbp),%rdx
   140001b75:	48 8d 85 c0 02 00 00 	lea    0x2c0(%rbp),%rax
   140001b7c:	48 89 c1             	mov    %rax,%rcx
   140001b7f:	e8 64 03 00 00       	call   140001ee8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_>
   140001b84:	48 8d 85 10 03 00 00 	lea    0x310(%rbp),%rax
   140001b8b:	48 89 c1             	mov    %rax,%rcx
   140001b8e:	e8 5d 03 00 00       	call   140001ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   cout<<extension<<endl;
   140001b93:	48 8d 85 c0 02 00 00 	lea    0x2c0(%rbp),%rax
   140001b9a:	48 89 c2             	mov    %rax,%rdx
   140001b9d:	48 8b 05 4c 38 00 00 	mov    0x384c(%rip),%rax        # 1400053f0 <__fu0__ZSt4cout>
   140001ba4:	48 89 c1             	mov    %rax,%rcx
   140001ba7:	e8 f4 02 00 00       	call   140001ea0 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   140001bac:	48 89 c1             	mov    %rax,%rcx
   140001baf:	48 8b 05 4a 38 00 00 	mov    0x384a(%rip),%rax        # 140005400 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001bb6:	48 89 c2             	mov    %rax,%rdx
   140001bb9:	e8 52 03 00 00       	call   140001f10 <_ZNSolsEPFRSoS_E>
   extension_check(extension,size_int);
   140001bbe:	8b 9d 0c 03 00 00    	mov    0x30c(%rbp),%ebx
   140001bc4:	48 8d 95 c0 02 00 00 	lea    0x2c0(%rbp),%rdx
   140001bcb:	48 8d 85 30 03 00 00 	lea    0x330(%rbp),%rax
   140001bd2:	48 89 c1             	mov    %rax,%rcx
   140001bd5:	e8 26 03 00 00       	call   140001f00 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
   140001bda:	48 8d 85 30 03 00 00 	lea    0x330(%rbp),%rax
   140001be1:	89 da                	mov    %ebx,%edx
   140001be3:	48 89 c1             	mov    %rax,%rcx
   140001be6:	e8 ba 00 00 00       	call   140001ca5 <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi>
   140001beb:	48 8d 85 30 03 00 00 	lea    0x330(%rbp),%rax
   140001bf2:	48 89 c1             	mov    %rax,%rcx
   140001bf5:	e8 f6 02 00 00       	call   140001ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   
}
   140001bfa:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001bfe:	48 89 c1             	mov    %rax,%rcx
   140001c01:	e8 ca 02 00 00       	call   140001ed0 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001c06:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   140001c0d:	48 89 c1             	mov    %rax,%rcx
   140001c10:	e8 bb 02 00 00       	call   140001ed0 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001c15:	48 8d 85 c0 02 00 00 	lea    0x2c0(%rbp),%rax
   140001c1c:	48 89 c1             	mov    %rax,%rcx
   140001c1f:	e8 cc 02 00 00       	call   140001ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001c24:	48 8d 85 e0 02 00 00 	lea    0x2e0(%rbp),%rax
   140001c2b:	48 89 c1             	mov    %rax,%rcx
   140001c2e:	e8 bd 02 00 00       	call   140001ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001c33:	eb 66                	jmp    140001c9b <_Z9linecheckNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x2fd>
   extension_check(extension,size_int);
   140001c35:	48 89 c3             	mov    %rax,%rbx
   140001c38:	48 8d 85 30 03 00 00 	lea    0x330(%rbp),%rax
   140001c3f:	48 89 c1             	mov    %rax,%rcx
   140001c42:	e8 a9 02 00 00       	call   140001ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001c47:	eb 03                	jmp    140001c4c <_Z9linecheckNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x2ae>
}
   140001c49:	48 89 c3             	mov    %rax,%rbx
   140001c4c:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
   140001c50:	48 89 c1             	mov    %rax,%rcx
   140001c53:	e8 78 02 00 00       	call   140001ed0 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001c58:	eb 03                	jmp    140001c5d <_Z9linecheckNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x2bf>
   140001c5a:	48 89 c3             	mov    %rax,%rbx
   140001c5d:	48 8d 85 30 01 00 00 	lea    0x130(%rbp),%rax
   140001c64:	48 89 c1             	mov    %rax,%rcx
   140001c67:	e8 64 02 00 00       	call   140001ed0 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001c6c:	eb 03                	jmp    140001c71 <_Z9linecheckNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x2d3>
   140001c6e:	48 89 c3             	mov    %rax,%rbx
   140001c71:	48 8d 85 c0 02 00 00 	lea    0x2c0(%rbp),%rax
   140001c78:	48 89 c1             	mov    %rax,%rcx
   140001c7b:	e8 70 02 00 00       	call   140001ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001c80:	48 8d 85 e0 02 00 00 	lea    0x2e0(%rbp),%rax
   140001c87:	48 89 c1             	mov    %rax,%rcx
   140001c8a:	e8 61 02 00 00       	call   140001ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001c8f:	48 89 d8             	mov    %rbx,%rax
   140001c92:	48 89 c1             	mov    %rax,%rcx
   140001c95:	e8 16 13 00 00       	call   140002fb0 <_Unwind_Resume>
   140001c9a:	90                   	nop
   140001c9b:	48 81 c4 e8 03 00 00 	add    $0x3e8,%rsp
   140001ca2:	5b                   	pop    %rbx
   140001ca3:	5d                   	pop    %rbp
   140001ca4:	c3                   	ret    

0000000140001ca5 <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi>:
void extension_check(string extension,int size)
{
   140001ca5:	55                   	push   %rbp
   140001ca6:	48 89 e5             	mov    %rsp,%rbp
   140001ca9:	48 83 ec 20          	sub    $0x20,%rsp
   140001cad:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001cb1:	89 55 18             	mov    %edx,0x18(%rbp)
    
    if (extension == "mp3" || extension == "flac" || extension == "aac")
   140001cb4:	48 8d 05 82 33 00 00 	lea    0x3382(%rip),%rax        # 14000503d <.rdata+0x3d>
   140001cbb:	48 89 c2             	mov    %rax,%rdx
   140001cbe:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140001cc2:	e8 b9 14 00 00       	call   140003180 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001cc7:	84 c0                	test   %al,%al
   140001cc9:	75 2e                	jne    140001cf9 <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0x54>
   140001ccb:	48 8d 05 6f 33 00 00 	lea    0x336f(%rip),%rax        # 140005041 <.rdata+0x41>
   140001cd2:	48 89 c2             	mov    %rax,%rdx
   140001cd5:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140001cd9:	e8 a2 14 00 00       	call   140003180 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001cde:	84 c0                	test   %al,%al
   140001ce0:	75 17                	jne    140001cf9 <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0x54>
   140001ce2:	48 8d 05 5d 33 00 00 	lea    0x335d(%rip),%rax        # 140005046 <.rdata+0x46>
   140001ce9:	48 89 c2             	mov    %rax,%rdx
   140001cec:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140001cf0:	e8 8b 14 00 00       	call   140003180 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001cf5:	84 c0                	test   %al,%al
   140001cf7:	74 07                	je     140001d00 <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0x5b>
   140001cf9:	b8 01 00 00 00       	mov    $0x1,%eax
   140001cfe:	eb 05                	jmp    140001d05 <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0x60>
   140001d00:	b8 00 00 00 00       	mov    $0x0,%eax
   140001d05:	84 c0                	test   %al,%al
   140001d07:	74 16                	je     140001d1f <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0x7a>
    {
        music+=size;
   140001d09:	8b 15 31 63 00 00    	mov    0x6331(%rip),%edx        # 140008040 <music>
   140001d0f:	8b 45 18             	mov    0x18(%rbp),%eax
   140001d12:	01 d0                	add    %edx,%eax
   140001d14:	89 05 26 63 00 00    	mov    %eax,0x6326(%rip)        # 140008040 <music>
    }
    else 
    {
        other+=size;
    }
   140001d1a:	e9 e1 00 00 00       	jmp    140001e00 <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0x15b>
    else if (extension == "jpg" || extension == "bmp" || extension == "gif")
   140001d1f:	48 8d 05 24 33 00 00 	lea    0x3324(%rip),%rax        # 14000504a <.rdata+0x4a>
   140001d26:	48 89 c2             	mov    %rax,%rdx
   140001d29:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140001d2d:	e8 4e 14 00 00       	call   140003180 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001d32:	84 c0                	test   %al,%al
   140001d34:	75 2e                	jne    140001d64 <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0xbf>
   140001d36:	48 8d 05 11 33 00 00 	lea    0x3311(%rip),%rax        # 14000504e <.rdata+0x4e>
   140001d3d:	48 89 c2             	mov    %rax,%rdx
   140001d40:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140001d44:	e8 37 14 00 00       	call   140003180 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001d49:	84 c0                	test   %al,%al
   140001d4b:	75 17                	jne    140001d64 <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0xbf>
   140001d4d:	48 8d 05 fe 32 00 00 	lea    0x32fe(%rip),%rax        # 140005052 <.rdata+0x52>
   140001d54:	48 89 c2             	mov    %rax,%rdx
   140001d57:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140001d5b:	e8 20 14 00 00       	call   140003180 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001d60:	84 c0                	test   %al,%al
   140001d62:	74 07                	je     140001d6b <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0xc6>
   140001d64:	b8 01 00 00 00       	mov    $0x1,%eax
   140001d69:	eb 05                	jmp    140001d70 <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0xcb>
   140001d6b:	b8 00 00 00 00       	mov    $0x0,%eax
   140001d70:	84 c0                	test   %al,%al
   140001d72:	74 13                	je     140001d87 <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0xe2>
        image+=size;
   140001d74:	8b 15 ce 62 00 00    	mov    0x62ce(%rip),%edx        # 140008048 <image>
   140001d7a:	8b 45 18             	mov    0x18(%rbp),%eax
   140001d7d:	01 d0                	add    %edx,%eax
   140001d7f:	89 05 c3 62 00 00    	mov    %eax,0x62c3(%rip)        # 140008048 <image>
   140001d85:	eb 79                	jmp    140001e00 <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0x15b>
    else if (extension == "mp4" || extension == "avi" || extension == "mkv")
   140001d87:	48 8d 05 c8 32 00 00 	lea    0x32c8(%rip),%rax        # 140005056 <.rdata+0x56>
   140001d8e:	48 89 c2             	mov    %rax,%rdx
   140001d91:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140001d95:	e8 e6 13 00 00       	call   140003180 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001d9a:	84 c0                	test   %al,%al
   140001d9c:	75 2e                	jne    140001dcc <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0x127>
   140001d9e:	48 8d 05 b5 32 00 00 	lea    0x32b5(%rip),%rax        # 14000505a <.rdata+0x5a>
   140001da5:	48 89 c2             	mov    %rax,%rdx
   140001da8:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140001dac:	e8 cf 13 00 00       	call   140003180 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001db1:	84 c0                	test   %al,%al
   140001db3:	75 17                	jne    140001dcc <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0x127>
   140001db5:	48 8d 05 a2 32 00 00 	lea    0x32a2(%rip),%rax        # 14000505e <.rdata+0x5e>
   140001dbc:	48 89 c2             	mov    %rax,%rdx
   140001dbf:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   140001dc3:	e8 b8 13 00 00       	call   140003180 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001dc8:	84 c0                	test   %al,%al
   140001dca:	74 07                	je     140001dd3 <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0x12e>
   140001dcc:	b8 01 00 00 00       	mov    $0x1,%eax
   140001dd1:	eb 05                	jmp    140001dd8 <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0x133>
   140001dd3:	b8 00 00 00 00       	mov    $0x0,%eax
   140001dd8:	84 c0                	test   %al,%al
   140001dda:	74 13                	je     140001def <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0x14a>
        movie+=size;
   140001ddc:	8b 15 62 62 00 00    	mov    0x6262(%rip),%edx        # 140008044 <movie>
   140001de2:	8b 45 18             	mov    0x18(%rbp),%eax
   140001de5:	01 d0                	add    %edx,%eax
   140001de7:	89 05 57 62 00 00    	mov    %eax,0x6257(%rip)        # 140008044 <movie>
   140001ded:	eb 11                	jmp    140001e00 <_Z15extension_checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi+0x15b>
        other+=size;
   140001def:	8b 15 57 62 00 00    	mov    0x6257(%rip),%edx        # 14000804c <other>
   140001df5:	8b 45 18             	mov    0x18(%rbp),%eax
   140001df8:	01 d0                	add    %edx,%eax
   140001dfa:	89 05 4c 62 00 00    	mov    %eax,0x624c(%rip)        # 14000804c <other>
   140001e00:	90                   	nop
   140001e01:	48 83 c4 20          	add    $0x20,%rsp
   140001e05:	5d                   	pop    %rbp
   140001e06:	c3                   	ret    

0000000140001e07 <__tcf_0>:
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  ///@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
   140001e07:	55                   	push   %rbp
   140001e08:	48 89 e5             	mov    %rsp,%rbp
   140001e0b:	48 83 ec 20          	sub    $0x20,%rsp
   140001e0f:	48 8d 05 3a 62 00 00 	lea    0x623a(%rip),%rax        # 140008050 <_ZStL8__ioinit>
   140001e16:	48 89 c1             	mov    %rax,%rcx
   140001e19:	e8 a2 00 00 00       	call   140001ec0 <_ZNSt8ios_base4InitD1Ev>
   140001e1e:	90                   	nop
   140001e1f:	48 83 c4 20          	add    $0x20,%rsp
   140001e23:	5d                   	pop    %rbp
   140001e24:	c3                   	ret    

0000000140001e25 <_Z41__static_initialization_and_destruction_0ii>:
   140001e25:	55                   	push   %rbp
   140001e26:	48 89 e5             	mov    %rsp,%rbp
   140001e29:	48 83 ec 20          	sub    $0x20,%rsp
   140001e2d:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140001e30:	89 55 18             	mov    %edx,0x18(%rbp)
   140001e33:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
   140001e37:	75 27                	jne    140001e60 <_Z41__static_initialization_and_destruction_0ii+0x3b>
   140001e39:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
   140001e40:	75 1e                	jne    140001e60 <_Z41__static_initialization_and_destruction_0ii+0x3b>
   140001e42:	48 8d 05 07 62 00 00 	lea    0x6207(%rip),%rax        # 140008050 <_ZStL8__ioinit>
   140001e49:	48 89 c1             	mov    %rax,%rcx
   140001e4c:	e8 77 00 00 00       	call   140001ec8 <_ZNSt8ios_base4InitC1Ev>
   140001e51:	48 8d 05 af ff ff ff 	lea    -0x51(%rip),%rax        # 140001e07 <__tcf_0>
   140001e58:	48 89 c1             	mov    %rax,%rcx
   140001e5b:	e8 90 f6 ff ff       	call   1400014f0 <atexit>
   140001e60:	90                   	nop
   140001e61:	48 83 c4 20          	add    $0x20,%rsp
   140001e65:	5d                   	pop    %rbp
   140001e66:	c3                   	ret    

0000000140001e67 <_GLOBAL__sub_I_music>:
   140001e67:	55                   	push   %rbp
   140001e68:	48 89 e5             	mov    %rsp,%rbp
   140001e6b:	48 83 ec 20          	sub    $0x20,%rsp
   140001e6f:	ba ff ff 00 00       	mov    $0xffff,%edx
   140001e74:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001e79:	e8 a7 ff ff ff       	call   140001e25 <_Z41__static_initialization_and_destruction_0ii>
   140001e7e:	90                   	nop
   140001e7f:	48 83 c4 20          	add    $0x20,%rsp
   140001e83:	5d                   	pop    %rbp
   140001e84:	c3                   	ret    
   140001e85:	90                   	nop
   140001e86:	90                   	nop
   140001e87:	90                   	nop
   140001e88:	90                   	nop
   140001e89:	90                   	nop
   140001e8a:	90                   	nop
   140001e8b:	90                   	nop
   140001e8c:	90                   	nop
   140001e8d:	90                   	nop
   140001e8e:	90                   	nop
   140001e8f:	90                   	nop

0000000140001e90 <__gxx_personality_seh0>:
   140001e90:	ff 25 ce 75 00 00    	jmp    *0x75ce(%rip)        # 140009464 <__imp___gxx_personality_seh0>
   140001e96:	90                   	nop
   140001e97:	90                   	nop

0000000140001e98 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>:
   140001e98:	ff 25 be 75 00 00    	jmp    *0x75be(%rip)        # 14000945c <__imp__ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   140001e9e:	90                   	nop
   140001e9f:	90                   	nop

0000000140001ea0 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>:
   140001ea0:	ff 25 ae 75 00 00    	jmp    *0x75ae(%rip)        # 140009454 <__imp__ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   140001ea6:	90                   	nop
   140001ea7:	90                   	nop

0000000140001ea8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
   140001ea8:	ff 25 9e 75 00 00    	jmp    *0x759e(%rip)        # 14000944c <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001eae:	90                   	nop
   140001eaf:	90                   	nop

0000000140001eb0 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>:
   140001eb0:	ff 25 8e 75 00 00    	jmp    *0x758e(%rip)        # 140009444 <__imp__ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   140001eb6:	90                   	nop
   140001eb7:	90                   	nop

0000000140001eb8 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
   140001eb8:	ff 25 7e 75 00 00    	jmp    *0x757e(%rip)        # 14000943c <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001ebe:	90                   	nop
   140001ebf:	90                   	nop

0000000140001ec0 <_ZNSt8ios_base4InitD1Ev>:
   140001ec0:	ff 25 5e 75 00 00    	jmp    *0x755e(%rip)        # 140009424 <__imp__ZNSt8ios_base4InitD1Ev>
   140001ec6:	90                   	nop
   140001ec7:	90                   	nop

0000000140001ec8 <_ZNSt8ios_base4InitC1Ev>:
   140001ec8:	ff 25 4e 75 00 00    	jmp    *0x754e(%rip)        # 14000941c <__imp__ZNSt8ios_base4InitC1Ev>
   140001ece:	90                   	nop
   140001ecf:	90                   	nop

0000000140001ed0 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>:
   140001ed0:	ff 25 3e 75 00 00    	jmp    *0x753e(%rip)        # 140009414 <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001ed6:	90                   	nop
   140001ed7:	90                   	nop

0000000140001ed8 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>:
   140001ed8:	ff 25 2e 75 00 00    	jmp    *0x752e(%rip)        # 14000940c <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
   140001ede:	90                   	nop
   140001edf:	90                   	nop

0000000140001ee0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc>:
   140001ee0:	ff 25 1e 75 00 00    	jmp    *0x751e(%rip)        # 140009404 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc>
   140001ee6:	90                   	nop
   140001ee7:	90                   	nop

0000000140001ee8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_>:
   140001ee8:	ff 25 0e 75 00 00    	jmp    *0x750e(%rip)        # 1400093fc <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_>
   140001eee:	90                   	nop
   140001eef:	90                   	nop

0000000140001ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>:
   140001ef0:	ff 25 fe 74 00 00    	jmp    *0x74fe(%rip)        # 1400093f4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001ef6:	90                   	nop
   140001ef7:	90                   	nop

0000000140001ef8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>:
   140001ef8:	ff 25 ee 74 00 00    	jmp    *0x74ee(%rip)        # 1400093ec <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
   140001efe:	90                   	nop
   140001eff:	90                   	nop

0000000140001f00 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>:
   140001f00:	ff 25 de 74 00 00    	jmp    *0x74de(%rip)        # 1400093e4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
   140001f06:	90                   	nop
   140001f07:	90                   	nop

0000000140001f08 <_ZNSolsEi>:
   140001f08:	ff 25 ce 74 00 00    	jmp    *0x74ce(%rip)        # 1400093dc <__imp__ZNSolsEi>
   140001f0e:	90                   	nop
   140001f0f:	90                   	nop

0000000140001f10 <_ZNSolsEPFRSoS_E>:
   140001f10:	ff 25 be 74 00 00    	jmp    *0x74be(%rip)        # 1400093d4 <__imp__ZNSolsEPFRSoS_E>
   140001f16:	90                   	nop
   140001f17:	90                   	nop

0000000140001f18 <_ZNSirsERi>:
   140001f18:	ff 25 ae 74 00 00    	jmp    *0x74ae(%rip)        # 1400093cc <__imp__ZNSirsERi>
   140001f1e:	90                   	nop
   140001f1f:	90                   	nop

0000000140001f20 <_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>:
   140001f20:	ff 25 9e 74 00 00    	jmp    *0x749e(%rip)        # 1400093c4 <__imp__ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>
   140001f26:	90                   	nop
   140001f27:	90                   	nop

0000000140001f28 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>:
   140001f28:	ff 25 8e 74 00 00    	jmp    *0x748e(%rip)        # 1400093bc <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>
   140001f2e:	90                   	nop
   140001f2f:	90                   	nop

0000000140001f30 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>:
   140001f30:	ff 25 7e 74 00 00    	jmp    *0x747e(%rip)        # 1400093b4 <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
   140001f36:	90                   	nop
   140001f37:	90                   	nop

0000000140001f38 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcy>:
   140001f38:	ff 25 6e 74 00 00    	jmp    *0x746e(%rip)        # 1400093ac <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcy>
   140001f3e:	90                   	nop
   140001f3f:	90                   	nop

0000000140001f40 <__do_global_dtors>:
   140001f40:	48 83 ec 28          	sub    $0x28,%rsp
   140001f44:	48 8b 05 c5 20 00 00 	mov    0x20c5(%rip),%rax        # 140004010 <p.0>
   140001f4b:	48 8b 00             	mov    (%rax),%rax
   140001f4e:	48 85 c0             	test   %rax,%rax
   140001f51:	74 22                	je     140001f75 <__do_global_dtors+0x35>
   140001f53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001f58:	ff d0                	call   *%rax
   140001f5a:	48 8b 05 af 20 00 00 	mov    0x20af(%rip),%rax        # 140004010 <p.0>
   140001f61:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140001f65:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001f69:	48 89 15 a0 20 00 00 	mov    %rdx,0x20a0(%rip)        # 140004010 <p.0>
   140001f70:	48 85 c0             	test   %rax,%rax
   140001f73:	75 e3                	jne    140001f58 <__do_global_dtors+0x18>
   140001f75:	48 83 c4 28          	add    $0x28,%rsp
   140001f79:	c3                   	ret    
   140001f7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001f80 <__do_global_ctors>:
   140001f80:	56                   	push   %rsi
   140001f81:	53                   	push   %rbx
   140001f82:	48 83 ec 28          	sub    $0x28,%rsp
   140001f86:	48 8b 15 83 34 00 00 	mov    0x3483(%rip),%rdx        # 140005410 <.refptr.__CTOR_LIST__>
   140001f8d:	48 8b 02             	mov    (%rdx),%rax
   140001f90:	89 c1                	mov    %eax,%ecx
   140001f92:	83 f8 ff             	cmp    $0xffffffff,%eax
   140001f95:	74 39                	je     140001fd0 <__do_global_ctors+0x50>
   140001f97:	85 c9                	test   %ecx,%ecx
   140001f99:	74 20                	je     140001fbb <__do_global_ctors+0x3b>
   140001f9b:	89 c8                	mov    %ecx,%eax
   140001f9d:	83 e9 01             	sub    $0x1,%ecx
   140001fa0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140001fa4:	48 29 c8             	sub    %rcx,%rax
   140001fa7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   140001fac:	0f 1f 40 00          	nopl   0x0(%rax)
   140001fb0:	ff 13                	call   *(%rbx)
   140001fb2:	48 83 eb 08          	sub    $0x8,%rbx
   140001fb6:	48 39 f3             	cmp    %rsi,%rbx
   140001fb9:	75 f5                	jne    140001fb0 <__do_global_ctors+0x30>
   140001fbb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140001f40 <__do_global_dtors>
   140001fc2:	48 83 c4 28          	add    $0x28,%rsp
   140001fc6:	5b                   	pop    %rbx
   140001fc7:	5e                   	pop    %rsi
   140001fc8:	e9 23 f5 ff ff       	jmp    1400014f0 <atexit>
   140001fcd:	0f 1f 00             	nopl   (%rax)
   140001fd0:	31 c0                	xor    %eax,%eax
   140001fd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001fd8:	44 8d 40 01          	lea    0x1(%rax),%r8d
   140001fdc:	89 c1                	mov    %eax,%ecx
   140001fde:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001fe3:	4c 89 c0             	mov    %r8,%rax
   140001fe6:	75 f0                	jne    140001fd8 <__do_global_ctors+0x58>
   140001fe8:	eb ad                	jmp    140001f97 <__do_global_ctors+0x17>
   140001fea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001ff0 <__main>:
   140001ff0:	8b 05 6a 60 00 00    	mov    0x606a(%rip),%eax        # 140008060 <initialized>
   140001ff6:	85 c0                	test   %eax,%eax
   140001ff8:	74 06                	je     140002000 <__main+0x10>
   140001ffa:	c3                   	ret    
   140001ffb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002000:	c7 05 56 60 00 00 01 	movl   $0x1,0x6056(%rip)        # 140008060 <initialized>
   140002007:	00 00 00 
   14000200a:	e9 71 ff ff ff       	jmp    140001f80 <__do_global_ctors>
   14000200f:	90                   	nop

0000000140002010 <_setargv>:
   140002010:	31 c0                	xor    %eax,%eax
   140002012:	c3                   	ret    
   140002013:	90                   	nop
   140002014:	90                   	nop
   140002015:	90                   	nop
   140002016:	90                   	nop
   140002017:	90                   	nop
   140002018:	90                   	nop
   140002019:	90                   	nop
   14000201a:	90                   	nop
   14000201b:	90                   	nop
   14000201c:	90                   	nop
   14000201d:	90                   	nop
   14000201e:	90                   	nop
   14000201f:	90                   	nop

0000000140002020 <__dyn_tls_dtor>:
   140002020:	48 83 ec 28          	sub    $0x28,%rsp
   140002024:	83 fa 03             	cmp    $0x3,%edx
   140002027:	74 17                	je     140002040 <__dyn_tls_dtor+0x20>
   140002029:	85 d2                	test   %edx,%edx
   14000202b:	74 13                	je     140002040 <__dyn_tls_dtor+0x20>
   14000202d:	b8 01 00 00 00       	mov    $0x1,%eax
   140002032:	48 83 c4 28          	add    $0x28,%rsp
   140002036:	c3                   	ret    
   140002037:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000203e:	00 00 
   140002040:	e8 9b 0a 00 00       	call   140002ae0 <__mingw_TLScallback>
   140002045:	b8 01 00 00 00       	mov    $0x1,%eax
   14000204a:	48 83 c4 28          	add    $0x28,%rsp
   14000204e:	c3                   	ret    
   14000204f:	90                   	nop

0000000140002050 <__dyn_tls_init>:
   140002050:	56                   	push   %rsi
   140002051:	53                   	push   %rbx
   140002052:	48 83 ec 28          	sub    $0x28,%rsp
   140002056:	48 8b 05 63 33 00 00 	mov    0x3363(%rip),%rax        # 1400053c0 <.refptr._CRT_MT>
   14000205d:	83 38 02             	cmpl   $0x2,(%rax)
   140002060:	74 06                	je     140002068 <__dyn_tls_init+0x18>
   140002062:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140002068:	83 fa 02             	cmp    $0x2,%edx
   14000206b:	74 13                	je     140002080 <__dyn_tls_init+0x30>
   14000206d:	83 fa 01             	cmp    $0x1,%edx
   140002070:	74 4e                	je     1400020c0 <__dyn_tls_init+0x70>
   140002072:	b8 01 00 00 00       	mov    $0x1,%eax
   140002077:	48 83 c4 28          	add    $0x28,%rsp
   14000207b:	5b                   	pop    %rbx
   14000207c:	5e                   	pop    %rsi
   14000207d:	c3                   	ret    
   14000207e:	66 90                	xchg   %ax,%ax
   140002080:	48 8d 1d d1 7f 00 00 	lea    0x7fd1(%rip),%rbx        # 14000a058 <__xd_z>
   140002087:	48 8d 35 ca 7f 00 00 	lea    0x7fca(%rip),%rsi        # 14000a058 <__xd_z>
   14000208e:	48 39 de             	cmp    %rbx,%rsi
   140002091:	74 df                	je     140002072 <__dyn_tls_init+0x22>
   140002093:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002098:	48 8b 03             	mov    (%rbx),%rax
   14000209b:	48 85 c0             	test   %rax,%rax
   14000209e:	74 02                	je     1400020a2 <__dyn_tls_init+0x52>
   1400020a0:	ff d0                	call   *%rax
   1400020a2:	48 83 c3 08          	add    $0x8,%rbx
   1400020a6:	48 39 de             	cmp    %rbx,%rsi
   1400020a9:	75 ed                	jne    140002098 <__dyn_tls_init+0x48>
   1400020ab:	b8 01 00 00 00       	mov    $0x1,%eax
   1400020b0:	48 83 c4 28          	add    $0x28,%rsp
   1400020b4:	5b                   	pop    %rbx
   1400020b5:	5e                   	pop    %rsi
   1400020b6:	c3                   	ret    
   1400020b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400020be:	00 00 
   1400020c0:	e8 1b 0a 00 00       	call   140002ae0 <__mingw_TLScallback>
   1400020c5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400020ca:	48 83 c4 28          	add    $0x28,%rsp
   1400020ce:	5b                   	pop    %rbx
   1400020cf:	5e                   	pop    %rsi
   1400020d0:	c3                   	ret    
   1400020d1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400020d8:	00 00 00 00 
   1400020dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400020e0 <__tlregdtor>:
   1400020e0:	31 c0                	xor    %eax,%eax
   1400020e2:	c3                   	ret    
   1400020e3:	90                   	nop
   1400020e4:	90                   	nop
   1400020e5:	90                   	nop
   1400020e6:	90                   	nop
   1400020e7:	90                   	nop
   1400020e8:	90                   	nop
   1400020e9:	90                   	nop
   1400020ea:	90                   	nop
   1400020eb:	90                   	nop
   1400020ec:	90                   	nop
   1400020ed:	90                   	nop
   1400020ee:	90                   	nop
   1400020ef:	90                   	nop

00000001400020f0 <_matherr>:
   1400020f0:	56                   	push   %rsi
   1400020f1:	53                   	push   %rbx
   1400020f2:	48 83 ec 78          	sub    $0x78,%rsp
   1400020f6:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
   1400020fb:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
   140002100:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
   140002106:	83 39 06             	cmpl   $0x6,(%rcx)
   140002109:	0f 87 cd 00 00 00    	ja     1400021dc <_matherr+0xec>
   14000210f:	8b 01                	mov    (%rcx),%eax
   140002111:	48 8d 15 ec 30 00 00 	lea    0x30ec(%rip),%rdx        # 140005204 <.rdata+0x124>
   140002118:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000211c:	48 01 d0             	add    %rdx,%rax
   14000211f:	ff e0                	jmp    *%rax
   140002121:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002128:	48 8d 1d d0 2f 00 00 	lea    0x2fd0(%rip),%rbx        # 1400050ff <.rdata+0x1f>
   14000212f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140002135:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000213a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000213f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140002143:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002148:	e8 03 0f 00 00       	call   140003050 <__acrt_iob_func>
   14000214d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140002154:	49 89 d8             	mov    %rbx,%r8
   140002157:	48 8d 15 7a 30 00 00 	lea    0x307a(%rip),%rdx        # 1400051d8 <.rdata+0xf8>
   14000215e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140002164:	48 89 c1             	mov    %rax,%rcx
   140002167:	49 89 f1             	mov    %rsi,%r9
   14000216a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140002170:	e8 5b 0f 00 00       	call   1400030d0 <fprintf>
   140002175:	90                   	nop
   140002176:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
   14000217b:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
   140002180:	31 c0                	xor    %eax,%eax
   140002182:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
   140002188:	48 83 c4 78          	add    $0x78,%rsp
   14000218c:	5b                   	pop    %rbx
   14000218d:	5e                   	pop    %rsi
   14000218e:	c3                   	ret    
   14000218f:	90                   	nop
   140002190:	48 8d 1d 49 2f 00 00 	lea    0x2f49(%rip),%rbx        # 1400050e0 <.rdata>
   140002197:	eb 96                	jmp    14000212f <_matherr+0x3f>
   140002199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400021a0:	48 8d 1d 99 2f 00 00 	lea    0x2f99(%rip),%rbx        # 140005140 <.rdata+0x60>
   1400021a7:	eb 86                	jmp    14000212f <_matherr+0x3f>
   1400021a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400021b0:	48 8d 1d 69 2f 00 00 	lea    0x2f69(%rip),%rbx        # 140005120 <.rdata+0x40>
   1400021b7:	e9 73 ff ff ff       	jmp    14000212f <_matherr+0x3f>
   1400021bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400021c0:	48 8d 1d c9 2f 00 00 	lea    0x2fc9(%rip),%rbx        # 140005190 <.rdata+0xb0>
   1400021c7:	e9 63 ff ff ff       	jmp    14000212f <_matherr+0x3f>
   1400021cc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400021d0:	48 8d 1d 91 2f 00 00 	lea    0x2f91(%rip),%rbx        # 140005168 <.rdata+0x88>
   1400021d7:	e9 53 ff ff ff       	jmp    14000212f <_matherr+0x3f>
   1400021dc:	48 8d 1d e3 2f 00 00 	lea    0x2fe3(%rip),%rbx        # 1400051c6 <.rdata+0xe6>
   1400021e3:	e9 47 ff ff ff       	jmp    14000212f <_matherr+0x3f>
   1400021e8:	90                   	nop
   1400021e9:	90                   	nop
   1400021ea:	90                   	nop
   1400021eb:	90                   	nop
   1400021ec:	90                   	nop
   1400021ed:	90                   	nop
   1400021ee:	90                   	nop
   1400021ef:	90                   	nop

00000001400021f0 <_fpreset>:
   1400021f0:	db e3                	fninit 
   1400021f2:	c3                   	ret    
   1400021f3:	90                   	nop
   1400021f4:	90                   	nop
   1400021f5:	90                   	nop
   1400021f6:	90                   	nop
   1400021f7:	90                   	nop
   1400021f8:	90                   	nop
   1400021f9:	90                   	nop
   1400021fa:	90                   	nop
   1400021fb:	90                   	nop
   1400021fc:	90                   	nop
   1400021fd:	90                   	nop
   1400021fe:	90                   	nop
   1400021ff:	90                   	nop

0000000140002200 <__report_error>:
   140002200:	41 54                	push   %r12
   140002202:	53                   	push   %rbx
   140002203:	48 83 ec 38          	sub    $0x38,%rsp
   140002207:	49 89 cc             	mov    %rcx,%r12
   14000220a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000220f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002214:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140002219:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000221e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140002223:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140002228:	e8 23 0e 00 00       	call   140003050 <__acrt_iob_func>
   14000222d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140002233:	ba 01 00 00 00       	mov    $0x1,%edx
   140002238:	48 8d 0d e1 2f 00 00 	lea    0x2fe1(%rip),%rcx        # 140005220 <.rdata>
   14000223f:	49 89 c1             	mov    %rax,%r9
   140002242:	e8 99 0e 00 00       	call   1400030e0 <fwrite>
   140002247:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   14000224c:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002251:	e8 fa 0d 00 00       	call   140003050 <__acrt_iob_func>
   140002256:	4c 89 e2             	mov    %r12,%rdx
   140002259:	48 89 c1             	mov    %rax,%rcx
   14000225c:	49 89 d8             	mov    %rbx,%r8
   14000225f:	e8 ac 0e 00 00       	call   140003110 <vfprintf>
   140002264:	e8 4f 0e 00 00       	call   1400030b8 <abort>
   140002269:	90                   	nop
   14000226a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140002270 <mark_section_writable>:
   140002270:	41 54                	push   %r12
   140002272:	56                   	push   %rsi
   140002273:	53                   	push   %rbx
   140002274:	48 83 ec 50          	sub    $0x50,%rsp
   140002278:	48 63 1d 45 5e 00 00 	movslq 0x5e45(%rip),%rbx        # 1400080c4 <maxSections>
   14000227f:	49 89 cc             	mov    %rcx,%r12
   140002282:	85 db                	test   %ebx,%ebx
   140002284:	0f 8e 16 01 00 00    	jle    1400023a0 <mark_section_writable+0x130>
   14000228a:	48 8b 05 37 5e 00 00 	mov    0x5e37(%rip),%rax        # 1400080c8 <the_secs>
   140002291:	45 31 c9             	xor    %r9d,%r9d
   140002294:	48 83 c0 18          	add    $0x18,%rax
   140002298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000229f:	00 
   1400022a0:	4c 8b 00             	mov    (%rax),%r8
   1400022a3:	4d 39 e0             	cmp    %r12,%r8
   1400022a6:	77 13                	ja     1400022bb <mark_section_writable+0x4b>
   1400022a8:	48 8b 50 08          	mov    0x8(%rax),%rdx
   1400022ac:	8b 52 08             	mov    0x8(%rdx),%edx
   1400022af:	49 01 d0             	add    %rdx,%r8
   1400022b2:	4d 39 c4             	cmp    %r8,%r12
   1400022b5:	0f 82 8a 00 00 00    	jb     140002345 <mark_section_writable+0xd5>
   1400022bb:	41 83 c1 01          	add    $0x1,%r9d
   1400022bf:	48 83 c0 28          	add    $0x28,%rax
   1400022c3:	41 39 d9             	cmp    %ebx,%r9d
   1400022c6:	75 d8                	jne    1400022a0 <mark_section_writable+0x30>
   1400022c8:	4c 89 e1             	mov    %r12,%rcx
   1400022cb:	e8 20 0a 00 00       	call   140002cf0 <__mingw_GetSectionForAddress>
   1400022d0:	48 89 c6             	mov    %rax,%rsi
   1400022d3:	48 85 c0             	test   %rax,%rax
   1400022d6:	0f 84 e6 00 00 00    	je     1400023c2 <mark_section_writable+0x152>
   1400022dc:	48 8b 05 e5 5d 00 00 	mov    0x5de5(%rip),%rax        # 1400080c8 <the_secs>
   1400022e3:	48 8d 1c 9b          	lea    (%rbx,%rbx,4),%rbx
   1400022e7:	48 c1 e3 03          	shl    $0x3,%rbx
   1400022eb:	48 01 d8             	add    %rbx,%rax
   1400022ee:	48 89 70 20          	mov    %rsi,0x20(%rax)
   1400022f2:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   1400022f8:	e8 23 0b 00 00       	call   140002e20 <_GetPEImageBase>
   1400022fd:	8b 56 0c             	mov    0xc(%rsi),%edx
   140002300:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140002306:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000230a:	48 8b 05 b7 5d 00 00 	mov    0x5db7(%rip),%rax        # 1400080c8 <the_secs>
   140002311:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140002316:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000231b:	ff 15 9b 6f 00 00    	call   *0x6f9b(%rip)        # 1400092bc <__imp_VirtualQuery>
   140002321:	48 85 c0             	test   %rax,%rax
   140002324:	0f 84 7d 00 00 00    	je     1400023a7 <mark_section_writable+0x137>
   14000232a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000232e:	8d 50 c0             	lea    -0x40(%rax),%edx
   140002331:	83 e2 bf             	and    $0xffffffbf,%edx
   140002334:	74 08                	je     14000233e <mark_section_writable+0xce>
   140002336:	8d 50 fc             	lea    -0x4(%rax),%edx
   140002339:	83 e2 fb             	and    $0xfffffffb,%edx
   14000233c:	75 12                	jne    140002350 <mark_section_writable+0xe0>
   14000233e:	83 05 7f 5d 00 00 01 	addl   $0x1,0x5d7f(%rip)        # 1400080c4 <maxSections>
   140002345:	48 83 c4 50          	add    $0x50,%rsp
   140002349:	5b                   	pop    %rbx
   14000234a:	5e                   	pop    %rsi
   14000234b:	41 5c                	pop    %r12
   14000234d:	c3                   	ret    
   14000234e:	66 90                	xchg   %ax,%ax
   140002350:	83 f8 02             	cmp    $0x2,%eax
   140002353:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140002358:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   14000235d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140002363:	b8 40 00 00 00       	mov    $0x40,%eax
   140002368:	44 0f 45 c0          	cmovne %eax,%r8d
   14000236c:	48 03 1d 55 5d 00 00 	add    0x5d55(%rip),%rbx        # 1400080c8 <the_secs>
   140002373:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140002377:	49 89 d9             	mov    %rbx,%r9
   14000237a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   14000237e:	ff 15 30 6f 00 00    	call   *0x6f30(%rip)        # 1400092b4 <__imp_VirtualProtect>
   140002384:	85 c0                	test   %eax,%eax
   140002386:	75 b6                	jne    14000233e <mark_section_writable+0xce>
   140002388:	ff 15 ee 6e 00 00    	call   *0x6eee(%rip)        # 14000927c <__imp_GetLastError>
   14000238e:	48 8d 0d 03 2f 00 00 	lea    0x2f03(%rip),%rcx        # 140005298 <.rdata+0x78>
   140002395:	89 c2                	mov    %eax,%edx
   140002397:	e8 64 fe ff ff       	call   140002200 <__report_error>
   14000239c:	0f 1f 40 00          	nopl   0x0(%rax)
   1400023a0:	31 db                	xor    %ebx,%ebx
   1400023a2:	e9 21 ff ff ff       	jmp    1400022c8 <mark_section_writable+0x58>
   1400023a7:	48 8b 05 1a 5d 00 00 	mov    0x5d1a(%rip),%rax        # 1400080c8 <the_secs>
   1400023ae:	8b 56 08             	mov    0x8(%rsi),%edx
   1400023b1:	48 8d 0d a8 2e 00 00 	lea    0x2ea8(%rip),%rcx        # 140005260 <.rdata+0x40>
   1400023b8:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   1400023bd:	e8 3e fe ff ff       	call   140002200 <__report_error>
   1400023c2:	4c 89 e2             	mov    %r12,%rdx
   1400023c5:	48 8d 0d 74 2e 00 00 	lea    0x2e74(%rip),%rcx        # 140005240 <.rdata+0x20>
   1400023cc:	e8 2f fe ff ff       	call   140002200 <__report_error>
   1400023d1:	90                   	nop
   1400023d2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400023d9:	00 00 00 00 
   1400023dd:	0f 1f 00             	nopl   (%rax)

00000001400023e0 <_pei386_runtime_relocator>:
   1400023e0:	55                   	push   %rbp
   1400023e1:	41 57                	push   %r15
   1400023e3:	41 56                	push   %r14
   1400023e5:	41 55                	push   %r13
   1400023e7:	41 54                	push   %r12
   1400023e9:	57                   	push   %rdi
   1400023ea:	56                   	push   %rsi
   1400023eb:	53                   	push   %rbx
   1400023ec:	48 83 ec 48          	sub    $0x48,%rsp
   1400023f0:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   1400023f5:	8b 35 c5 5c 00 00    	mov    0x5cc5(%rip),%esi        # 1400080c0 <was_init.0>
   1400023fb:	85 f6                	test   %esi,%esi
   1400023fd:	74 11                	je     140002410 <_pei386_runtime_relocator+0x30>
   1400023ff:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140002403:	5b                   	pop    %rbx
   140002404:	5e                   	pop    %rsi
   140002405:	5f                   	pop    %rdi
   140002406:	41 5c                	pop    %r12
   140002408:	41 5d                	pop    %r13
   14000240a:	41 5e                	pop    %r14
   14000240c:	41 5f                	pop    %r15
   14000240e:	5d                   	pop    %rbp
   14000240f:	c3                   	ret    
   140002410:	c7 05 a6 5c 00 00 01 	movl   $0x1,0x5ca6(%rip)        # 1400080c0 <was_init.0>
   140002417:	00 00 00 
   14000241a:	e8 51 09 00 00       	call   140002d70 <__mingw_GetSectionCount>
   14000241f:	48 98                	cltq   
   140002421:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002425:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   14000242c:	00 
   14000242d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140002431:	e8 8a 0b 00 00       	call   140002fc0 <___chkstk_ms>
   140002436:	48 8b 3d e3 2f 00 00 	mov    0x2fe3(%rip),%rdi        # 140005420 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   14000243d:	48 8b 1d ec 2f 00 00 	mov    0x2fec(%rip),%rbx        # 140005430 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140002444:	c7 05 76 5c 00 00 00 	movl   $0x0,0x5c76(%rip)        # 1400080c4 <maxSections>
   14000244b:	00 00 00 
   14000244e:	48 29 c4             	sub    %rax,%rsp
   140002451:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140002456:	48 89 05 6b 5c 00 00 	mov    %rax,0x5c6b(%rip)        # 1400080c8 <the_secs>
   14000245d:	48 89 f8             	mov    %rdi,%rax
   140002460:	48 29 d8             	sub    %rbx,%rax
   140002463:	48 83 f8 07          	cmp    $0x7,%rax
   140002467:	7e 96                	jle    1400023ff <_pei386_runtime_relocator+0x1f>
   140002469:	8b 13                	mov    (%rbx),%edx
   14000246b:	48 83 f8 0b          	cmp    $0xb,%rax
   14000246f:	0f 8f 83 01 00 00    	jg     1400025f8 <_pei386_runtime_relocator+0x218>
   140002475:	8b 03                	mov    (%rbx),%eax
   140002477:	85 c0                	test   %eax,%eax
   140002479:	0f 85 29 02 00 00    	jne    1400026a8 <_pei386_runtime_relocator+0x2c8>
   14000247f:	8b 43 04             	mov    0x4(%rbx),%eax
   140002482:	85 c0                	test   %eax,%eax
   140002484:	0f 85 1e 02 00 00    	jne    1400026a8 <_pei386_runtime_relocator+0x2c8>
   14000248a:	8b 53 08             	mov    0x8(%rbx),%edx
   14000248d:	83 fa 01             	cmp    $0x1,%edx
   140002490:	0f 85 72 02 00 00    	jne    140002708 <_pei386_runtime_relocator+0x328>
   140002496:	48 83 c3 0c          	add    $0xc,%rbx
   14000249a:	48 39 fb             	cmp    %rdi,%rbx
   14000249d:	0f 83 5c ff ff ff    	jae    1400023ff <_pei386_runtime_relocator+0x1f>
   1400024a3:	4c 8b 3d a6 2f 00 00 	mov    0x2fa6(%rip),%r15        # 140005450 <.refptr.__image_base__>
   1400024aa:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
   1400024b1:	ff ff ff 
   1400024b4:	eb 5d                	jmp    140002513 <_pei386_runtime_relocator+0x133>
   1400024b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400024bd:	00 00 00 
   1400024c0:	41 0f b6 06          	movzbl (%r14),%eax
   1400024c4:	49 89 c3             	mov    %rax,%r11
   1400024c7:	49 81 cb 00 ff ff ff 	or     $0xffffffffffffff00,%r11
   1400024ce:	84 c0                	test   %al,%al
   1400024d0:	49 0f 48 c3          	cmovs  %r11,%rax
   1400024d4:	48 29 c8             	sub    %rcx,%rax
   1400024d7:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   1400024de:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   1400024e2:	75 17                	jne    1400024fb <_pei386_runtime_relocator+0x11b>
   1400024e4:	49 83 fd 80          	cmp    $0xffffffffffffff80,%r13
   1400024e8:	0f 8c 06 02 00 00    	jl     1400026f4 <_pei386_runtime_relocator+0x314>
   1400024ee:	49 81 fd ff 00 00 00 	cmp    $0xff,%r13
   1400024f5:	0f 8f f9 01 00 00    	jg     1400026f4 <_pei386_runtime_relocator+0x314>
   1400024fb:	4c 89 f1             	mov    %r14,%rcx
   1400024fe:	e8 6d fd ff ff       	call   140002270 <mark_section_writable>
   140002503:	45 88 2e             	mov    %r13b,(%r14)
   140002506:	48 83 c3 0c          	add    $0xc,%rbx
   14000250a:	48 39 fb             	cmp    %rdi,%rbx
   14000250d:	0f 83 8d 00 00 00    	jae    1400025a0 <_pei386_runtime_relocator+0x1c0>
   140002513:	8b 0b                	mov    (%rbx),%ecx
   140002515:	44 8b 43 08          	mov    0x8(%rbx),%r8d
   140002519:	44 8b 73 04          	mov    0x4(%rbx),%r14d
   14000251d:	4c 01 f9             	add    %r15,%rcx
   140002520:	41 0f b6 d0          	movzbl %r8b,%edx
   140002524:	4c 8b 09             	mov    (%rcx),%r9
   140002527:	4d 01 fe             	add    %r15,%r14
   14000252a:	83 fa 20             	cmp    $0x20,%edx
   14000252d:	0f 84 25 01 00 00    	je     140002658 <_pei386_runtime_relocator+0x278>
   140002533:	0f 87 e7 00 00 00    	ja     140002620 <_pei386_runtime_relocator+0x240>
   140002539:	83 fa 08             	cmp    $0x8,%edx
   14000253c:	74 82                	je     1400024c0 <_pei386_runtime_relocator+0xe0>
   14000253e:	83 fa 10             	cmp    $0x10,%edx
   140002541:	0f 85 a1 01 00 00    	jne    1400026e8 <_pei386_runtime_relocator+0x308>
   140002547:	41 0f b7 06          	movzwl (%r14),%eax
   14000254b:	49 89 c3             	mov    %rax,%r11
   14000254e:	49 81 cb 00 00 ff ff 	or     $0xffffffffffff0000,%r11
   140002555:	66 85 c0             	test   %ax,%ax
   140002558:	49 0f 48 c3          	cmovs  %r11,%rax
   14000255c:	48 29 c8             	sub    %rcx,%rax
   14000255f:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140002566:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   14000256a:	75 1a                	jne    140002586 <_pei386_runtime_relocator+0x1a6>
   14000256c:	49 81 fd 00 80 ff ff 	cmp    $0xffffffffffff8000,%r13
   140002573:	0f 8c 7b 01 00 00    	jl     1400026f4 <_pei386_runtime_relocator+0x314>
   140002579:	49 81 fd ff ff 00 00 	cmp    $0xffff,%r13
   140002580:	0f 8f 6e 01 00 00    	jg     1400026f4 <_pei386_runtime_relocator+0x314>
   140002586:	4c 89 f1             	mov    %r14,%rcx
   140002589:	48 83 c3 0c          	add    $0xc,%rbx
   14000258d:	e8 de fc ff ff       	call   140002270 <mark_section_writable>
   140002592:	66 45 89 2e          	mov    %r13w,(%r14)
   140002596:	48 39 fb             	cmp    %rdi,%rbx
   140002599:	0f 82 74 ff ff ff    	jb     140002513 <_pei386_runtime_relocator+0x133>
   14000259f:	90                   	nop
   1400025a0:	8b 15 1e 5b 00 00    	mov    0x5b1e(%rip),%edx        # 1400080c4 <maxSections>
   1400025a6:	85 d2                	test   %edx,%edx
   1400025a8:	0f 8e 51 fe ff ff    	jle    1400023ff <_pei386_runtime_relocator+0x1f>
   1400025ae:	48 8b 3d ff 6c 00 00 	mov    0x6cff(%rip),%rdi        # 1400092b4 <__imp_VirtualProtect>
   1400025b5:	31 db                	xor    %ebx,%ebx
   1400025b7:	4c 8d 65 fc          	lea    -0x4(%rbp),%r12
   1400025bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400025c0:	48 8b 05 01 5b 00 00 	mov    0x5b01(%rip),%rax        # 1400080c8 <the_secs>
   1400025c7:	48 01 d8             	add    %rbx,%rax
   1400025ca:	44 8b 00             	mov    (%rax),%r8d
   1400025cd:	45 85 c0             	test   %r8d,%r8d
   1400025d0:	74 0d                	je     1400025df <_pei386_runtime_relocator+0x1ff>
   1400025d2:	48 8b 50 10          	mov    0x10(%rax),%rdx
   1400025d6:	48 8b 48 08          	mov    0x8(%rax),%rcx
   1400025da:	4d 89 e1             	mov    %r12,%r9
   1400025dd:	ff d7                	call   *%rdi
   1400025df:	83 c6 01             	add    $0x1,%esi
   1400025e2:	48 83 c3 28          	add    $0x28,%rbx
   1400025e6:	3b 35 d8 5a 00 00    	cmp    0x5ad8(%rip),%esi        # 1400080c4 <maxSections>
   1400025ec:	7c d2                	jl     1400025c0 <_pei386_runtime_relocator+0x1e0>
   1400025ee:	e9 0c fe ff ff       	jmp    1400023ff <_pei386_runtime_relocator+0x1f>
   1400025f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400025f8:	85 d2                	test   %edx,%edx
   1400025fa:	0f 85 a8 00 00 00    	jne    1400026a8 <_pei386_runtime_relocator+0x2c8>
   140002600:	8b 43 04             	mov    0x4(%rbx),%eax
   140002603:	89 c2                	mov    %eax,%edx
   140002605:	0b 53 08             	or     0x8(%rbx),%edx
   140002608:	0f 85 74 fe ff ff    	jne    140002482 <_pei386_runtime_relocator+0xa2>
   14000260e:	48 83 c3 0c          	add    $0xc,%rbx
   140002612:	e9 5e fe ff ff       	jmp    140002475 <_pei386_runtime_relocator+0x95>
   140002617:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000261e:	00 00 
   140002620:	83 fa 40             	cmp    $0x40,%edx
   140002623:	0f 85 bf 00 00 00    	jne    1400026e8 <_pei386_runtime_relocator+0x308>
   140002629:	49 8b 06             	mov    (%r14),%rax
   14000262c:	48 29 c8             	sub    %rcx,%rax
   14000262f:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140002636:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   14000263a:	75 09                	jne    140002645 <_pei386_runtime_relocator+0x265>
   14000263c:	4d 85 ed             	test   %r13,%r13
   14000263f:	0f 89 af 00 00 00    	jns    1400026f4 <_pei386_runtime_relocator+0x314>
   140002645:	4c 89 f1             	mov    %r14,%rcx
   140002648:	e8 23 fc ff ff       	call   140002270 <mark_section_writable>
   14000264d:	4d 89 2e             	mov    %r13,(%r14)
   140002650:	e9 b1 fe ff ff       	jmp    140002506 <_pei386_runtime_relocator+0x126>
   140002655:	0f 1f 00             	nopl   (%rax)
   140002658:	41 8b 06             	mov    (%r14),%eax
   14000265b:	49 89 c2             	mov    %rax,%r10
   14000265e:	4c 09 e0             	or     %r12,%rax
   140002661:	45 85 d2             	test   %r10d,%r10d
   140002664:	49 0f 49 c2          	cmovns %r10,%rax
   140002668:	48 29 c8             	sub    %rcx,%rax
   14000266b:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140002672:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140002676:	75 19                	jne    140002691 <_pei386_runtime_relocator+0x2b1>
   140002678:	48 b8 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rax
   14000267f:	ff ff ff 
   140002682:	49 39 c5             	cmp    %rax,%r13
   140002685:	7e 6d                	jle    1400026f4 <_pei386_runtime_relocator+0x314>
   140002687:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000268c:	49 39 c5             	cmp    %rax,%r13
   14000268f:	7f 63                	jg     1400026f4 <_pei386_runtime_relocator+0x314>
   140002691:	4c 89 f1             	mov    %r14,%rcx
   140002694:	e8 d7 fb ff ff       	call   140002270 <mark_section_writable>
   140002699:	45 89 2e             	mov    %r13d,(%r14)
   14000269c:	e9 65 fe ff ff       	jmp    140002506 <_pei386_runtime_relocator+0x126>
   1400026a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400026a8:	48 39 fb             	cmp    %rdi,%rbx
   1400026ab:	0f 83 4e fd ff ff    	jae    1400023ff <_pei386_runtime_relocator+0x1f>
   1400026b1:	4c 8b 35 98 2d 00 00 	mov    0x2d98(%rip),%r14        # 140005450 <.refptr.__image_base__>
   1400026b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400026bf:	00 
   1400026c0:	44 8b 63 04          	mov    0x4(%rbx),%r12d
   1400026c4:	44 8b 2b             	mov    (%rbx),%r13d
   1400026c7:	48 83 c3 08          	add    $0x8,%rbx
   1400026cb:	4d 01 f4             	add    %r14,%r12
   1400026ce:	45 03 2c 24          	add    (%r12),%r13d
   1400026d2:	4c 89 e1             	mov    %r12,%rcx
   1400026d5:	e8 96 fb ff ff       	call   140002270 <mark_section_writable>
   1400026da:	45 89 2c 24          	mov    %r13d,(%r12)
   1400026de:	48 39 fb             	cmp    %rdi,%rbx
   1400026e1:	72 dd                	jb     1400026c0 <_pei386_runtime_relocator+0x2e0>
   1400026e3:	e9 b8 fe ff ff       	jmp    1400025a0 <_pei386_runtime_relocator+0x1c0>
   1400026e8:	48 8d 0d 09 2c 00 00 	lea    0x2c09(%rip),%rcx        # 1400052f8 <.rdata+0xd8>
   1400026ef:	e8 0c fb ff ff       	call   140002200 <__report_error>
   1400026f4:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
   1400026f9:	4d 89 f0             	mov    %r14,%r8
   1400026fc:	48 8d 0d 25 2c 00 00 	lea    0x2c25(%rip),%rcx        # 140005328 <.rdata+0x108>
   140002703:	e8 f8 fa ff ff       	call   140002200 <__report_error>
   140002708:	48 8d 0d b1 2b 00 00 	lea    0x2bb1(%rip),%rcx        # 1400052c0 <.rdata+0xa0>
   14000270f:	e8 ec fa ff ff       	call   140002200 <__report_error>
   140002714:	90                   	nop
   140002715:	90                   	nop
   140002716:	90                   	nop
   140002717:	90                   	nop
   140002718:	90                   	nop
   140002719:	90                   	nop
   14000271a:	90                   	nop
   14000271b:	90                   	nop
   14000271c:	90                   	nop
   14000271d:	90                   	nop
   14000271e:	90                   	nop
   14000271f:	90                   	nop

0000000140002720 <__mingw_raise_matherr>:
   140002720:	48 83 ec 58          	sub    $0x58,%rsp
   140002724:	48 8b 05 a5 59 00 00 	mov    0x59a5(%rip),%rax        # 1400080d0 <stUserMathErr>
   14000272b:	48 85 c0             	test   %rax,%rax
   14000272e:	74 2c                	je     14000275c <__mingw_raise_matherr+0x3c>
   140002730:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140002737:	00 00 
   140002739:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   14000273d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140002742:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140002747:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
   14000274d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
   140002753:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140002759:	ff d0                	call   *%rax
   14000275b:	90                   	nop
   14000275c:	48 83 c4 58          	add    $0x58,%rsp
   140002760:	c3                   	ret    
   140002761:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002768:	00 00 00 00 
   14000276c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002770 <__mingw_setusermatherr>:
   140002770:	48 89 0d 59 59 00 00 	mov    %rcx,0x5959(%rip)        # 1400080d0 <stUserMathErr>
   140002777:	e9 14 09 00 00       	jmp    140003090 <__setusermatherr>
   14000277c:	90                   	nop
   14000277d:	90                   	nop
   14000277e:	90                   	nop
   14000277f:	90                   	nop

0000000140002780 <_gnu_exception_handler>:
   140002780:	41 54                	push   %r12
   140002782:	48 83 ec 20          	sub    $0x20,%rsp
   140002786:	48 8b 11             	mov    (%rcx),%rdx
   140002789:	8b 02                	mov    (%rdx),%eax
   14000278b:	49 89 cc             	mov    %rcx,%r12
   14000278e:	89 c1                	mov    %eax,%ecx
   140002790:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140002796:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   14000279c:	0f 84 be 00 00 00    	je     140002860 <_gnu_exception_handler+0xe0>
   1400027a2:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   1400027a7:	0f 87 9a 00 00 00    	ja     140002847 <_gnu_exception_handler+0xc7>
   1400027ad:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   1400027b2:	76 44                	jbe    1400027f8 <_gnu_exception_handler+0x78>
   1400027b4:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   1400027b9:	83 f8 09             	cmp    $0x9,%eax
   1400027bc:	77 2a                	ja     1400027e8 <_gnu_exception_handler+0x68>
   1400027be:	48 8d 15 bb 2b 00 00 	lea    0x2bbb(%rip),%rdx        # 140005380 <.rdata>
   1400027c5:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   1400027c9:	48 01 d0             	add    %rdx,%rax
   1400027cc:	ff e0                	jmp    *%rax
   1400027ce:	66 90                	xchg   %ax,%ax
   1400027d0:	ba 01 00 00 00       	mov    $0x1,%edx
   1400027d5:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400027da:	e8 19 09 00 00       	call   1400030f8 <signal>
   1400027df:	e8 0c fa ff ff       	call   1400021f0 <_fpreset>
   1400027e4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400027e8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400027ed:	48 83 c4 20          	add    $0x20,%rsp
   1400027f1:	41 5c                	pop    %r12
   1400027f3:	c3                   	ret    
   1400027f4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400027f8:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   1400027fd:	0f 84 dd 00 00 00    	je     1400028e0 <_gnu_exception_handler+0x160>
   140002803:	76 3b                	jbe    140002840 <_gnu_exception_handler+0xc0>
   140002805:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   14000280a:	74 dc                	je     1400027e8 <_gnu_exception_handler+0x68>
   14000280c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140002811:	75 34                	jne    140002847 <_gnu_exception_handler+0xc7>
   140002813:	31 d2                	xor    %edx,%edx
   140002815:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000281a:	e8 d9 08 00 00       	call   1400030f8 <signal>
   14000281f:	48 83 f8 01          	cmp    $0x1,%rax
   140002823:	0f 84 e3 00 00 00    	je     14000290c <_gnu_exception_handler+0x18c>
   140002829:	48 85 c0             	test   %rax,%rax
   14000282c:	74 19                	je     140002847 <_gnu_exception_handler+0xc7>
   14000282e:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002833:	ff d0                	call   *%rax
   140002835:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000283a:	eb b1                	jmp    1400027ed <_gnu_exception_handler+0x6d>
   14000283c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002840:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140002845:	74 a1                	je     1400027e8 <_gnu_exception_handler+0x68>
   140002847:	48 8b 05 a2 58 00 00 	mov    0x58a2(%rip),%rax        # 1400080f0 <__mingw_oldexcpt_handler>
   14000284e:	48 85 c0             	test   %rax,%rax
   140002851:	74 1d                	je     140002870 <_gnu_exception_handler+0xf0>
   140002853:	4c 89 e1             	mov    %r12,%rcx
   140002856:	48 83 c4 20          	add    $0x20,%rsp
   14000285a:	41 5c                	pop    %r12
   14000285c:	48 ff e0             	rex.W jmp *%rax
   14000285f:	90                   	nop
   140002860:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140002864:	0f 85 38 ff ff ff    	jne    1400027a2 <_gnu_exception_handler+0x22>
   14000286a:	e9 79 ff ff ff       	jmp    1400027e8 <_gnu_exception_handler+0x68>
   14000286f:	90                   	nop
   140002870:	31 c0                	xor    %eax,%eax
   140002872:	48 83 c4 20          	add    $0x20,%rsp
   140002876:	41 5c                	pop    %r12
   140002878:	c3                   	ret    
   140002879:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002880:	31 d2                	xor    %edx,%edx
   140002882:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002887:	e8 6c 08 00 00       	call   1400030f8 <signal>
   14000288c:	48 83 f8 01          	cmp    $0x1,%rax
   140002890:	0f 84 3a ff ff ff    	je     1400027d0 <_gnu_exception_handler+0x50>
   140002896:	48 85 c0             	test   %rax,%rax
   140002899:	74 ac                	je     140002847 <_gnu_exception_handler+0xc7>
   14000289b:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400028a0:	ff d0                	call   *%rax
   1400028a2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400028a7:	e9 41 ff ff ff       	jmp    1400027ed <_gnu_exception_handler+0x6d>
   1400028ac:	0f 1f 40 00          	nopl   0x0(%rax)
   1400028b0:	31 d2                	xor    %edx,%edx
   1400028b2:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400028b7:	e8 3c 08 00 00       	call   1400030f8 <signal>
   1400028bc:	48 83 f8 01          	cmp    $0x1,%rax
   1400028c0:	75 d4                	jne    140002896 <_gnu_exception_handler+0x116>
   1400028c2:	ba 01 00 00 00       	mov    $0x1,%edx
   1400028c7:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400028cc:	e8 27 08 00 00       	call   1400030f8 <signal>
   1400028d1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400028d6:	e9 12 ff ff ff       	jmp    1400027ed <_gnu_exception_handler+0x6d>
   1400028db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400028e0:	31 d2                	xor    %edx,%edx
   1400028e2:	b9 0b 00 00 00       	mov    $0xb,%ecx
   1400028e7:	e8 0c 08 00 00       	call   1400030f8 <signal>
   1400028ec:	48 83 f8 01          	cmp    $0x1,%rax
   1400028f0:	74 31                	je     140002923 <_gnu_exception_handler+0x1a3>
   1400028f2:	48 85 c0             	test   %rax,%rax
   1400028f5:	0f 84 4c ff ff ff    	je     140002847 <_gnu_exception_handler+0xc7>
   1400028fb:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002900:	ff d0                	call   *%rax
   140002902:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002907:	e9 e1 fe ff ff       	jmp    1400027ed <_gnu_exception_handler+0x6d>
   14000290c:	ba 01 00 00 00       	mov    $0x1,%edx
   140002911:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002916:	e8 dd 07 00 00       	call   1400030f8 <signal>
   14000291b:	83 c8 ff             	or     $0xffffffff,%eax
   14000291e:	e9 ca fe ff ff       	jmp    1400027ed <_gnu_exception_handler+0x6d>
   140002923:	ba 01 00 00 00       	mov    $0x1,%edx
   140002928:	b9 0b 00 00 00       	mov    $0xb,%ecx
   14000292d:	e8 c6 07 00 00       	call   1400030f8 <signal>
   140002932:	83 c8 ff             	or     $0xffffffff,%eax
   140002935:	e9 b3 fe ff ff       	jmp    1400027ed <_gnu_exception_handler+0x6d>
   14000293a:	90                   	nop
   14000293b:	90                   	nop
   14000293c:	90                   	nop
   14000293d:	90                   	nop
   14000293e:	90                   	nop
   14000293f:	90                   	nop

0000000140002940 <__mingwthr_run_key_dtors.part.0>:
   140002940:	41 55                	push   %r13
   140002942:	41 54                	push   %r12
   140002944:	57                   	push   %rdi
   140002945:	56                   	push   %rsi
   140002946:	53                   	push   %rbx
   140002947:	48 83 ec 20          	sub    $0x20,%rsp
   14000294b:	4c 8d 2d ce 57 00 00 	lea    0x57ce(%rip),%r13        # 140008120 <__mingwthr_cs>
   140002952:	4c 89 e9             	mov    %r13,%rcx
   140002955:	ff 15 19 69 00 00    	call   *0x6919(%rip)        # 140009274 <__imp_EnterCriticalSection>
   14000295b:	48 8b 1d 9e 57 00 00 	mov    0x579e(%rip),%rbx        # 140008100 <key_dtor_list>
   140002962:	48 85 db             	test   %rbx,%rbx
   140002965:	74 35                	je     14000299c <__mingwthr_run_key_dtors.part.0+0x5c>
   140002967:	48 8b 3d 3e 69 00 00 	mov    0x693e(%rip),%rdi        # 1400092ac <__imp_TlsGetValue>
   14000296e:	48 8b 35 07 69 00 00 	mov    0x6907(%rip),%rsi        # 14000927c <__imp_GetLastError>
   140002975:	0f 1f 00             	nopl   (%rax)
   140002978:	8b 0b                	mov    (%rbx),%ecx
   14000297a:	ff d7                	call   *%rdi
   14000297c:	49 89 c4             	mov    %rax,%r12
   14000297f:	ff d6                	call   *%rsi
   140002981:	85 c0                	test   %eax,%eax
   140002983:	75 0e                	jne    140002993 <__mingwthr_run_key_dtors.part.0+0x53>
   140002985:	4d 85 e4             	test   %r12,%r12
   140002988:	74 09                	je     140002993 <__mingwthr_run_key_dtors.part.0+0x53>
   14000298a:	48 8b 43 08          	mov    0x8(%rbx),%rax
   14000298e:	4c 89 e1             	mov    %r12,%rcx
   140002991:	ff d0                	call   *%rax
   140002993:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140002997:	48 85 db             	test   %rbx,%rbx
   14000299a:	75 dc                	jne    140002978 <__mingwthr_run_key_dtors.part.0+0x38>
   14000299c:	4c 89 e9             	mov    %r13,%rcx
   14000299f:	48 83 c4 20          	add    $0x20,%rsp
   1400029a3:	5b                   	pop    %rbx
   1400029a4:	5e                   	pop    %rsi
   1400029a5:	5f                   	pop    %rdi
   1400029a6:	41 5c                	pop    %r12
   1400029a8:	41 5d                	pop    %r13
   1400029aa:	48 ff 25 e3 68 00 00 	rex.W jmp *0x68e3(%rip)        # 140009294 <__imp_LeaveCriticalSection>
   1400029b1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400029b8:	00 00 00 00 
   1400029bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400029c0 <___w64_mingwthr_add_key_dtor>:
   1400029c0:	41 54                	push   %r12
   1400029c2:	57                   	push   %rdi
   1400029c3:	56                   	push   %rsi
   1400029c4:	53                   	push   %rbx
   1400029c5:	48 83 ec 28          	sub    $0x28,%rsp
   1400029c9:	8b 05 39 57 00 00    	mov    0x5739(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   1400029cf:	89 cf                	mov    %ecx,%edi
   1400029d1:	48 89 d6             	mov    %rdx,%rsi
   1400029d4:	85 c0                	test   %eax,%eax
   1400029d6:	75 10                	jne    1400029e8 <___w64_mingwthr_add_key_dtor+0x28>
   1400029d8:	48 83 c4 28          	add    $0x28,%rsp
   1400029dc:	5b                   	pop    %rbx
   1400029dd:	5e                   	pop    %rsi
   1400029de:	5f                   	pop    %rdi
   1400029df:	41 5c                	pop    %r12
   1400029e1:	c3                   	ret    
   1400029e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400029e8:	ba 18 00 00 00       	mov    $0x18,%edx
   1400029ed:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400029f2:	e8 c9 06 00 00       	call   1400030c0 <calloc>
   1400029f7:	48 89 c3             	mov    %rax,%rbx
   1400029fa:	48 85 c0             	test   %rax,%rax
   1400029fd:	74 3d                	je     140002a3c <___w64_mingwthr_add_key_dtor+0x7c>
   1400029ff:	4c 8d 25 1a 57 00 00 	lea    0x571a(%rip),%r12        # 140008120 <__mingwthr_cs>
   140002a06:	89 38                	mov    %edi,(%rax)
   140002a08:	48 89 70 08          	mov    %rsi,0x8(%rax)
   140002a0c:	4c 89 e1             	mov    %r12,%rcx
   140002a0f:	ff 15 5f 68 00 00    	call   *0x685f(%rip)        # 140009274 <__imp_EnterCriticalSection>
   140002a15:	48 8b 05 e4 56 00 00 	mov    0x56e4(%rip),%rax        # 140008100 <key_dtor_list>
   140002a1c:	4c 89 e1             	mov    %r12,%rcx
   140002a1f:	48 89 1d da 56 00 00 	mov    %rbx,0x56da(%rip)        # 140008100 <key_dtor_list>
   140002a26:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140002a2a:	ff 15 64 68 00 00    	call   *0x6864(%rip)        # 140009294 <__imp_LeaveCriticalSection>
   140002a30:	31 c0                	xor    %eax,%eax
   140002a32:	48 83 c4 28          	add    $0x28,%rsp
   140002a36:	5b                   	pop    %rbx
   140002a37:	5e                   	pop    %rsi
   140002a38:	5f                   	pop    %rdi
   140002a39:	41 5c                	pop    %r12
   140002a3b:	c3                   	ret    
   140002a3c:	83 c8 ff             	or     $0xffffffff,%eax
   140002a3f:	eb 97                	jmp    1400029d8 <___w64_mingwthr_add_key_dtor+0x18>
   140002a41:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002a48:	00 00 00 00 
   140002a4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002a50 <___w64_mingwthr_remove_key_dtor>:
   140002a50:	41 54                	push   %r12
   140002a52:	53                   	push   %rbx
   140002a53:	48 83 ec 28          	sub    $0x28,%rsp
   140002a57:	8b 05 ab 56 00 00    	mov    0x56ab(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002a5d:	89 cb                	mov    %ecx,%ebx
   140002a5f:	85 c0                	test   %eax,%eax
   140002a61:	75 0d                	jne    140002a70 <___w64_mingwthr_remove_key_dtor+0x20>
   140002a63:	31 c0                	xor    %eax,%eax
   140002a65:	48 83 c4 28          	add    $0x28,%rsp
   140002a69:	5b                   	pop    %rbx
   140002a6a:	41 5c                	pop    %r12
   140002a6c:	c3                   	ret    
   140002a6d:	0f 1f 00             	nopl   (%rax)
   140002a70:	4c 8d 25 a9 56 00 00 	lea    0x56a9(%rip),%r12        # 140008120 <__mingwthr_cs>
   140002a77:	4c 89 e1             	mov    %r12,%rcx
   140002a7a:	ff 15 f4 67 00 00    	call   *0x67f4(%rip)        # 140009274 <__imp_EnterCriticalSection>
   140002a80:	48 8b 0d 79 56 00 00 	mov    0x5679(%rip),%rcx        # 140008100 <key_dtor_list>
   140002a87:	48 85 c9             	test   %rcx,%rcx
   140002a8a:	74 27                	je     140002ab3 <___w64_mingwthr_remove_key_dtor+0x63>
   140002a8c:	31 d2                	xor    %edx,%edx
   140002a8e:	eb 0b                	jmp    140002a9b <___w64_mingwthr_remove_key_dtor+0x4b>
   140002a90:	48 89 ca             	mov    %rcx,%rdx
   140002a93:	48 85 c0             	test   %rax,%rax
   140002a96:	74 1b                	je     140002ab3 <___w64_mingwthr_remove_key_dtor+0x63>
   140002a98:	48 89 c1             	mov    %rax,%rcx
   140002a9b:	8b 01                	mov    (%rcx),%eax
   140002a9d:	39 d8                	cmp    %ebx,%eax
   140002a9f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002aa3:	75 eb                	jne    140002a90 <___w64_mingwthr_remove_key_dtor+0x40>
   140002aa5:	48 85 d2             	test   %rdx,%rdx
   140002aa8:	74 26                	je     140002ad0 <___w64_mingwthr_remove_key_dtor+0x80>
   140002aaa:	48 89 42 10          	mov    %rax,0x10(%rdx)
   140002aae:	e8 25 06 00 00       	call   1400030d8 <free>
   140002ab3:	4c 89 e1             	mov    %r12,%rcx
   140002ab6:	ff 15 d8 67 00 00    	call   *0x67d8(%rip)        # 140009294 <__imp_LeaveCriticalSection>
   140002abc:	31 c0                	xor    %eax,%eax
   140002abe:	48 83 c4 28          	add    $0x28,%rsp
   140002ac2:	5b                   	pop    %rbx
   140002ac3:	41 5c                	pop    %r12
   140002ac5:	c3                   	ret    
   140002ac6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002acd:	00 00 00 
   140002ad0:	48 89 05 29 56 00 00 	mov    %rax,0x5629(%rip)        # 140008100 <key_dtor_list>
   140002ad7:	eb d5                	jmp    140002aae <___w64_mingwthr_remove_key_dtor+0x5e>
   140002ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002ae0 <__mingw_TLScallback>:
   140002ae0:	53                   	push   %rbx
   140002ae1:	48 83 ec 20          	sub    $0x20,%rsp
   140002ae5:	83 fa 02             	cmp    $0x2,%edx
   140002ae8:	74 46                	je     140002b30 <__mingw_TLScallback+0x50>
   140002aea:	77 2c                	ja     140002b18 <__mingw_TLScallback+0x38>
   140002aec:	85 d2                	test   %edx,%edx
   140002aee:	74 50                	je     140002b40 <__mingw_TLScallback+0x60>
   140002af0:	8b 05 12 56 00 00    	mov    0x5612(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002af6:	85 c0                	test   %eax,%eax
   140002af8:	0f 84 b2 00 00 00    	je     140002bb0 <__mingw_TLScallback+0xd0>
   140002afe:	c7 05 00 56 00 00 01 	movl   $0x1,0x5600(%rip)        # 140008108 <__mingwthr_cs_init>
   140002b05:	00 00 00 
   140002b08:	b8 01 00 00 00       	mov    $0x1,%eax
   140002b0d:	48 83 c4 20          	add    $0x20,%rsp
   140002b11:	5b                   	pop    %rbx
   140002b12:	c3                   	ret    
   140002b13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002b18:	83 fa 03             	cmp    $0x3,%edx
   140002b1b:	75 eb                	jne    140002b08 <__mingw_TLScallback+0x28>
   140002b1d:	8b 05 e5 55 00 00    	mov    0x55e5(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002b23:	85 c0                	test   %eax,%eax
   140002b25:	74 e1                	je     140002b08 <__mingw_TLScallback+0x28>
   140002b27:	e8 14 fe ff ff       	call   140002940 <__mingwthr_run_key_dtors.part.0>
   140002b2c:	eb da                	jmp    140002b08 <__mingw_TLScallback+0x28>
   140002b2e:	66 90                	xchg   %ax,%ax
   140002b30:	e8 bb f6 ff ff       	call   1400021f0 <_fpreset>
   140002b35:	b8 01 00 00 00       	mov    $0x1,%eax
   140002b3a:	48 83 c4 20          	add    $0x20,%rsp
   140002b3e:	5b                   	pop    %rbx
   140002b3f:	c3                   	ret    
   140002b40:	8b 05 c2 55 00 00    	mov    0x55c2(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002b46:	85 c0                	test   %eax,%eax
   140002b48:	75 56                	jne    140002ba0 <__mingw_TLScallback+0xc0>
   140002b4a:	8b 05 b8 55 00 00    	mov    0x55b8(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002b50:	83 f8 01             	cmp    $0x1,%eax
   140002b53:	75 b3                	jne    140002b08 <__mingw_TLScallback+0x28>
   140002b55:	48 8b 1d a4 55 00 00 	mov    0x55a4(%rip),%rbx        # 140008100 <key_dtor_list>
   140002b5c:	48 85 db             	test   %rbx,%rbx
   140002b5f:	74 18                	je     140002b79 <__mingw_TLScallback+0x99>
   140002b61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002b68:	48 89 d9             	mov    %rbx,%rcx
   140002b6b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140002b6f:	e8 64 05 00 00       	call   1400030d8 <free>
   140002b74:	48 85 db             	test   %rbx,%rbx
   140002b77:	75 ef                	jne    140002b68 <__mingw_TLScallback+0x88>
   140002b79:	48 8d 0d a0 55 00 00 	lea    0x55a0(%rip),%rcx        # 140008120 <__mingwthr_cs>
   140002b80:	48 c7 05 75 55 00 00 	movq   $0x0,0x5575(%rip)        # 140008100 <key_dtor_list>
   140002b87:	00 00 00 00 
   140002b8b:	c7 05 73 55 00 00 00 	movl   $0x0,0x5573(%rip)        # 140008108 <__mingwthr_cs_init>
   140002b92:	00 00 00 
   140002b95:	ff 15 d1 66 00 00    	call   *0x66d1(%rip)        # 14000926c <__IAT_start__>
   140002b9b:	e9 68 ff ff ff       	jmp    140002b08 <__mingw_TLScallback+0x28>
   140002ba0:	e8 9b fd ff ff       	call   140002940 <__mingwthr_run_key_dtors.part.0>
   140002ba5:	eb a3                	jmp    140002b4a <__mingw_TLScallback+0x6a>
   140002ba7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002bae:	00 00 
   140002bb0:	48 8d 0d 69 55 00 00 	lea    0x5569(%rip),%rcx        # 140008120 <__mingwthr_cs>
   140002bb7:	ff 15 cf 66 00 00    	call   *0x66cf(%rip)        # 14000928c <__imp_InitializeCriticalSection>
   140002bbd:	e9 3c ff ff ff       	jmp    140002afe <__mingw_TLScallback+0x1e>
   140002bc2:	90                   	nop
   140002bc3:	90                   	nop
   140002bc4:	90                   	nop
   140002bc5:	90                   	nop
   140002bc6:	90                   	nop
   140002bc7:	90                   	nop
   140002bc8:	90                   	nop
   140002bc9:	90                   	nop
   140002bca:	90                   	nop
   140002bcb:	90                   	nop
   140002bcc:	90                   	nop
   140002bcd:	90                   	nop
   140002bce:	90                   	nop
   140002bcf:	90                   	nop

0000000140002bd0 <_ValidateImageBase>:
   140002bd0:	31 c0                	xor    %eax,%eax
   140002bd2:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002bd7:	75 0f                	jne    140002be8 <_ValidateImageBase+0x18>
   140002bd9:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   140002bdd:	48 01 d1             	add    %rdx,%rcx
   140002be0:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002be6:	74 08                	je     140002bf0 <_ValidateImageBase+0x20>
   140002be8:	c3                   	ret    
   140002be9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002bf0:	31 c0                	xor    %eax,%eax
   140002bf2:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002bf8:	0f 94 c0             	sete   %al
   140002bfb:	c3                   	ret    
   140002bfc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002c00 <_FindPESection>:
   140002c00:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002c04:	48 01 c1             	add    %rax,%rcx
   140002c07:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   140002c0b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002c10:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   140002c14:	85 c9                	test   %ecx,%ecx
   140002c16:	74 2d                	je     140002c45 <_FindPESection+0x45>
   140002c18:	83 e9 01             	sub    $0x1,%ecx
   140002c1b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140002c1f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002c24:	0f 1f 40 00          	nopl   0x0(%rax)
   140002c28:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002c2c:	4c 89 c1             	mov    %r8,%rcx
   140002c2f:	49 39 d0             	cmp    %rdx,%r8
   140002c32:	77 08                	ja     140002c3c <_FindPESection+0x3c>
   140002c34:	03 48 08             	add    0x8(%rax),%ecx
   140002c37:	48 39 d1             	cmp    %rdx,%rcx
   140002c3a:	77 0b                	ja     140002c47 <_FindPESection+0x47>
   140002c3c:	48 83 c0 28          	add    $0x28,%rax
   140002c40:	4c 39 c8             	cmp    %r9,%rax
   140002c43:	75 e3                	jne    140002c28 <_FindPESection+0x28>
   140002c45:	31 c0                	xor    %eax,%eax
   140002c47:	c3                   	ret    
   140002c48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002c4f:	00 

0000000140002c50 <_FindPESectionByName>:
   140002c50:	41 54                	push   %r12
   140002c52:	56                   	push   %rsi
   140002c53:	53                   	push   %rbx
   140002c54:	48 83 ec 20          	sub    $0x20,%rsp
   140002c58:	48 89 cb             	mov    %rcx,%rbx
   140002c5b:	e8 a0 04 00 00       	call   140003100 <strlen>
   140002c60:	48 83 f8 08          	cmp    $0x8,%rax
   140002c64:	77 7a                	ja     140002ce0 <_FindPESectionByName+0x90>
   140002c66:	48 8b 15 e3 27 00 00 	mov    0x27e3(%rip),%rdx        # 140005450 <.refptr.__image_base__>
   140002c6d:	45 31 e4             	xor    %r12d,%r12d
   140002c70:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002c75:	75 57                	jne    140002cce <_FindPESectionByName+0x7e>
   140002c77:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   140002c7b:	48 01 d0             	add    %rdx,%rax
   140002c7e:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002c84:	75 48                	jne    140002cce <_FindPESectionByName+0x7e>
   140002c86:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   140002c8c:	75 40                	jne    140002cce <_FindPESectionByName+0x7e>
   140002c8e:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140002c92:	4c 8d 64 10 18       	lea    0x18(%rax,%rdx,1),%r12
   140002c97:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   140002c9b:	85 c0                	test   %eax,%eax
   140002c9d:	74 41                	je     140002ce0 <_FindPESectionByName+0x90>
   140002c9f:	83 e8 01             	sub    $0x1,%eax
   140002ca2:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002ca6:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   140002cab:	eb 0c                	jmp    140002cb9 <_FindPESectionByName+0x69>
   140002cad:	0f 1f 00             	nopl   (%rax)
   140002cb0:	49 83 c4 28          	add    $0x28,%r12
   140002cb4:	49 39 f4             	cmp    %rsi,%r12
   140002cb7:	74 27                	je     140002ce0 <_FindPESectionByName+0x90>
   140002cb9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140002cbf:	48 89 da             	mov    %rbx,%rdx
   140002cc2:	4c 89 e1             	mov    %r12,%rcx
   140002cc5:	e8 3e 04 00 00       	call   140003108 <strncmp>
   140002cca:	85 c0                	test   %eax,%eax
   140002ccc:	75 e2                	jne    140002cb0 <_FindPESectionByName+0x60>
   140002cce:	4c 89 e0             	mov    %r12,%rax
   140002cd1:	48 83 c4 20          	add    $0x20,%rsp
   140002cd5:	5b                   	pop    %rbx
   140002cd6:	5e                   	pop    %rsi
   140002cd7:	41 5c                	pop    %r12
   140002cd9:	c3                   	ret    
   140002cda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002ce0:	45 31 e4             	xor    %r12d,%r12d
   140002ce3:	4c 89 e0             	mov    %r12,%rax
   140002ce6:	48 83 c4 20          	add    $0x20,%rsp
   140002cea:	5b                   	pop    %rbx
   140002ceb:	5e                   	pop    %rsi
   140002cec:	41 5c                	pop    %r12
   140002cee:	c3                   	ret    
   140002cef:	90                   	nop

0000000140002cf0 <__mingw_GetSectionForAddress>:
   140002cf0:	48 8b 15 59 27 00 00 	mov    0x2759(%rip),%rdx        # 140005450 <.refptr.__image_base__>
   140002cf7:	31 c0                	xor    %eax,%eax
   140002cf9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002cfe:	75 10                	jne    140002d10 <__mingw_GetSectionForAddress+0x20>
   140002d00:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002d04:	49 01 d0             	add    %rdx,%r8
   140002d07:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002d0e:	74 08                	je     140002d18 <__mingw_GetSectionForAddress+0x28>
   140002d10:	c3                   	ret    
   140002d11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002d18:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002d1f:	75 ef                	jne    140002d10 <__mingw_GetSectionForAddress+0x20>
   140002d21:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140002d26:	48 29 d1             	sub    %rdx,%rcx
   140002d29:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
   140002d2e:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   140002d33:	85 d2                	test   %edx,%edx
   140002d35:	74 2e                	je     140002d65 <__mingw_GetSectionForAddress+0x75>
   140002d37:	83 ea 01             	sub    $0x1,%edx
   140002d3a:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002d3e:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140002d43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002d48:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002d4c:	4c 89 c2             	mov    %r8,%rdx
   140002d4f:	4c 39 c1             	cmp    %r8,%rcx
   140002d52:	72 08                	jb     140002d5c <__mingw_GetSectionForAddress+0x6c>
   140002d54:	03 50 08             	add    0x8(%rax),%edx
   140002d57:	48 39 d1             	cmp    %rdx,%rcx
   140002d5a:	72 b4                	jb     140002d10 <__mingw_GetSectionForAddress+0x20>
   140002d5c:	48 83 c0 28          	add    $0x28,%rax
   140002d60:	4c 39 c8             	cmp    %r9,%rax
   140002d63:	75 e3                	jne    140002d48 <__mingw_GetSectionForAddress+0x58>
   140002d65:	31 c0                	xor    %eax,%eax
   140002d67:	c3                   	ret    
   140002d68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002d6f:	00 

0000000140002d70 <__mingw_GetSectionCount>:
   140002d70:	48 8b 05 d9 26 00 00 	mov    0x26d9(%rip),%rax        # 140005450 <.refptr.__image_base__>
   140002d77:	45 31 c0             	xor    %r8d,%r8d
   140002d7a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140002d7f:	75 0f                	jne    140002d90 <__mingw_GetSectionCount+0x20>
   140002d81:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002d85:	48 01 d0             	add    %rdx,%rax
   140002d88:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002d8e:	74 08                	je     140002d98 <__mingw_GetSectionCount+0x28>
   140002d90:	44 89 c0             	mov    %r8d,%eax
   140002d93:	c3                   	ret    
   140002d94:	0f 1f 40 00          	nopl   0x0(%rax)
   140002d98:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   140002d9e:	75 f0                	jne    140002d90 <__mingw_GetSectionCount+0x20>
   140002da0:	44 0f b7 40 06       	movzwl 0x6(%rax),%r8d
   140002da5:	44 89 c0             	mov    %r8d,%eax
   140002da8:	c3                   	ret    
   140002da9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002db0 <_FindPESectionExec>:
   140002db0:	4c 8b 05 99 26 00 00 	mov    0x2699(%rip),%r8        # 140005450 <.refptr.__image_base__>
   140002db7:	31 c0                	xor    %eax,%eax
   140002db9:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   140002dbf:	75 0f                	jne    140002dd0 <_FindPESectionExec+0x20>
   140002dc1:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002dc5:	4c 01 c2             	add    %r8,%rdx
   140002dc8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   140002dce:	74 08                	je     140002dd8 <_FindPESectionExec+0x28>
   140002dd0:	c3                   	ret    
   140002dd1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002dd8:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   140002dde:	75 f0                	jne    140002dd0 <_FindPESectionExec+0x20>
   140002de0:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002de4:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140002de9:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
   140002ded:	85 d2                	test   %edx,%edx
   140002def:	74 27                	je     140002e18 <_FindPESectionExec+0x68>
   140002df1:	83 ea 01             	sub    $0x1,%edx
   140002df4:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002df8:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140002dfd:	0f 1f 00             	nopl   (%rax)
   140002e00:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   140002e04:	74 09                	je     140002e0f <_FindPESectionExec+0x5f>
   140002e06:	48 85 c9             	test   %rcx,%rcx
   140002e09:	74 c5                	je     140002dd0 <_FindPESectionExec+0x20>
   140002e0b:	48 83 e9 01          	sub    $0x1,%rcx
   140002e0f:	48 83 c0 28          	add    $0x28,%rax
   140002e13:	48 39 d0             	cmp    %rdx,%rax
   140002e16:	75 e8                	jne    140002e00 <_FindPESectionExec+0x50>
   140002e18:	31 c0                	xor    %eax,%eax
   140002e1a:	c3                   	ret    
   140002e1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140002e20 <_GetPEImageBase>:
   140002e20:	48 8b 05 29 26 00 00 	mov    0x2629(%rip),%rax        # 140005450 <.refptr.__image_base__>
   140002e27:	45 31 c0             	xor    %r8d,%r8d
   140002e2a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140002e2f:	75 0f                	jne    140002e40 <_GetPEImageBase+0x20>
   140002e31:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002e35:	48 01 c2             	add    %rax,%rdx
   140002e38:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   140002e3e:	74 08                	je     140002e48 <_GetPEImageBase+0x28>
   140002e40:	4c 89 c0             	mov    %r8,%rax
   140002e43:	c3                   	ret    
   140002e44:	0f 1f 40 00          	nopl   0x0(%rax)
   140002e48:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   140002e4e:	4c 0f 44 c0          	cmove  %rax,%r8
   140002e52:	4c 89 c0             	mov    %r8,%rax
   140002e55:	c3                   	ret    
   140002e56:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002e5d:	00 00 00 

0000000140002e60 <_IsNonwritableInCurrentImage>:
   140002e60:	48 8b 15 e9 25 00 00 	mov    0x25e9(%rip),%rdx        # 140005450 <.refptr.__image_base__>
   140002e67:	31 c0                	xor    %eax,%eax
   140002e69:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002e6e:	75 10                	jne    140002e80 <_IsNonwritableInCurrentImage+0x20>
   140002e70:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002e74:	49 01 d0             	add    %rdx,%r8
   140002e77:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002e7e:	74 08                	je     140002e88 <_IsNonwritableInCurrentImage+0x28>
   140002e80:	c3                   	ret    
   140002e81:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002e88:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002e8f:	75 ef                	jne    140002e80 <_IsNonwritableInCurrentImage+0x20>
   140002e91:	48 29 d1             	sub    %rdx,%rcx
   140002e94:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002e99:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002e9e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002ea3:	45 85 c0             	test   %r8d,%r8d
   140002ea6:	74 d8                	je     140002e80 <_IsNonwritableInCurrentImage+0x20>
   140002ea8:	41 8d 40 ff          	lea    -0x1(%r8),%eax
   140002eac:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002eb0:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140002eb5:	0f 1f 00             	nopl   (%rax)
   140002eb8:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140002ebc:	4c 89 c0             	mov    %r8,%rax
   140002ebf:	4c 39 c1             	cmp    %r8,%rcx
   140002ec2:	72 08                	jb     140002ecc <_IsNonwritableInCurrentImage+0x6c>
   140002ec4:	03 42 08             	add    0x8(%rdx),%eax
   140002ec7:	48 39 c1             	cmp    %rax,%rcx
   140002eca:	72 14                	jb     140002ee0 <_IsNonwritableInCurrentImage+0x80>
   140002ecc:	48 83 c2 28          	add    $0x28,%rdx
   140002ed0:	4c 39 ca             	cmp    %r9,%rdx
   140002ed3:	75 e3                	jne    140002eb8 <_IsNonwritableInCurrentImage+0x58>
   140002ed5:	31 c0                	xor    %eax,%eax
   140002ed7:	c3                   	ret    
   140002ed8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002edf:	00 
   140002ee0:	8b 42 24             	mov    0x24(%rdx),%eax
   140002ee3:	f7 d0                	not    %eax
   140002ee5:	c1 e8 1f             	shr    $0x1f,%eax
   140002ee8:	c3                   	ret    
   140002ee9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002ef0 <__mingw_enum_import_library_names>:
   140002ef0:	4c 8b 1d 59 25 00 00 	mov    0x2559(%rip),%r11        # 140005450 <.refptr.__image_base__>
   140002ef7:	45 31 c9             	xor    %r9d,%r9d
   140002efa:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002f00:	75 10                	jne    140002f12 <__mingw_enum_import_library_names+0x22>
   140002f02:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140002f06:	4d 01 d8             	add    %r11,%r8
   140002f09:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002f10:	74 0e                	je     140002f20 <__mingw_enum_import_library_names+0x30>
   140002f12:	4c 89 c8             	mov    %r9,%rax
   140002f15:	c3                   	ret    
   140002f16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002f1d:	00 00 00 
   140002f20:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002f27:	75 e9                	jne    140002f12 <__mingw_enum_import_library_names+0x22>
   140002f29:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140002f30:	85 c0                	test   %eax,%eax
   140002f32:	74 de                	je     140002f12 <__mingw_enum_import_library_names+0x22>
   140002f34:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002f39:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002f3e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002f43:	45 85 c0             	test   %r8d,%r8d
   140002f46:	74 ca                	je     140002f12 <__mingw_enum_import_library_names+0x22>
   140002f48:	41 83 e8 01          	sub    $0x1,%r8d
   140002f4c:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140002f50:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140002f55:	0f 1f 00             	nopl   (%rax)
   140002f58:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   140002f5c:	4d 89 c8             	mov    %r9,%r8
   140002f5f:	4c 39 c8             	cmp    %r9,%rax
   140002f62:	72 09                	jb     140002f6d <__mingw_enum_import_library_names+0x7d>
   140002f64:	44 03 42 08          	add    0x8(%rdx),%r8d
   140002f68:	4c 39 c0             	cmp    %r8,%rax
   140002f6b:	72 13                	jb     140002f80 <__mingw_enum_import_library_names+0x90>
   140002f6d:	48 83 c2 28          	add    $0x28,%rdx
   140002f71:	49 39 d2             	cmp    %rdx,%r10
   140002f74:	75 e2                	jne    140002f58 <__mingw_enum_import_library_names+0x68>
   140002f76:	45 31 c9             	xor    %r9d,%r9d
   140002f79:	4c 89 c8             	mov    %r9,%rax
   140002f7c:	c3                   	ret    
   140002f7d:	0f 1f 00             	nopl   (%rax)
   140002f80:	4c 01 d8             	add    %r11,%rax
   140002f83:	eb 0a                	jmp    140002f8f <__mingw_enum_import_library_names+0x9f>
   140002f85:	0f 1f 00             	nopl   (%rax)
   140002f88:	83 e9 01             	sub    $0x1,%ecx
   140002f8b:	48 83 c0 14          	add    $0x14,%rax
   140002f8f:	44 8b 40 04          	mov    0x4(%rax),%r8d
   140002f93:	45 85 c0             	test   %r8d,%r8d
   140002f96:	75 07                	jne    140002f9f <__mingw_enum_import_library_names+0xaf>
   140002f98:	8b 50 0c             	mov    0xc(%rax),%edx
   140002f9b:	85 d2                	test   %edx,%edx
   140002f9d:	74 d7                	je     140002f76 <__mingw_enum_import_library_names+0x86>
   140002f9f:	85 c9                	test   %ecx,%ecx
   140002fa1:	7f e5                	jg     140002f88 <__mingw_enum_import_library_names+0x98>
   140002fa3:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   140002fa7:	4d 01 d9             	add    %r11,%r9
   140002faa:	4c 89 c8             	mov    %r9,%rax
   140002fad:	c3                   	ret    
   140002fae:	90                   	nop
   140002faf:	90                   	nop

0000000140002fb0 <_Unwind_Resume>:
   140002fb0:	ff 25 e6 63 00 00    	jmp    *0x63e6(%rip)        # 14000939c <__imp__Unwind_Resume>
   140002fb6:	90                   	nop
   140002fb7:	90                   	nop
   140002fb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002fbf:	00 

0000000140002fc0 <___chkstk_ms>:
   140002fc0:	51                   	push   %rcx
   140002fc1:	50                   	push   %rax
   140002fc2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002fc8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   140002fcd:	72 19                	jb     140002fe8 <___chkstk_ms+0x28>
   140002fcf:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002fd6:	48 83 09 00          	orq    $0x0,(%rcx)
   140002fda:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002fe0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002fe6:	77 e7                	ja     140002fcf <___chkstk_ms+0xf>
   140002fe8:	48 29 c1             	sub    %rax,%rcx
   140002feb:	48 83 09 00          	orq    $0x0,(%rcx)
   140002fef:	58                   	pop    %rax
   140002ff0:	59                   	pop    %rcx
   140002ff1:	c3                   	ret    
   140002ff2:	90                   	nop
   140002ff3:	90                   	nop
   140002ff4:	90                   	nop
   140002ff5:	90                   	nop
   140002ff6:	90                   	nop
   140002ff7:	90                   	nop
   140002ff8:	90                   	nop
   140002ff9:	90                   	nop
   140002ffa:	90                   	nop
   140002ffb:	90                   	nop
   140002ffc:	90                   	nop
   140002ffd:	90                   	nop
   140002ffe:	90                   	nop
   140002fff:	90                   	nop

0000000140003000 <__p__fmode>:
   140003000:	48 8b 05 89 24 00 00 	mov    0x2489(%rip),%rax        # 140005490 <.refptr.__imp__fmode>
   140003007:	48 8b 00             	mov    (%rax),%rax
   14000300a:	c3                   	ret    
   14000300b:	90                   	nop
   14000300c:	90                   	nop
   14000300d:	90                   	nop
   14000300e:	90                   	nop
   14000300f:	90                   	nop

0000000140003010 <__p__commode>:
   140003010:	48 8b 05 69 24 00 00 	mov    0x2469(%rip),%rax        # 140005480 <.refptr.__imp__commode>
   140003017:	48 8b 00             	mov    (%rax),%rax
   14000301a:	c3                   	ret    
   14000301b:	90                   	nop
   14000301c:	90                   	nop
   14000301d:	90                   	nop
   14000301e:	90                   	nop
   14000301f:	90                   	nop

0000000140003020 <__p__acmdln>:
   140003020:	48 8b 05 49 24 00 00 	mov    0x2449(%rip),%rax        # 140005470 <.refptr.__imp__acmdln>
   140003027:	48 8b 00             	mov    (%rax),%rax
   14000302a:	c3                   	ret    
   14000302b:	90                   	nop
   14000302c:	90                   	nop
   14000302d:	90                   	nop
   14000302e:	90                   	nop
   14000302f:	90                   	nop

0000000140003030 <_get_invalid_parameter_handler>:
   140003030:	48 8b 05 59 51 00 00 	mov    0x5159(%rip),%rax        # 140008190 <handler>
   140003037:	c3                   	ret    
   140003038:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000303f:	00 

0000000140003040 <_set_invalid_parameter_handler>:
   140003040:	48 89 c8             	mov    %rcx,%rax
   140003043:	48 87 05 46 51 00 00 	xchg   %rax,0x5146(%rip)        # 140008190 <handler>
   14000304a:	c3                   	ret    
   14000304b:	90                   	nop
   14000304c:	90                   	nop
   14000304d:	90                   	nop
   14000304e:	90                   	nop
   14000304f:	90                   	nop

0000000140003050 <__acrt_iob_func>:
   140003050:	53                   	push   %rbx
   140003051:	48 83 ec 20          	sub    $0x20,%rsp
   140003055:	89 cb                	mov    %ecx,%ebx
   140003057:	e8 24 00 00 00       	call   140003080 <__iob_func>
   14000305c:	89 d9                	mov    %ebx,%ecx
   14000305e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140003062:	48 c1 e2 04          	shl    $0x4,%rdx
   140003066:	48 01 d0             	add    %rdx,%rax
   140003069:	48 83 c4 20          	add    $0x20,%rsp
   14000306d:	5b                   	pop    %rbx
   14000306e:	c3                   	ret    
   14000306f:	90                   	nop

0000000140003070 <__C_specific_handler>:
   140003070:	ff 25 56 62 00 00    	jmp    *0x6256(%rip)        # 1400092cc <__imp___C_specific_handler>
   140003076:	90                   	nop
   140003077:	90                   	nop

0000000140003078 <__getmainargs>:
   140003078:	ff 25 56 62 00 00    	jmp    *0x6256(%rip)        # 1400092d4 <__imp___getmainargs>
   14000307e:	90                   	nop
   14000307f:	90                   	nop

0000000140003080 <__iob_func>:
   140003080:	ff 25 5e 62 00 00    	jmp    *0x625e(%rip)        # 1400092e4 <__imp___iob_func>
   140003086:	90                   	nop
   140003087:	90                   	nop

0000000140003088 <__set_app_type>:
   140003088:	ff 25 5e 62 00 00    	jmp    *0x625e(%rip)        # 1400092ec <__imp___set_app_type>
   14000308e:	90                   	nop
   14000308f:	90                   	nop

0000000140003090 <__setusermatherr>:
   140003090:	ff 25 5e 62 00 00    	jmp    *0x625e(%rip)        # 1400092f4 <__imp___setusermatherr>
   140003096:	90                   	nop
   140003097:	90                   	nop

0000000140003098 <_amsg_exit>:
   140003098:	ff 25 66 62 00 00    	jmp    *0x6266(%rip)        # 140009304 <__imp__amsg_exit>
   14000309e:	90                   	nop
   14000309f:	90                   	nop

00000001400030a0 <_cexit>:
   1400030a0:	ff 25 66 62 00 00    	jmp    *0x6266(%rip)        # 14000930c <__imp__cexit>
   1400030a6:	90                   	nop
   1400030a7:	90                   	nop

00000001400030a8 <_initterm>:
   1400030a8:	ff 25 76 62 00 00    	jmp    *0x6276(%rip)        # 140009324 <__imp__initterm>
   1400030ae:	90                   	nop
   1400030af:	90                   	nop

00000001400030b0 <_onexit>:
   1400030b0:	ff 25 76 62 00 00    	jmp    *0x6276(%rip)        # 14000932c <__imp__onexit>
   1400030b6:	90                   	nop
   1400030b7:	90                   	nop

00000001400030b8 <abort>:
   1400030b8:	ff 25 76 62 00 00    	jmp    *0x6276(%rip)        # 140009334 <__imp_abort>
   1400030be:	90                   	nop
   1400030bf:	90                   	nop

00000001400030c0 <calloc>:
   1400030c0:	ff 25 76 62 00 00    	jmp    *0x6276(%rip)        # 14000933c <__imp_calloc>
   1400030c6:	90                   	nop
   1400030c7:	90                   	nop

00000001400030c8 <exit>:
   1400030c8:	ff 25 76 62 00 00    	jmp    *0x6276(%rip)        # 140009344 <__imp_exit>
   1400030ce:	90                   	nop
   1400030cf:	90                   	nop

00000001400030d0 <fprintf>:
   1400030d0:	ff 25 76 62 00 00    	jmp    *0x6276(%rip)        # 14000934c <__imp_fprintf>
   1400030d6:	90                   	nop
   1400030d7:	90                   	nop

00000001400030d8 <free>:
   1400030d8:	ff 25 76 62 00 00    	jmp    *0x6276(%rip)        # 140009354 <__imp_free>
   1400030de:	90                   	nop
   1400030df:	90                   	nop

00000001400030e0 <fwrite>:
   1400030e0:	ff 25 76 62 00 00    	jmp    *0x6276(%rip)        # 14000935c <__imp_fwrite>
   1400030e6:	90                   	nop
   1400030e7:	90                   	nop

00000001400030e8 <malloc>:
   1400030e8:	ff 25 76 62 00 00    	jmp    *0x6276(%rip)        # 140009364 <__imp_malloc>
   1400030ee:	90                   	nop
   1400030ef:	90                   	nop

00000001400030f0 <memcpy>:
   1400030f0:	ff 25 76 62 00 00    	jmp    *0x6276(%rip)        # 14000936c <__imp_memcpy>
   1400030f6:	90                   	nop
   1400030f7:	90                   	nop

00000001400030f8 <signal>:
   1400030f8:	ff 25 76 62 00 00    	jmp    *0x6276(%rip)        # 140009374 <__imp_signal>
   1400030fe:	90                   	nop
   1400030ff:	90                   	nop

0000000140003100 <strlen>:
   140003100:	ff 25 76 62 00 00    	jmp    *0x6276(%rip)        # 14000937c <__imp_strlen>
   140003106:	90                   	nop
   140003107:	90                   	nop

0000000140003108 <strncmp>:
   140003108:	ff 25 76 62 00 00    	jmp    *0x6276(%rip)        # 140009384 <__imp_strncmp>
   14000310e:	90                   	nop
   14000310f:	90                   	nop

0000000140003110 <vfprintf>:
   140003110:	ff 25 76 62 00 00    	jmp    *0x6276(%rip)        # 14000938c <__imp_vfprintf>
   140003116:	90                   	nop
   140003117:	90                   	nop
   140003118:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000311f:	00 

0000000140003120 <VirtualQuery>:
   140003120:	ff 25 96 61 00 00    	jmp    *0x6196(%rip)        # 1400092bc <__imp_VirtualQuery>
   140003126:	90                   	nop
   140003127:	90                   	nop

0000000140003128 <VirtualProtect>:
   140003128:	ff 25 86 61 00 00    	jmp    *0x6186(%rip)        # 1400092b4 <__imp_VirtualProtect>
   14000312e:	90                   	nop
   14000312f:	90                   	nop

0000000140003130 <TlsGetValue>:
   140003130:	ff 25 76 61 00 00    	jmp    *0x6176(%rip)        # 1400092ac <__imp_TlsGetValue>
   140003136:	90                   	nop
   140003137:	90                   	nop

0000000140003138 <Sleep>:
   140003138:	ff 25 66 61 00 00    	jmp    *0x6166(%rip)        # 1400092a4 <__imp_Sleep>
   14000313e:	90                   	nop
   14000313f:	90                   	nop

0000000140003140 <SetUnhandledExceptionFilter>:
   140003140:	ff 25 56 61 00 00    	jmp    *0x6156(%rip)        # 14000929c <__imp_SetUnhandledExceptionFilter>
   140003146:	90                   	nop
   140003147:	90                   	nop

0000000140003148 <LeaveCriticalSection>:
   140003148:	ff 25 46 61 00 00    	jmp    *0x6146(%rip)        # 140009294 <__imp_LeaveCriticalSection>
   14000314e:	90                   	nop
   14000314f:	90                   	nop

0000000140003150 <InitializeCriticalSection>:
   140003150:	ff 25 36 61 00 00    	jmp    *0x6136(%rip)        # 14000928c <__imp_InitializeCriticalSection>
   140003156:	90                   	nop
   140003157:	90                   	nop

0000000140003158 <GetStartupInfoA>:
   140003158:	ff 25 26 61 00 00    	jmp    *0x6126(%rip)        # 140009284 <__imp_GetStartupInfoA>
   14000315e:	90                   	nop
   14000315f:	90                   	nop

0000000140003160 <GetLastError>:
   140003160:	ff 25 16 61 00 00    	jmp    *0x6116(%rip)        # 14000927c <__imp_GetLastError>
   140003166:	90                   	nop
   140003167:	90                   	nop

0000000140003168 <EnterCriticalSection>:
   140003168:	ff 25 06 61 00 00    	jmp    *0x6106(%rip)        # 140009274 <__imp_EnterCriticalSection>
   14000316e:	90                   	nop
   14000316f:	90                   	nop

0000000140003170 <DeleteCriticalSection>:
   140003170:	ff 25 f6 60 00 00    	jmp    *0x60f6(%rip)        # 14000926c <__IAT_start__>
   140003176:	90                   	nop
   140003177:	90                   	nop
   140003178:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000317f:	00 

0000000140003180 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>:
   *  @param __rhs  C string.
   *  @return  True if @a __lhs.compare(@a __rhs) == 0.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
   140003180:	55                   	push   %rbp
   140003181:	48 89 e5             	mov    %rsp,%rbp
   140003184:	48 83 ec 20          	sub    $0x20,%rsp
   140003188:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000318c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
	       const _CharT* __rhs)
    { return __lhs.compare(__rhs) == 0; }
   140003190:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003194:	48 89 c2             	mov    %rax,%rdx
   140003197:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   14000319b:	e8 88 ed ff ff       	call   140001f28 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>
   1400031a0:	85 c0                	test   %eax,%eax
   1400031a2:	0f 94 c0             	sete   %al
   1400031a5:	48 83 c4 20          	add    $0x20,%rsp
   1400031a9:	5d                   	pop    %rbp
   1400031aa:	c3                   	ret    
   1400031ab:	90                   	nop
   1400031ac:	90                   	nop
   1400031ad:	90                   	nop
   1400031ae:	90                   	nop
  operator&(_Ios_Openmode __a, _Ios_Openmode __b)
  { return _Ios_Openmode(static_cast<int>(__a) & static_cast<int>(__b)); }

  inline _GLIBCXX_CONSTEXPR _Ios_Openmode
  operator|(_Ios_Openmode __a, _Ios_Openmode __b)
  { return _Ios_Openmode(static_cast<int>(__a) | static_cast<int>(__b)); }
   1400031af:	90                   	nop

00000001400031b0 <_ZStorSt13_Ios_OpenmodeS_>:
   1400031b0:	55                   	push   %rbp
   1400031b1:	48 89 e5             	mov    %rsp,%rbp
   1400031b4:	89 4d 10             	mov    %ecx,0x10(%rbp)
   1400031b7:	89 55 18             	mov    %edx,0x18(%rbp)
   1400031ba:	8b 45 10             	mov    0x10(%rbp),%eax
   1400031bd:	0b 45 18             	or     0x18(%rbp),%eax
   1400031c0:	5d                   	pop    %rbp
   1400031c1:	c3                   	ret    
   1400031c2:	90                   	nop
   1400031c3:	90                   	nop
   1400031c4:	90                   	nop
   1400031c5:	90                   	nop
   1400031c6:	90                   	nop
   1400031c7:	90                   	nop
   1400031c8:	90                   	nop
   1400031c9:	90                   	nop
   1400031ca:	90                   	nop
   1400031cb:	90                   	nop
   1400031cc:	90                   	nop
   1400031cd:	90                   	nop
   1400031ce:	90                   	nop
   1400031cf:	90                   	nop

00000001400031d0 <register_frame_ctor>:
   1400031d0:	e9 3b e3 ff ff       	jmp    140001510 <__gcc_register_frame>
   1400031d5:	90                   	nop
   1400031d6:	90                   	nop
   1400031d7:	90                   	nop
   1400031d8:	90                   	nop
   1400031d9:	90                   	nop
   1400031da:	90                   	nop
   1400031db:	90                   	nop
   1400031dc:	90                   	nop
   1400031dd:	90                   	nop
   1400031de:	90                   	nop
   1400031df:	90                   	nop

00000001400031e0 <__CTOR_LIST__>:
   1400031e0:	ff                   	(bad)  
   1400031e1:	ff                   	(bad)  
   1400031e2:	ff                   	(bad)  
   1400031e3:	ff                   	(bad)  
   1400031e4:	ff                   	(bad)  
   1400031e5:	ff                   	(bad)  
   1400031e6:	ff                   	(bad)  
   1400031e7:	ff                   	.byte 0xff

00000001400031e8 <.ctors>:
   1400031e8:	67 1e                	addr32 (bad) 
   1400031ea:	00 40 01             	add    %al,0x1(%rax)
   1400031ed:	00 00                	add    %al,(%rax)
	...

00000001400031f0 <.ctors.65535>:
   1400031f0:	d0 31                	shlb   (%rcx)
   1400031f2:	00 40 01             	add    %al,0x1(%rax)
	...

0000000140003200 <__DTOR_LIST__>:
   140003200:	ff                   	(bad)  
   140003201:	ff                   	(bad)  
   140003202:	ff                   	(bad)  
   140003203:	ff                   	(bad)  
   140003204:	ff                   	(bad)  
   140003205:	ff                   	(bad)  
   140003206:	ff                   	(bad)  
   140003207:	ff 00                	incl   (%rax)
   140003209:	00 00                	add    %al,(%rax)
   14000320b:	00 00                	add    %al,(%rax)
   14000320d:	00 00                	add    %al,(%rax)
	...
