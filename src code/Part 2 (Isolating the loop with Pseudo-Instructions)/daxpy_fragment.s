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
