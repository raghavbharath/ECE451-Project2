	.file	"daxpy_program.cpp"
	.text
	.section	.rodata._ZNSt6vectorIfSaIfEEC2EmRKS0_.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIfSaIfEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEEC5EmRKS0_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIfSaIfEEC2EmRKS0_
	.type	_ZNSt6vectorIfSaIfEEC2EmRKS0_, @function
_ZNSt6vectorIfSaIfEEC2EmRKS0_:
.LFB3577:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rsi, %rax
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	shrq	$61, %rax
	jne	.L11
	pxor	%xmm0, %xmm0
	movq	$0, 16(%rdi)
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movups	%xmm0, (%rdi)
	testq	%rsi, %rsi
	je	.L12
	leaq	0(,%rsi,4), %r12
	movq	%r12, %rdi
	call	_Znwm@PLT
	leaq	(%rax,%r12), %r13
	movq	%rax, (%rbx)
	leaq	4(%rax), %rdi
	movq	%r13, 16(%rbx)
	movl	$0x00000000, (%rax)
	cmpq	$1, %rbp
	je	.L4
	cmpq	%rdi, %r13
	je	.L5
	leaq	-4(%r12), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L5:
	movq	%r13, %rdi
.L4:
	movq	%rdi, 8(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	.cfi_restore_state
	movq	$0, (%rdi)
	movq	$0, 16(%rdi)
	xorl	%edi, %edi
	movq	%rdi, 8(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L11:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE3577:
	.size	_ZNSt6vectorIfSaIfEEC2EmRKS0_, .-_ZNSt6vectorIfSaIfEEC2EmRKS0_
	.weak	_ZNSt6vectorIfSaIfEEC1EmRKS0_
	.set	_ZNSt6vectorIfSaIfEEC1EmRKS0_,_ZNSt6vectorIfSaIfEEC2EmRKS0_
	.section	.text._ZNSt6vectorIfSaIfEED2Ev,"axG",@progbits,_ZNSt6vectorIfSaIfEED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIfSaIfEED2Ev
	.type	_ZNSt6vectorIfSaIfEED2Ev, @function
_ZNSt6vectorIfSaIfEED2Ev:
.LFB3580:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.L13
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L13:
	ret
	.cfi_endproc
.LFE3580:
	.size	_ZNSt6vectorIfSaIfEED2Ev, .-_ZNSt6vectorIfSaIfEED2Ev
	.weak	_ZNSt6vectorIfSaIfEED1Ev
	.set	_ZNSt6vectorIfSaIfEED1Ev,_ZNSt6vectorIfSaIfEED2Ev
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB4037:
	.cfi_startproc
	endbr64
	movq	%rdi, %r8
	movq	(%rdi), %rsi
	leaq	1816(%rdi), %rdi
	movq	%r8, %rdx
	.p2align 4,,10
	.p2align 3
.L16:
	andq	$-2147483648, %rsi
	addq	$8, %rdx
	movq	%rsi, %rcx
	movq	(%rdx), %rsi
	movq	%rsi, %rax
	andl	$2147483647, %eax
	orq	%rax, %rcx
	andl	$1, %eax
	negq	%rax
	shrq	%rcx
	xorq	3168(%rdx), %rcx
	andl	$2567483615, %eax
	xorq	%rcx, %rax
	movq	%rax, -8(%rdx)
	cmpq	%rdi, %rdx
	jne	.L16
	movdqa	.LC3(%rip), %xmm7
	movdqa	.LC4(%rip), %xmm6
	leaq	4984(%r8), %rax
	pxor	%xmm3, %xmm3
	movdqa	.LC5(%rip), %xmm5
	movdqa	.LC6(%rip), %xmm4
	.p2align 4,,10
	.p2align 3
.L17:
	movdqu	(%rdx), %xmm0
	movdqu	8(%rdx), %xmm1
	addq	$16, %rdx
	movdqu	-1832(%rdx), %xmm2
	pand	%xmm6, %xmm1
	pand	%xmm7, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pand	%xmm5, %xmm0
	psrlq	$1, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm3, %xmm2
	psubq	%xmm0, %xmm2
	pand	%xmm4, %xmm2
	movdqa	%xmm2, %xmm0
	pxor	%xmm1, %xmm0
	movups	%xmm0, -16(%rdx)
	cmpq	%rax, %rdx
	jne	.L17
	movq	4984(%r8), %rax
	movq	(%r8), %rdx
	movq	$0, 4992(%r8)
	andl	$2147483647, %edx
	andq	$-2147483648, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	andl	$1, %eax
	negq	%rax
	shrq	%rdx
	xorq	3168(%r8), %rdx
	andl	$2567483615, %eax
	xorq	%rdx, %rax
	movq	%rax, 4984(%r8)
	ret
	.cfi_endproc
.LFE4037:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.section	.text._ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,comdat
	.p2align 4
	.weak	_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.type	_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, @function
_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_:
.LFB3988:
	.cfi_startproc
	endbr64
	movq	4992(%rdi), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	cmpq	$623, %rax
	ja	.L27
.L21:
	leaq	1(%rax), %rdx
	movq	(%rbx,%rax,8), %rax
	movq	%rdx, 4992(%rbx)
	movq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	andl	$2636928640, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$15, %rdx
	andl	$4022730752, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rdx, %rax
	js	.L22
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rax, %xmm0
.L23:
	pxor	%xmm1, %xmm1
	addss	%xmm1, %xmm0
	mulss	.LC8(%rip), %xmm0
	comiss	.LC9(%rip), %xmm0
	jnb	.L28
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	.cfi_restore_state
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm0, %xmm0
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2ssq	%rdx, %xmm0
	addss	%xmm0, %xmm0
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L27:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%rbx), %rax
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L28:
	movss	.LC7(%rip), %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3988:
	.size	_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, .-_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC13:
	.string	"N=%d, a=%f, sum=%f\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB14:
	.section	.text.startup,"ax",@progbits
.LHOTB14:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3225:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3225
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$4096, %rsp
	.cfi_def_cfa_offset 4152
	orq	$0, (%rsp)
	subq	$1032, %rsp
	.cfi_def_cfa_offset 5184
	movq	%fs:40, %rax
	movq	%rax, 5112(%rsp)
	xorl	%eax, %eax
	movl	$1000000, 12(%rsp)
	cmpl	$1, %edi
	jle	.L30
	movq	8(%rsi), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	__isoc23_strtol@PLT
	movl	%eax, 12(%rsp)
.L30:
	movslq	12(%rsp), %rbp
	leaq	80(%rsp), %rbx
	leaq	48(%rsp), %rdi
	movq	%rbx, %rdx
	movq	%rdi, 16(%rsp)
	movq	%rbp, %rsi
	movq	%rbx, 24(%rsp)
.LEHB0:
	call	_ZNSt6vectorIfSaIfEEC1EmRKS0_
.LEHE0:
	leaq	47(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
.LEHB1:
	call	_ZNSt6vectorIfSaIfEEC1EmRKS0_
.LEHE1:
	movl	$12345, %ecx
	movl	$1, %edx
	leaq	112(%rsp), %r14
	movq	$12345, 112(%rsp)
	.p2align 4,,10
	.p2align 3
.L31:
	movq	%rcx, %rax
	shrq	$30, %rax
	xorq	%rcx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rdx), %ecx
	movq	%rcx, (%r14,%rdx,8)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	.L31
	movq	$624, 5104(%rsp)
	movl	12(%rsp), %eax
	testl	%eax, %eax
	jle	.L32
	movq	48(%rsp), %r13
	salq	$2, %rbp
	movq	80(%rsp), %r12
	leaq	0(%r13,%rbp), %rax
	movq	%r13, %rbx
	movq	%r12, %r15
	movq	%rax, (%rsp)
	.p2align 4,,10
	.p2align 3
.L33:
	movq	%r14, %rdi
	addq	$4, %rbx
	addq	$4, %r15
	call	_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	pxor	%xmm2, %xmm2
	movq	%r14, %rdi
	addss	%xmm2, %xmm0
	movss	%xmm0, -4(%rbx)
	call	_ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	pxor	%xmm3, %xmm3
	movq	(%rsp), %rax
	addss	%xmm3, %xmm0
	movss	%xmm0, -4(%r15)
	cmpq	%rax, %rbx
	jne	.L33
	xorl	%esi, %esi
	xorl	%edi, %edi
.LEHB2:
	call	m5_dump_stats@PLT
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	m5_reset_stats@PLT
	movss	.LC11(%rip), %xmm1
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L37:
	movss	0(%r13,%rax), %xmm0
	mulss	%xmm1, %xmm0
	addss	(%r12,%rax), %xmm0
	movss	%xmm0, (%r12,%rax)
	addq	$4, %rax
	cmpq	%rbp, %rax
	jne	.L37
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	m5_dump_stats@PLT
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	m5_reset_stats@PLT
	movq	80(%rsp), %rax
	pxor	%xmm1, %xmm1
	addq	%rax, %rbp
	.p2align 4,,10
	.p2align 3
.L39:
	pxor	%xmm0, %xmm0
	addq	$4, %rax
	cvtss2sd	-4(%rax), %xmm0
	addsd	%xmm0, %xmm1
	cmpq	%rbp, %rax
	jne	.L39
.L35:
	movl	12(%rsp), %edx
	movl	$2, %edi
	movl	$2, %eax
	movsd	.LC12(%rip), %xmm0
	leaq	.LC13(%rip), %rsi
	call	__printf_chk@PLT
	movq	24(%rsp), %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	movq	16(%rsp), %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	movq	5112(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L58
	addq	$5128, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L32:
	.cfi_restore_state
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	m5_dump_stats@PLT
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	m5_reset_stats@PLT
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	m5_dump_stats@PLT
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	m5_reset_stats@PLT
.LEHE2:
	pxor	%xmm1, %xmm1
	jmp	.L35
.L58:
	call	__stack_chk_fail@PLT
.L46:
	endbr64
	movq	%rax, %rbx
	jmp	.L41
.L47:
	endbr64
	movq	%rax, %rbx
	jmp	.L40
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3225:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3225-.LLSDACSB3225
.LLSDACSB3225:
	.uleb128 .LEHB0-.LFB3225
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3225
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L46-.LFB3225
	.uleb128 0
	.uleb128 .LEHB2-.LFB3225
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L47-.LFB3225
	.uleb128 0
.LLSDACSE3225:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3225
	.type	main.cold, @function
main.cold:
.LFSB3225:
.L40:
	.cfi_def_cfa_offset 5184
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	24(%rsp), %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
.L41:
	movq	16(%rsp), %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	movq	5112(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L59
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L59:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3225:
	.section	.gcc_except_table
.LLSDAC3225:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3225-.LLSDACSBC3225
.LLSDACSBC3225:
	.uleb128 .LEHB3-.LCOLDB14
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC3225:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE14:
	.section	.text.startup
.LHOTE14:
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC3:
	.quad	-2147483648
	.quad	-2147483648
	.align 16
.LC4:
	.quad	2147483647
	.quad	2147483647
	.align 16
.LC5:
	.quad	1
	.quad	1
	.align 16
.LC6:
	.quad	2567483615
	.quad	2567483615
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC7:
	.long	1065353215
	.align 4
.LC8:
	.long	796917760
	.align 4
.LC9:
	.long	1065353216
	.align 4
.LC11:
	.long	1075838976
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC12:
	.long	0
	.long	1074003968
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
