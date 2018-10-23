	.cstring
lC0:
	.ascii "\12    [%d: huff+mtf \0"
lC1:
	.ascii "rt+rld\0"
	.text
	.align 4,0x90
	.globl _BZ2_decompress
_BZ2_decompress:
LFB32:
	pushq	%r15
LCFI0:
	pushq	%r14
LCFI1:
	pushq	%r13
LCFI2:
	pushq	%r12
LCFI3:
	pushq	%rbp
LCFI4:
	pushq	%rbx
LCFI5:
	movq	%rdi, %rbx
	subq	$152, %rsp
LCFI6:
	movl	8(%rdi), %eax
	movq	(%rdi), %r9
	cmpl	$10, %eax
	je	L2
	movl	64044(%rdi), %ecx
	movl	64036(%rdi), %r8d
	movl	64040(%rdi), %r14d
	movl	64048(%rdi), %r13d
	movl	%ecx, 36(%rsp)
	movl	64052(%rdi), %ecx
	movl	64100(%rbx), %ebp
	movl	64104(%rbx), %r12d
	movl	%ecx, 16(%rsp)
	movl	64056(%rdi), %ecx
	movl	%ecx, 32(%rsp)
	movl	64060(%rdi), %ecx
	movl	%ecx, 72(%rsp)
	movl	64064(%rdi), %ecx
	movl	%ecx, 68(%rsp)
	movl	64068(%rdi), %ecx
	movl	64072(%rdi), %edi
	movl	%ecx, 64(%rsp)
	movl	64076(%rbx), %ecx
	movl	%edi, 56(%rsp)
	movl	64080(%rbx), %edi
	movl	%ecx, 80(%rsp)
	movl	64084(%rbx), %ecx
	movl	%edi, 40(%rsp)
	movl	64088(%rbx), %edi
	movl	%ecx, 60(%rsp)
	movl	64092(%rbx), %ecx
	movl	%edi, 88(%rsp)
	movl	64096(%rbx), %edi
	movl	%ecx, 12(%rsp)
	movl	64108(%rbx), %ecx
	movl	%edi, 92(%rsp)
	movl	%ecx, 20(%rsp)
	movl	64112(%rbx), %edi
	movq	64120(%rbx), %rcx
	movq	64128(%rbx), %rsi
	movl	64116(%rbx), %r10d
	movq	64136(%rbx), %r15
	movl	%edi, 84(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rsi, 48(%rsp)
L3:
	subl	$10, %eax
	cmpl	$40, %eax
	ja	L4
	leaq	L6(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.align 2,0x90
L6:
	.long	L5-L6
	.long	L7-L6
	.long	L8-L6
	.long	L9-L6
	.long	L10-L6
	.long	L11-L6
	.long	L12-L6
	.long	L13-L6
	.long	L14-L6
	.long	L15-L6
	.long	L16-L6
	.long	L17-L6
	.long	L18-L6
	.long	L19-L6
	.long	L20-L6
	.long	L21-L6
	.long	L22-L6
	.long	L23-L6
	.long	L24-L6
	.long	L25-L6
	.long	L26-L6
	.long	L27-L6
	.long	L28-L6
	.long	L29-L6
	.long	L30-L6
	.long	L31-L6
	.long	L32-L6
	.long	L33-L6
	.long	L34-L6
	.long	L35-L6
	.long	L36-L6
	.long	L37-L6
	.long	L38-L6
	.long	L39-L6
	.long	L40-L6
	.long	L41-L6
	.long	L42-L6
	.long	L43-L6
	.long	L44-L6
	.long	L45-L6
	.long	L46-L6
	.align 4,0x90
L2:
	pxor	%xmm0, %xmm0
	xorl	%r15d, %r15d
	xorl	%r10d, %r10d
	xorl	%ebp, %ebp
	movups	%xmm0, 64036(%rdi)
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	movups	%xmm0, 64052(%rdi)
	xorl	%r8d, %r8d
	movups	%xmm0, 64068(%rdi)
	movups	%xmm0, 64084(%rdi)
	movups	%xmm0, 64100(%rdi)
	pxor	%xmm0, %xmm0
	movl	$0, 64116(%rdi)
	movups	%xmm0, 64120(%rdi)
	movq	$0, 64136(%rdi)
	movq	$0, 48(%rsp)
	movq	$0, 24(%rsp)
	movl	$0, 84(%rsp)
	movl	$0, 20(%rsp)
	movl	$0, 92(%rsp)
	movl	$0, 12(%rsp)
	movl	$0, 88(%rsp)
	movl	$0, 60(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 80(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 64(%rsp)
	movl	$0, 68(%rsp)
	movl	$0, 72(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 36(%rsp)
	jmp	L3
	.align 4,0x90
L71:
	movl	%r10d, 104(%rsp)
	leal	0(,%rax,4), %esi
	movl	$1, %edx
	movl	%r8d, 96(%rsp)
	call	*%rcx
	movl	96(%rsp), %r8d
	testq	%rax, %rax
	movq	%rax, 3152(%rbx)
	movl	104(%rsp), %r10d
	je	L302
L10:
	movl	$14, 8(%rbx)
	movl	36(%rbx), %ecx
	jmp	L76
	.align 4,0x90
L73:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L570
L76:
	cmpl	$7, %ecx
	jle	L73
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	cmpb	$23, %al
	je	L74
	cmpb	$49, %al
	je	L53
	jmp	L390
	.align 4,0x90
L31:
	movl	36(%rbx), %eax
L175:
	movl	$35, 8(%rbx)
	jmp	L181
	.align 4,0x90
L178:
	movq	(%rbx), %rdx
	movl	8(%rdx), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rdx), %rdi
	addl	$8, %eax
	subl	$1, %esi
	movl	32(%rbx), %ecx
	movzbl	(%rdi), %r9d
	movl	%eax, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %ecx
	orl	%r9d, %ecx
	movl	%ecx, 32(%rbx)
	addl	$1, 12(%rdx)
	movq	%rdi, (%rdx)
	movl	%esi, 8(%rdx)
	je	L571
L181:
	testl	%eax, %eax
	jle	L178
	leal	-1(%rax), %ecx
	movl	32(%rbx), %eax
	movl	12(%rsp), %esi
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	leal	-1(%rsi), %edx
	testb	$1, %al
	leal	1(%rsi), %ecx
	cmove	%ecx, %edx
	movl	%edx, 12(%rsp)
L183:
	movl	12(%rsp), %eax
	subl	$1, %eax
	cmpl	$19, %eax
	ja	L390
L30:
	movl	$34, 8(%rbx)
	movl	36(%rbx), %eax
	jmp	L176
	.align 4,0x90
L173:
	movq	(%rbx), %rdx
	movl	8(%rdx), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rdx), %rdi
	addl	$8, %eax
	subl	$1, %esi
	movl	32(%rbx), %ecx
	movzbl	(%rdi), %r9d
	movl	%eax, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %ecx
	orl	%r9d, %ecx
	movl	%ecx, 32(%rbx)
	addl	$1, 12(%rdx)
	movq	%rdi, (%rdx)
	movl	%esi, 8(%rdx)
	je	L572
L176:
	testl	%eax, %eax
	jle	L173
	movl	32(%rbx), %edx
	subl	$1, %eax
	movl	%eax, 36(%rbx)
	btl	%eax, %edx
	jc	L175
	movslq	36(%rsp), %rdx
	movslq	%r8d, %rcx
	addl	$1, %r8d
	movzbl	12(%rsp), %edi
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	leaq	(%rbx,%rax,2), %rax
	movb	%dil, 43888(%rcx,%rax)
L170:
	cmpl	%r13d, %r8d
	jl	L183
	addl	$1, 36(%rsp)
L168:
	movl	16(%rsp), %eax
	cmpl	%eax, 36(%rsp)
	jl	L29
	testl	%eax, %eax
	jle	L340
	leal	-1(%rax), %edx
	movq	%r15, 40(%rsp)
	leaq	45436(%rbx), %rcx
	movq	%rdx, %rax
	movl	%ebp, 64(%rsp)
	movl	%r13d, %ebp
	leaq	64012(%rbx), %rdi
	salq	$7, %rax
	movl	%r12d, 68(%rsp)
	movq	%rcx, %r12
	addq	%rdx, %rax
	movl	%r14d, 36(%rsp)
	movq	%rdi, %r15
	leaq	46468(%rbx,%rax,8), %rax
	movl	%r10d, 80(%rsp)
	movq	%rax, %r13
	movq	%rbx, 72(%rsp)
	.align 4,0x90
L185:
	xorl	%r9d, %r9d
	testl	%ebp, %ebp
	movl	$32, %r14d
	jle	L193
	movl	$-43888, %r8d
	movl	$19, %ecx
	subl	%ebx, %r8d
	andl	$15, %r8d
	leal	15(%r8), %edx
	cmpl	$19, %edx
	cmovb	%ecx, %edx
	leal	-1(%rbp), %ecx
	cmpl	%ecx, %edx
	ja	L341
	testl	%r8d, %r8d
	je	L342
	movzbl	43888(%rbx), %esi
	movl	$32, %edx
	cmpl	$32, %esi
	cmovle	%esi, %edx
	cmpl	$1, %r8d
	je	L343
	movzbl	43889(%rbx), %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	cmpl	$2, %r8d
	je	L344
	movzbl	43890(%rbx), %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	cmpl	$3, %r8d
	je	L345
	movzbl	43891(%rbx), %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	cmpl	$4, %r8d
	je	L346
	movzbl	43892(%rbx), %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	cmpl	$5, %r8d
	je	L347
	movzbl	43893(%rbx), %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	cmpl	$6, %r8d
	je	L348
	movzbl	43894(%rbx), %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	cmpl	$7, %r8d
	je	L349
	movzbl	43895(%rbx), %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	cmpl	$8, %r8d
	je	L350
	movzbl	43896(%rbx), %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	cmpl	$9, %r8d
	je	L351
	movzbl	43897(%rbx), %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	cmpl	$10, %r8d
	je	L352
	movzbl	43898(%rbx), %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	cmpl	$11, %r8d
	je	L353
	movzbl	43899(%rbx), %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	cmpl	$12, %r8d
	je	L354
	movzbl	43900(%rbx), %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	cmpl	$13, %r8d
	je	L355
	movzbl	43901(%rbx), %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	cmpl	$15, %r8d
	jne	L356
	movzbl	43902(%rbx), %ecx
	cmpl	%ecx, %esi
	cmovl	%ecx, %esi
	cmpl	%ecx, %edx
	cmovg	%ecx, %edx
	movl	$15, %ecx
	.align 4,0x90
L187:
	movl	%ebp, %edi
	pxor	%xmm8, %xmm8
	pxor	%xmm3, %xmm3
	movd	%esi, %xmm2
	subl	%r8d, %edi
	leaq	43888(%rbx,%r8), %r8
	movl	%edi, %r9d
	movdqa	(%r8), %xmm4
	shrl	$4, %r9d
	cmpl	$1, %r9d
	movdqa	%xmm4, %xmm6
	punpckhbw	%xmm8, %xmm4
	movdqa	%xmm4, %xmm7
	punpckhwd	%xmm3, %xmm4
	punpcklbw	%xmm8, %xmm6
	movdqa	%xmm6, %xmm9
	punpckhwd	%xmm3, %xmm6
	punpcklwd	%xmm3, %xmm7
	punpcklwd	%xmm3, %xmm9
	movdqa	%xmm9, %xmm5
	pcmpgtd	%xmm6, %xmm5
	movdqa	%xmm5, %xmm0
	movdqa	%xmm5, %xmm1
	pandn	%xmm6, %xmm1
	pand	%xmm9, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm7, %xmm1
	pand	%xmm5, %xmm6
	pandn	%xmm9, %xmm5
	por	%xmm6, %xmm5
	pand	%xmm1, %xmm0
	pandn	%xmm7, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm4, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm4, %xmm1
	por	%xmm1, %xmm0
	pshufd	$0, %xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	movdqa	%xmm5, %xmm0
	pcmpgtd	%xmm7, %xmm0
	pand	%xmm0, %xmm7
	pandn	%xmm5, %xmm0
	por	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	pcmpgtd	%xmm4, %xmm0
	movd	%edx, %xmm5
	pand	%xmm0, %xmm4
	pandn	%xmm7, %xmm0
	por	%xmm0, %xmm4
	movdqa	%xmm4, %xmm1
	pshufd	$0, %xmm5, %xmm0
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm4, %xmm1
	por	%xmm1, %xmm0
	jbe	L189
	movdqa	16(%r8), %xmm5
	cmpl	$2, %r9d
	movdqa	%xmm5, %xmm4
	punpckhbw	%xmm8, %xmm5
	movdqa	%xmm5, %xmm7
	punpckhwd	%xmm3, %xmm5
	punpcklbw	%xmm8, %xmm4
	movdqa	%xmm4, %xmm10
	punpckhwd	%xmm3, %xmm4
	punpcklwd	%xmm3, %xmm7
	punpcklwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm1
	pcmpgtd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm6
	movdqa	%xmm1, %xmm9
	pand	%xmm10, %xmm6
	pandn	%xmm4, %xmm9
	por	%xmm6, %xmm9
	movdqa	%xmm9, %xmm6
	pcmpgtd	%xmm2, %xmm6
	pand	%xmm1, %xmm4
	pandn	%xmm10, %xmm1
	por	%xmm1, %xmm4
	movdqa	%xmm4, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm6, %xmm9
	pandn	%xmm2, %xmm6
	movdqa	%xmm6, %xmm2
	por	%xmm9, %xmm2
	movdqa	%xmm7, %xmm9
	pcmpgtd	%xmm2, %xmm9
	pand	%xmm1, %xmm0
	pandn	%xmm4, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm7, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm9, %xmm11
	movdqa	%xmm9, %xmm6
	movdqa	%xmm5, %xmm9
	pandn	%xmm2, %xmm6
	pand	%xmm7, %xmm11
	por	%xmm11, %xmm6
	pcmpgtd	%xmm6, %xmm9
	pand	%xmm1, %xmm0
	pandn	%xmm7, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm9, %xmm2
	pandn	%xmm6, %xmm9
	pand	%xmm5, %xmm2
	por	%xmm9, %xmm2
	pand	%xmm1, %xmm0
	pandn	%xmm5, %xmm1
	por	%xmm1, %xmm0
	je	L189
	movdqa	32(%r8), %xmm5
	cmpl	$3, %r9d
	movdqa	%xmm5, %xmm1
	punpckhbw	%xmm8, %xmm5
	movdqa	%xmm5, %xmm7
	punpckhwd	%xmm3, %xmm5
	punpcklbw	%xmm8, %xmm1
	movdqa	%xmm1, %xmm10
	punpckhwd	%xmm3, %xmm1
	punpcklwd	%xmm3, %xmm7
	punpcklwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm4
	pcmpgtd	%xmm1, %xmm4
	movdqa	%xmm4, %xmm6
	movdqa	%xmm4, %xmm9
	pand	%xmm10, %xmm6
	pandn	%xmm1, %xmm9
	por	%xmm6, %xmm9
	movdqa	%xmm9, %xmm6
	pcmpgtd	%xmm2, %xmm6
	pand	%xmm4, %xmm1
	pandn	%xmm10, %xmm4
	por	%xmm1, %xmm4
	movdqa	%xmm4, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm6, %xmm9
	pandn	%xmm2, %xmm6
	movdqa	%xmm6, %xmm2
	por	%xmm9, %xmm2
	movdqa	%xmm7, %xmm9
	pcmpgtd	%xmm2, %xmm9
	pand	%xmm1, %xmm0
	pandn	%xmm4, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm7, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm9, %xmm11
	movdqa	%xmm9, %xmm6
	movdqa	%xmm5, %xmm9
	pandn	%xmm2, %xmm6
	pand	%xmm7, %xmm11
	por	%xmm11, %xmm6
	pcmpgtd	%xmm6, %xmm9
	pand	%xmm1, %xmm0
	pandn	%xmm7, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm9, %xmm2
	pandn	%xmm6, %xmm9
	pand	%xmm5, %xmm2
	por	%xmm9, %xmm2
	pand	%xmm1, %xmm0
	pandn	%xmm5, %xmm1
	por	%xmm1, %xmm0
	je	L189
	movdqa	48(%r8), %xmm5
	cmpl	$4, %r9d
	movdqa	%xmm5, %xmm4
	punpckhbw	%xmm8, %xmm5
	movdqa	%xmm5, %xmm7
	punpckhwd	%xmm3, %xmm5
	punpcklbw	%xmm8, %xmm4
	movdqa	%xmm4, %xmm10
	punpckhwd	%xmm3, %xmm4
	punpcklwd	%xmm3, %xmm7
	punpcklwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm1
	pcmpgtd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm6
	movdqa	%xmm1, %xmm9
	pand	%xmm10, %xmm6
	pandn	%xmm4, %xmm9
	por	%xmm6, %xmm9
	movdqa	%xmm9, %xmm6
	pcmpgtd	%xmm2, %xmm6
	pand	%xmm1, %xmm4
	pandn	%xmm10, %xmm1
	por	%xmm1, %xmm4
	movdqa	%xmm4, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm6, %xmm9
	pandn	%xmm2, %xmm6
	movdqa	%xmm6, %xmm2
	por	%xmm9, %xmm2
	movdqa	%xmm7, %xmm9
	pcmpgtd	%xmm2, %xmm9
	pand	%xmm1, %xmm0
	pandn	%xmm4, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm7, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm9, %xmm11
	movdqa	%xmm9, %xmm6
	movdqa	%xmm5, %xmm9
	pandn	%xmm2, %xmm6
	pand	%xmm7, %xmm11
	por	%xmm11, %xmm6
	pcmpgtd	%xmm6, %xmm9
	pand	%xmm1, %xmm0
	pandn	%xmm7, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm9, %xmm2
	pandn	%xmm6, %xmm9
	pand	%xmm5, %xmm2
	por	%xmm9, %xmm2
	pand	%xmm1, %xmm0
	pandn	%xmm5, %xmm1
	por	%xmm1, %xmm0
	je	L189
	movdqa	64(%r8), %xmm5
	cmpl	$5, %r9d
	movdqa	%xmm5, %xmm1
	punpckhbw	%xmm8, %xmm5
	movdqa	%xmm5, %xmm6
	punpckhwd	%xmm3, %xmm5
	punpcklbw	%xmm8, %xmm1
	movdqa	%xmm1, %xmm9
	movdqa	%xmm1, %xmm10
	punpcklwd	%xmm3, %xmm6
	punpcklwd	%xmm3, %xmm9
	movdqa	%xmm9, %xmm7
	punpckhwd	%xmm3, %xmm10
	pcmpgtd	%xmm10, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm7, %xmm4
	pandn	%xmm10, %xmm4
	pand	%xmm9, %xmm1
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm4, %xmm1
	pandn	%xmm2, %xmm4
	movdqa	%xmm6, %xmm2
	por	%xmm4, %xmm1
	pcmpgtd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm4
	pandn	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	pand	%xmm6, %xmm4
	por	%xmm4, %xmm1
	movdqa	%xmm5, %xmm4
	pcmpgtd	%xmm1, %xmm4
	movdqa	%xmm4, %xmm2
	pandn	%xmm1, %xmm4
	movdqa	%xmm10, %xmm1
	pand	%xmm5, %xmm2
	por	%xmm4, %xmm2
	movdqa	%xmm7, %xmm4
	pand	%xmm7, %xmm1
	pandn	%xmm9, %xmm4
	por	%xmm1, %xmm4
	movdqa	%xmm4, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm4, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm6, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm6, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm5, %xmm1
	por	%xmm1, %xmm0
	je	L189
	movdqa	80(%r8), %xmm5
	cmpl	$6, %r9d
	movdqa	%xmm5, %xmm1
	punpckhbw	%xmm8, %xmm5
	movdqa	%xmm5, %xmm6
	punpckhwd	%xmm3, %xmm5
	punpcklbw	%xmm8, %xmm1
	movdqa	%xmm1, %xmm9
	movdqa	%xmm1, %xmm10
	punpcklwd	%xmm3, %xmm6
	punpcklwd	%xmm3, %xmm9
	movdqa	%xmm9, %xmm7
	punpckhwd	%xmm3, %xmm10
	pcmpgtd	%xmm10, %xmm7
	movdqa	%xmm7, %xmm1
	movdqa	%xmm7, %xmm4
	pandn	%xmm10, %xmm4
	pand	%xmm9, %xmm1
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm4, %xmm1
	pandn	%xmm2, %xmm4
	movdqa	%xmm6, %xmm2
	por	%xmm4, %xmm1
	pcmpgtd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm4
	pandn	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	pand	%xmm6, %xmm4
	por	%xmm4, %xmm1
	movdqa	%xmm5, %xmm4
	pcmpgtd	%xmm1, %xmm4
	movdqa	%xmm4, %xmm2
	pandn	%xmm1, %xmm4
	movdqa	%xmm10, %xmm1
	pand	%xmm5, %xmm2
	por	%xmm4, %xmm2
	movdqa	%xmm7, %xmm4
	pand	%xmm7, %xmm1
	pandn	%xmm9, %xmm4
	por	%xmm1, %xmm4
	movdqa	%xmm4, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm4, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm6, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm6, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm5, %xmm1
	por	%xmm1, %xmm0
	je	L189
	movdqa	96(%r8), %xmm5
	cmpl	$7, %r9d
	movdqa	%xmm5, %xmm4
	punpckhbw	%xmm8, %xmm5
	movdqa	%xmm5, %xmm7
	punpckhwd	%xmm3, %xmm5
	punpcklbw	%xmm8, %xmm4
	movdqa	%xmm4, %xmm10
	punpckhwd	%xmm3, %xmm4
	punpcklwd	%xmm3, %xmm7
	punpcklwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm1
	pcmpgtd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm6
	movdqa	%xmm1, %xmm9
	pand	%xmm10, %xmm6
	pandn	%xmm4, %xmm9
	por	%xmm6, %xmm9
	movdqa	%xmm9, %xmm6
	pcmpgtd	%xmm2, %xmm6
	pand	%xmm1, %xmm4
	pandn	%xmm10, %xmm1
	por	%xmm1, %xmm4
	movdqa	%xmm4, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm6, %xmm9
	pandn	%xmm2, %xmm6
	movdqa	%xmm6, %xmm2
	por	%xmm9, %xmm2
	movdqa	%xmm7, %xmm9
	pcmpgtd	%xmm2, %xmm9
	pand	%xmm1, %xmm0
	pandn	%xmm4, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm7, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm9, %xmm11
	movdqa	%xmm9, %xmm6
	movdqa	%xmm5, %xmm9
	pandn	%xmm2, %xmm6
	pand	%xmm7, %xmm11
	por	%xmm11, %xmm6
	pcmpgtd	%xmm6, %xmm9
	pand	%xmm1, %xmm0
	pandn	%xmm7, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm9, %xmm2
	pandn	%xmm6, %xmm9
	pand	%xmm5, %xmm2
	por	%xmm9, %xmm2
	pand	%xmm1, %xmm0
	pandn	%xmm5, %xmm1
	por	%xmm1, %xmm0
	je	L189
	movdqa	112(%r8), %xmm5
	cmpl	$8, %r9d
	movdqa	%xmm5, %xmm1
	punpckhbw	%xmm8, %xmm5
	movdqa	%xmm5, %xmm7
	punpckhwd	%xmm3, %xmm5
	punpcklbw	%xmm8, %xmm1
	movdqa	%xmm1, %xmm10
	punpckhwd	%xmm3, %xmm1
	punpcklwd	%xmm3, %xmm7
	punpcklwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm4
	pcmpgtd	%xmm1, %xmm4
	movdqa	%xmm4, %xmm6
	movdqa	%xmm4, %xmm9
	pand	%xmm10, %xmm6
	pandn	%xmm1, %xmm9
	por	%xmm6, %xmm9
	movdqa	%xmm9, %xmm6
	pcmpgtd	%xmm2, %xmm6
	pand	%xmm4, %xmm1
	pandn	%xmm10, %xmm4
	por	%xmm1, %xmm4
	movdqa	%xmm4, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm6, %xmm9
	pandn	%xmm2, %xmm6
	movdqa	%xmm6, %xmm2
	por	%xmm9, %xmm2
	movdqa	%xmm7, %xmm9
	pcmpgtd	%xmm2, %xmm9
	pand	%xmm1, %xmm0
	pandn	%xmm4, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm7, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm9, %xmm11
	movdqa	%xmm9, %xmm6
	movdqa	%xmm5, %xmm9
	pandn	%xmm2, %xmm6
	pand	%xmm7, %xmm11
	por	%xmm11, %xmm6
	pcmpgtd	%xmm6, %xmm9
	pand	%xmm1, %xmm0
	pandn	%xmm7, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm9, %xmm2
	pandn	%xmm6, %xmm9
	pand	%xmm5, %xmm2
	por	%xmm9, %xmm2
	pand	%xmm1, %xmm0
	pandn	%xmm5, %xmm1
	por	%xmm1, %xmm0
	je	L189
	movdqa	128(%r8), %xmm4
	cmpl	$9, %r9d
	movdqa	%xmm4, %xmm1
	punpckhbw	%xmm8, %xmm4
	movdqa	%xmm4, %xmm7
	punpckhwd	%xmm3, %xmm4
	punpcklbw	%xmm8, %xmm1
	movdqa	%xmm1, %xmm10
	punpckhwd	%xmm3, %xmm1
	punpcklwd	%xmm3, %xmm7
	punpcklwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm9
	pcmpgtd	%xmm1, %xmm9
	movdqa	%xmm9, %xmm5
	movdqa	%xmm9, %xmm6
	pand	%xmm10, %xmm5
	pandn	%xmm1, %xmm6
	por	%xmm5, %xmm6
	movdqa	%xmm6, %xmm5
	pcmpgtd	%xmm2, %xmm5
	pand	%xmm9, %xmm1
	pandn	%xmm10, %xmm9
	por	%xmm1, %xmm9
	movdqa	%xmm9, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm5, %xmm6
	pandn	%xmm2, %xmm5
	movdqa	%xmm5, %xmm2
	por	%xmm6, %xmm2
	movdqa	%xmm7, %xmm6
	pcmpgtd	%xmm2, %xmm6
	pand	%xmm1, %xmm0
	pandn	%xmm9, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm7, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm6, %xmm11
	movdqa	%xmm6, %xmm5
	movdqa	%xmm4, %xmm6
	pandn	%xmm2, %xmm5
	pand	%xmm7, %xmm11
	por	%xmm11, %xmm5
	pcmpgtd	%xmm5, %xmm6
	pand	%xmm1, %xmm0
	pandn	%xmm7, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm4, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm6, %xmm2
	pandn	%xmm5, %xmm6
	pand	%xmm4, %xmm2
	por	%xmm6, %xmm2
	pand	%xmm1, %xmm0
	pandn	%xmm4, %xmm1
	por	%xmm1, %xmm0
	je	L189
	movdqa	144(%r8), %xmm4
	cmpl	$10, %r9d
	movdqa	%xmm4, %xmm1
	punpckhbw	%xmm8, %xmm4
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm3, %xmm4
	punpcklbw	%xmm8, %xmm1
	movdqa	%xmm1, %xmm8
	movdqa	%xmm1, %xmm7
	punpcklwd	%xmm3, %xmm5
	punpcklwd	%xmm3, %xmm8
	movdqa	%xmm8, %xmm6
	punpckhwd	%xmm3, %xmm7
	pcmpgtd	%xmm7, %xmm6
	movdqa	%xmm6, %xmm1
	movdqa	%xmm6, %xmm3
	pandn	%xmm7, %xmm3
	pand	%xmm8, %xmm1
	por	%xmm3, %xmm1
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pand	%xmm3, %xmm1
	pandn	%xmm2, %xmm3
	movdqa	%xmm5, %xmm2
	por	%xmm3, %xmm1
	pcmpgtd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm3
	pandn	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	pand	%xmm5, %xmm3
	por	%xmm3, %xmm1
	movdqa	%xmm4, %xmm3
	pcmpgtd	%xmm1, %xmm3
	movdqa	%xmm3, %xmm2
	pandn	%xmm1, %xmm3
	movdqa	%xmm7, %xmm1
	pand	%xmm4, %xmm2
	por	%xmm3, %xmm2
	movdqa	%xmm6, %xmm3
	pand	%xmm6, %xmm1
	pandn	%xmm8, %xmm3
	por	%xmm1, %xmm3
	movdqa	%xmm3, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm3, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm5, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm4, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm4, %xmm1
	por	%xmm1, %xmm0
	je	L189
	pxor	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	cmpl	$11, %r9d
	movdqa	160(%r8), %xmm5
	movdqa	%xmm5, %xmm1
	punpckhbw	%xmm4, %xmm5
	movdqa	%xmm5, %xmm8
	punpckhwd	%xmm3, %xmm5
	punpcklbw	%xmm4, %xmm1
	movdqa	%xmm1, %xmm10
	punpckhwd	%xmm3, %xmm1
	punpcklwd	%xmm3, %xmm8
	punpcklwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm9
	pcmpgtd	%xmm1, %xmm9
	movdqa	%xmm9, %xmm6
	movdqa	%xmm9, %xmm7
	pand	%xmm10, %xmm6
	pandn	%xmm1, %xmm7
	por	%xmm6, %xmm7
	movdqa	%xmm7, %xmm6
	pcmpgtd	%xmm2, %xmm6
	pand	%xmm9, %xmm1
	pandn	%xmm10, %xmm9
	por	%xmm1, %xmm9
	movdqa	%xmm9, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm6, %xmm7
	pandn	%xmm2, %xmm6
	movdqa	%xmm6, %xmm2
	por	%xmm7, %xmm2
	movdqa	%xmm8, %xmm7
	pcmpgtd	%xmm2, %xmm7
	pand	%xmm1, %xmm0
	pandn	%xmm9, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm8, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm7, %xmm11
	pandn	%xmm2, %xmm7
	movdqa	%xmm7, %xmm6
	movdqa	%xmm5, %xmm7
	pand	%xmm8, %xmm11
	por	%xmm11, %xmm6
	pcmpgtd	%xmm6, %xmm7
	pand	%xmm1, %xmm0
	pandn	%xmm8, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm7, %xmm2
	pandn	%xmm6, %xmm7
	pand	%xmm5, %xmm2
	por	%xmm7, %xmm2
	pand	%xmm1, %xmm0
	pandn	%xmm5, %xmm1
	por	%xmm1, %xmm0
	je	L189
	movdqa	176(%r8), %xmm6
	cmpl	$12, %r9d
	movdqa	%xmm6, %xmm5
	punpckhbw	%xmm4, %xmm6
	movdqa	%xmm6, %xmm8
	punpckhwd	%xmm3, %xmm6
	punpcklbw	%xmm4, %xmm5
	movdqa	%xmm5, %xmm10
	punpckhwd	%xmm3, %xmm5
	punpcklwd	%xmm3, %xmm8
	punpcklwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm1
	pcmpgtd	%xmm5, %xmm1
	movdqa	%xmm1, %xmm7
	movdqa	%xmm1, %xmm9
	pand	%xmm10, %xmm7
	pandn	%xmm5, %xmm9
	por	%xmm7, %xmm9
	movdqa	%xmm9, %xmm7
	pcmpgtd	%xmm2, %xmm7
	pand	%xmm1, %xmm5
	pandn	%xmm10, %xmm1
	por	%xmm1, %xmm5
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm7, %xmm9
	pandn	%xmm2, %xmm7
	movdqa	%xmm7, %xmm2
	por	%xmm9, %xmm2
	movdqa	%xmm8, %xmm9
	pcmpgtd	%xmm2, %xmm9
	pand	%xmm1, %xmm0
	pandn	%xmm5, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm8, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm9, %xmm11
	movdqa	%xmm9, %xmm7
	movdqa	%xmm6, %xmm9
	pandn	%xmm2, %xmm7
	pand	%xmm8, %xmm11
	por	%xmm11, %xmm7
	pcmpgtd	%xmm7, %xmm9
	pand	%xmm1, %xmm0
	pandn	%xmm8, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm6, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm9, %xmm2
	pandn	%xmm7, %xmm9
	pand	%xmm6, %xmm2
	por	%xmm9, %xmm2
	pand	%xmm1, %xmm0
	pandn	%xmm6, %xmm1
	por	%xmm1, %xmm0
	je	L189
	movdqa	192(%r8), %xmm5
	cmpl	$13, %r9d
	movdqa	%xmm5, %xmm1
	punpckhbw	%xmm4, %xmm5
	movdqa	%xmm5, %xmm8
	punpckhwd	%xmm3, %xmm5
	punpcklbw	%xmm4, %xmm1
	movdqa	%xmm1, %xmm10
	punpckhwd	%xmm3, %xmm1
	punpcklwd	%xmm3, %xmm8
	punpcklwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm9
	pcmpgtd	%xmm1, %xmm9
	movdqa	%xmm9, %xmm6
	movdqa	%xmm9, %xmm7
	pand	%xmm10, %xmm6
	pandn	%xmm1, %xmm7
	por	%xmm6, %xmm7
	movdqa	%xmm7, %xmm6
	pcmpgtd	%xmm2, %xmm6
	pand	%xmm9, %xmm1
	pand	%xmm6, %xmm7
	pandn	%xmm2, %xmm6
	movdqa	%xmm6, %xmm2
	por	%xmm7, %xmm2
	movdqa	%xmm8, %xmm7
	pcmpgtd	%xmm2, %xmm7
	movdqa	%xmm7, %xmm6
	pandn	%xmm2, %xmm7
	pand	%xmm8, %xmm6
	por	%xmm7, %xmm6
	movdqa	%xmm5, %xmm7
	pcmpgtd	%xmm6, %xmm7
	movdqa	%xmm7, %xmm2
	pandn	%xmm6, %xmm7
	movdqa	%xmm9, %xmm6
	pandn	%xmm10, %xmm6
	por	%xmm1, %xmm6
	movdqa	%xmm6, %xmm1
	pand	%xmm5, %xmm2
	pcmpgtd	%xmm0, %xmm1
	por	%xmm7, %xmm2
	pand	%xmm1, %xmm0
	pandn	%xmm6, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm8, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm8, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm5, %xmm1
	por	%xmm1, %xmm0
	je	L189
	movdqa	208(%r8), %xmm5
	cmpl	$14, %r9d
	movdqa	%xmm5, %xmm1
	punpckhbw	%xmm4, %xmm5
	movdqa	%xmm5, %xmm8
	punpckhwd	%xmm3, %xmm5
	punpcklbw	%xmm4, %xmm1
	movdqa	%xmm1, %xmm10
	punpckhwd	%xmm3, %xmm1
	punpcklwd	%xmm3, %xmm8
	punpcklwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm9
	pcmpgtd	%xmm1, %xmm9
	movdqa	%xmm9, %xmm6
	movdqa	%xmm9, %xmm7
	pand	%xmm10, %xmm6
	pandn	%xmm1, %xmm7
	por	%xmm6, %xmm7
	movdqa	%xmm7, %xmm6
	pcmpgtd	%xmm2, %xmm6
	pand	%xmm9, %xmm1
	pand	%xmm6, %xmm7
	pandn	%xmm2, %xmm6
	movdqa	%xmm6, %xmm2
	por	%xmm7, %xmm2
	movdqa	%xmm8, %xmm7
	pcmpgtd	%xmm2, %xmm7
	movdqa	%xmm7, %xmm6
	pandn	%xmm2, %xmm7
	pand	%xmm8, %xmm6
	por	%xmm7, %xmm6
	movdqa	%xmm5, %xmm7
	pcmpgtd	%xmm6, %xmm7
	movdqa	%xmm7, %xmm2
	pandn	%xmm6, %xmm7
	movdqa	%xmm9, %xmm6
	pandn	%xmm10, %xmm6
	por	%xmm1, %xmm6
	movdqa	%xmm6, %xmm1
	pand	%xmm5, %xmm2
	pcmpgtd	%xmm0, %xmm1
	por	%xmm7, %xmm2
	pand	%xmm1, %xmm0
	pandn	%xmm6, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm8, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm8, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm5, %xmm1
	por	%xmm1, %xmm0
	je	L189
	movdqa	224(%r8), %xmm6
	cmpl	$15, %r9d
	movdqa	%xmm6, %xmm5
	punpckhbw	%xmm4, %xmm6
	movdqa	%xmm6, %xmm8
	punpckhwd	%xmm3, %xmm6
	punpcklbw	%xmm4, %xmm5
	movdqa	%xmm5, %xmm10
	punpckhwd	%xmm3, %xmm5
	punpcklwd	%xmm3, %xmm8
	punpcklwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm1
	pcmpgtd	%xmm5, %xmm1
	movdqa	%xmm1, %xmm7
	movdqa	%xmm1, %xmm9
	pand	%xmm10, %xmm7
	pandn	%xmm5, %xmm9
	por	%xmm7, %xmm9
	movdqa	%xmm9, %xmm7
	pcmpgtd	%xmm2, %xmm7
	pand	%xmm1, %xmm5
	pandn	%xmm10, %xmm1
	por	%xmm1, %xmm5
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm7, %xmm9
	pandn	%xmm2, %xmm7
	movdqa	%xmm7, %xmm2
	por	%xmm9, %xmm2
	movdqa	%xmm8, %xmm9
	pcmpgtd	%xmm2, %xmm9
	pand	%xmm1, %xmm0
	pandn	%xmm5, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm8, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm9, %xmm7
	pandn	%xmm2, %xmm9
	pand	%xmm8, %xmm7
	por	%xmm9, %xmm7
	movdqa	%xmm6, %xmm9
	pcmpgtd	%xmm7, %xmm9
	pand	%xmm1, %xmm0
	pandn	%xmm8, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm6, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm9, %xmm2
	pandn	%xmm7, %xmm9
	pand	%xmm6, %xmm2
	por	%xmm9, %xmm2
	pand	%xmm1, %xmm0
	pandn	%xmm6, %xmm1
	por	%xmm1, %xmm0
	je	L189
	movdqa	240(%r8), %xmm8
	movdqa	%xmm8, %xmm7
	punpckhbw	%xmm4, %xmm8
	movdqa	%xmm8, %xmm6
	punpckhwd	%xmm3, %xmm8
	punpcklbw	%xmm4, %xmm7
	movdqa	%xmm7, %xmm5
	punpckhwd	%xmm3, %xmm7
	movdqa	%xmm7, %xmm4
	punpcklwd	%xmm3, %xmm5
	pcmpgtd	%xmm5, %xmm4
	punpcklwd	%xmm3, %xmm6
	movdqa	%xmm4, %xmm1
	movdqa	%xmm4, %xmm3
	pandn	%xmm5, %xmm3
	pand	%xmm7, %xmm1
	por	%xmm3, %xmm1
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pand	%xmm4, %xmm5
	pandn	%xmm7, %xmm4
	pand	%xmm3, %xmm1
	pandn	%xmm2, %xmm3
	por	%xmm3, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm6, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm6, %xmm2
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm8, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm8, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm4, %xmm1
	por	%xmm5, %xmm1
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm0, %xmm3
	pand	%xmm3, %xmm0
	pandn	%xmm1, %xmm3
	movdqa	%xmm3, %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm0, %xmm6
	pandn	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	por	%xmm6, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm8, %xmm0
	pand	%xmm0, %xmm8
	pandn	%xmm1, %xmm0
	por	%xmm8, %xmm0
	.align 4,0x90
L189:
	movdqa	%xmm0, %xmm3
	movl	%edi, %edx
	psrldq	$8, %xmm3
	andl	$-16, %edx
	movdqa	%xmm3, %xmm1
	addl	%edx, %ecx
	cmpl	%edi, %edx
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm3, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm3
	psrldq	$4, %xmm3
	movdqa	%xmm3, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm3, %xmm1
	por	%xmm1, %xmm0
	movd	%xmm0, %r14d
	movdqa	%xmm2, %xmm0
	psrldq	$8, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm2, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm2
	psrldq	$4, %xmm2
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm0, %xmm1
	por	%xmm2, %xmm1
	movd	%xmm1, %r9d
	je	L193
L186:
	movslq	%ecx, %rcx
	.align 4,0x90
L191:
	movzbl	43888(%rbx,%rcx), %eax
	cmpl	%eax, %r9d
	cmovl	%eax, %r9d
	cmpl	%eax, %r14d
	cmovg	%eax, %r14d
	addq	$1, %rcx
	cmpl	%ecx, %ebp
	jg	L191
L193:
	subq	$8, %rsp
LCFI7:
	movq	%r12, %rdi
	movl	%r14d, %r8d
	pushq	%rbp
LCFI8:
	leaq	43888(%rbx), %rcx
	addq	$4, %r15
	addq	$258, %rbx
	leaq	12384(%r12), %rdx
	leaq	6192(%r12), %rsi
	addq	$1032, %r12
	call	_BZ2_hbCreateDecodeTables
	movl	%r14d, -4(%r15)
	cmpq	%r13, %r12
	popq	%rdi
LCFI9:
	popq	%r8
LCFI10:
	jne	L185
	movl	16(%rsp), %eax
	movl	%ebp, %r13d
	movq	40(%rsp), %r15
	movl	64(%rsp), %ebp
	movl	68(%rsp), %r12d
	movl	80(%rsp), %r10d
	movq	72(%rsp), %rbx
	movl	36(%rsp), %r14d
	movl	%eax, 36(%rsp)
L184:
	leaq	68(%rbx), %rdi
	xorl	%esi, %esi
	movl	$1024, %edx
	movl	%r10d, 40(%rsp)
	movl	3192(%rbx), %eax
	addl	$1, %eax
	movl	%eax, 72(%rsp)
	imull	$100000, 40(%rbx), %eax
	movl	%eax, 80(%rsp)
	call	_memset
	movabsq	$17454747094992, %rax
	movl	$4080, 7880(%rbx)
	movq	%rax, 7872(%rbx)
	movabsq	$-7523661662112280176, %rax
	movq	%rax, 7708(%rbx)
	movabsq	$-6944940279407666792, %rax
	movq	%rax, 7716(%rbx)
	movabsq	$-6366218896703053408, %rax
	movq	%rax, 7724(%rbx)
	movabsq	$-5787497513998440024, %rax
	movq	%rax, 7732(%rbx)
	movabsq	$-5208776131293826640, %rax
	movq	%rax, 7740(%rbx)
	movabsq	$-4630054748589213256, %rax
	movq	%rax, 7748(%rbx)
	movabsq	$-4051333365884599872, %rax
	movq	%rax, 7756(%rbx)
	movabsq	$-3472611983179986488, %rax
	movq	%rax, 7764(%rbx)
	movabsq	$-2893890600475373104, %rax
	movq	%rax, 7772(%rbx)
	movabsq	$-2315169217770759720, %rax
	movq	%rax, 7780(%rbx)
	movabsq	$-1736447835066146336, %rax
	movq	%rax, 7788(%rbx)
	movabsq	$-1157726452361532952, %rax
	movq	%rax, 7796(%rbx)
	movabsq	$-579005069656919568, %rax
	movq	%rax, 7804(%rbx)
	movabsq	$-283686952306184, %rax
	movq	%rax, 7812(%rbx)
	movabsq	$16973710757728, %rax
	movq	%rax, 7844(%rbx)
	movabsq	$17111149711232, %rax
	movq	%rax, 7852(%rbx)
	movabsq	$17248588664736, %rax
	movq	%rax, 7860(%rbx)
	movabsq	$16767552327472, %rax
	movq	%rax, 7832(%rbx)
	movabsq	$506097522914230528, %rax
	movq	%rax, 7564(%rbx)
	movabsq	$1084818905618843912, %rax
	movq	%rax, 7572(%rbx)
	movabsq	$1663540288323457296, %rax
	movq	%rax, 7580(%rbx)
	movabsq	$2242261671028070680, %rax
	movq	%rax, 7588(%rbx)
	movabsq	$2820983053732684064, %rax
	movq	%rax, 7596(%rbx)
	movabsq	$3399704436437297448, %rax
	movq	%rax, 7604(%rbx)
	movabsq	$3978425819141910832, %rax
	movq	%rax, 7612(%rbx)
	movabsq	$4557147201846524216, %rax
	movq	%rax, 7620(%rbx)
	movabsq	$5135868584551137600, %rax
	movq	%rax, 7628(%rbx)
	movabsq	$5714589967255750984, %rax
	movq	%rax, 7636(%rbx)
	movabsq	$6293311349960364368, %rax
	movl	$4032, 7868(%rbx)
	movl	$3920, 7840(%rbx)
	movq	%rax, 7644(%rbx)
	movl	32(%rsp), %esi
	movabsq	$6872032732664977752, %rax
	movq	%rax, 7652(%rbx)
	movl	40(%rsp), %r10d
	movabsq	$7450754115369591136, %rax
	movq	%rax, 7660(%rbx)
	movabsq	$8029475498074204520, %rax
	movq	%rax, 7668(%rbx)
	movabsq	$8608196880778817904, %rax
	movq	%rax, 7676(%rbx)
	testl	%esi, %esi
	movabsq	$9186918263483431288, %rax
	movq	%rax, 7684(%rbx)
	movabsq	$-8681104427521506944, %rax
	movq	%rax, 7692(%rbx)
	movabsq	$-8102383044816893560, %rax
	movq	%rax, 7700(%rbx)
	movabsq	$16561393897216, %rax
	movq	%rax, 7820(%rbx)
	movl	$3872, 7828(%rbx)
	jle	L358
	movzbl	7884(%rbx), %esi
	movl	$0, 40(%rsp)
	movl	$256, %r8d
	movl	$49, 64(%rsp)
	movl	$0, 68(%rsp)
	movslq	%esi, %rdx
	movl	%esi, 84(%rsp)
	movl	64012(%rbx,%rdx,4), %ebp
	movzbl	%sil, %edx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movl	%ebp, %r10d
	leaq	45436(%rbx,%rax), %rcx
	leaq	57820(%rbx,%rax), %r15
	movq	%rcx, 24(%rsp)
	leaq	51628(%rbx,%rax), %rax
	movq	%rax, 48(%rsp)
	.align 4,0x90
L32:
	movl	$36, 8(%rbx)
	movl	36(%rbx), %eax
	jmp	L196
	.align 4,0x90
L194:
	movq	(%rbx), %rdx
	movl	8(%rdx), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rdx), %rdi
	addl	$8, %eax
	subl	$1, %esi
	movl	32(%rbx), %ecx
	movzbl	(%rdi), %r9d
	movl	%eax, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %ecx
	orl	%r9d, %ecx
	movl	%ecx, 32(%rbx)
	addl	$1, 12(%rdx)
	movq	%rdi, (%rdx)
	movl	%esi, 8(%rdx)
	je	L573
L196:
	cmpl	%eax, %ebp
	jg	L194
	movl	32(%rbx), %r12d
	subl	%ebp, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%eax, 36(%rbx)
	shrl	%cl, %r12d
	movl	%ebp, %ecx
	sall	%cl, %edx
	subl	$1, %edx
	andl	%edx, %r12d
	jmp	L195
	.align 4,0x90
L29:
	movl	$33, 8(%rbx)
	movl	36(%rbx), %r9d
	jmp	L171
	.align 4,0x90
L169:
	movq	(%rbx), %rax
	movl	8(%rax), %ecx
	testl	%ecx, %ecx
	je	L395
	movq	(%rax), %rsi
	addl	$8, %r9d
	subl	$1, %ecx
	movl	32(%rbx), %edx
	movzbl	(%rsi), %edi
	movl	%r9d, 36(%rbx)
	addq	$1, %rsi
	sall	$8, %edx
	orl	%edi, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rsi, (%rax)
	movl	%ecx, 8(%rax)
	je	L574
L171:
	cmpl	$4, %r9d
	jle	L169
	movl	32(%rbx), %eax
	leal	-5(%r9), %ecx
	xorl	%r8d, %r8d
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	andl	$31, %eax
	movl	%eax, 12(%rsp)
	jmp	L170
L198:
	movq	48(%rsp), %rcx
	movl	%r12d, %eax
	subl	(%rcx,%rdx,4), %eax
	cmpl	$257, %eax
	ja	L390
L567:
	cltq
	movl	(%r15,%rax,4), %eax
	movl	%eax, 56(%rsp)
L218:
	movl	56(%rsp), %eax
	cmpl	%eax, 72(%rsp)
	je	L202
	cmpl	$1, %eax
	jbe	L575
	movl	40(%rsp), %edi
	cmpl	%edi, 80(%rsp)
	jle	L390
	leal	-1(%rax), %esi
	movl	%eax, %r9d
	cmpl	$15, %esi
	movl	%esi, %edi
	ja	L223
	movl	7820(%rbx), %edx
	cmpl	$3, %esi
	leal	(%rdx,%rsi), %ecx
	movzbl	3724(%rbx,%rcx), %r11d
	movq	%rcx, %rax
	jbe	L224
	leal	-1(%rcx), %ecx
	movslq	%eax, %rsi
	movslq	%ecx, %rcx
	movzbl	3724(%rbx,%rcx), %edi
	movb	%dil, 3724(%rbx,%rsi)
	leal	-2(%rax), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %edi
	movb	%dil, 3724(%rbx,%rcx)
	leal	-3(%rax), %ecx
	subl	$4, %eax
	movslq	%ecx, %rcx
	cltq
	movzbl	3724(%rbx,%rcx), %edi
	movb	%dil, 3724(%rbx,%rsi)
	movzbl	3724(%rbx,%rax), %eax
	leal	-5(%r9), %edi
	cmpl	$3, %edi
	movb	%al, 3724(%rbx,%rcx)
	jbe	L225
	leal	(%rdx,%rdi), %eax
	leal	-1(%rax), %ecx
	movslq	%eax, %rsi
	movslq	%ecx, %rcx
	movzbl	3724(%rbx,%rcx), %r9d
	movb	%r9b, 3724(%rbx,%rsi)
	leal	-2(%rax), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %r9d
	movb	%r9b, 3724(%rbx,%rcx)
	leal	-3(%rax), %ecx
	subl	$4, %eax
	movslq	%ecx, %rcx
	cltq
	movzbl	3724(%rbx,%rcx), %r9d
	movb	%r9b, 3724(%rbx,%rsi)
	movl	56(%rsp), %r9d
	movzbl	3724(%rbx,%rax), %eax
	movb	%al, 3724(%rbx,%rcx)
	leal	-9(%r9), %eax
	cmpl	$3, %eax
	jbe	L225
	addl	%edx, %eax
	leal	-1(%rax), %ecx
	movslq	%eax, %rsi
	movslq	%ecx, %rcx
	movzbl	3724(%rbx,%rcx), %r9d
	movb	%r9b, 3724(%rbx,%rsi)
	leal	-2(%rax), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %r9d
	movb	%r9b, 3724(%rbx,%rcx)
	leal	-3(%rax), %ecx
	subl	$4, %eax
	movslq	%ecx, %rcx
	cltq
	movzbl	3724(%rbx,%rcx), %r9d
	movb	%r9b, 3724(%rbx,%rsi)
	movzbl	3724(%rbx,%rax), %eax
	movb	%al, 3724(%rbx,%rcx)
L225:
	andl	$3, %edi
L224:
	testl	%edi, %edi
	je	L226
	leal	(%rdx,%rdi), %eax
	leal	-1(%rax), %ecx
	movzbl	3724(%rbx,%rcx), %ecx
	movb	%cl, 3724(%rbx,%rax)
	movl	%edi, %eax
	subl	$1, %eax
	je	L226
	addl	%edx, %eax
	cmpl	$2, %edi
	leal	-1(%rax), %ecx
	movzbl	3724(%rbx,%rcx), %ecx
	movb	%cl, 3724(%rbx,%rax)
	je	L226
	movl	%edx, %eax
	movzbl	3724(%rbx,%rax), %ecx
	leal	1(%rdx), %eax
	movb	%cl, 3724(%rbx,%rax)
L226:
	movslq	%edx, %rdx
	movb	%r11b, 3724(%rbx,%rdx)
L227:
	movzbl	3468(%rbx,%r11), %edx
	addl	$1, 68(%rbx,%rdx,4)
	movq	%rdx, %rax
	cmpb	$0, 44(%rbx)
	movslq	40(%rsp), %rdx
	je	L231
	movq	3160(%rbx), %rcx
	movw	%ax, (%rcx,%rdx,2)
L232:
	movl	64(%rsp), %eax
	addl	$1, 40(%rsp)
	testl	%eax, %eax
	je	L233
	subl	$1, %eax
	movl	%r10d, %ebp
	movl	%eax, 64(%rsp)
L234:
	movl	%ebp, %r10d
	.align 4,0x90
L36:
	movl	$40, 8(%rbx)
	movl	36(%rbx), %eax
	jmp	L237
	.align 4,0x90
L235:
	movq	(%rbx), %rdx
	movl	8(%rdx), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rdx), %rdi
	addl	$8, %eax
	subl	$1, %esi
	movl	32(%rbx), %ecx
	movzbl	(%rdi), %r9d
	movl	%eax, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %ecx
	orl	%r9d, %ecx
	movl	%ecx, 32(%rbx)
	addl	$1, 12(%rdx)
	movq	%rdi, (%rdx)
	movl	%esi, 8(%rdx)
	je	L576
L237:
	cmpl	%eax, %ebp
	jg	L235
	movl	32(%rbx), %r12d
	subl	%ebp, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%eax, 36(%rbx)
	shrl	%cl, %r12d
	movl	%ebp, %ecx
	sall	%cl, %edx
	subl	$1, %edx
	andl	%edx, %r12d
	jmp	L236
	.align 4,0x90
L20:
	movl	36(%rbx), %ecx
L112:
	movl	$24, 8(%rbx)
	jmp	L117
	.align 4,0x90
L115:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L577
L117:
	testl	%ecx, %ecx
	jle	L115
	movl	32(%rbx), %eax
	subl	$1, %ecx
	movl	$0, 56(%rbx)
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	andl	$1, %eax
	movb	%al, 20(%rbx)
L116:
	movl	$25, 8(%rbx)
	jmp	L121
	.align 4,0x90
L119:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L578
L121:
	cmpl	$7, %ecx
	jle	L119
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	movzbl	%al, %edx
	movl	56(%rbx), %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, 56(%rbx)
L120:
	movl	$26, 8(%rbx)
	jmp	L125
	.align 4,0x90
L123:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L579
L125:
	cmpl	$7, %ecx
	jle	L123
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	movzbl	%al, %edx
	movl	56(%rbx), %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, 56(%rbx)
L124:
	movl	$27, 8(%rbx)
	jmp	L129
	.align 4,0x90
L127:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L580
L129:
	cmpl	$7, %ecx
	jle	L127
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	movzbl	%al, %edx
	movl	56(%rbx), %eax
	sall	$8, %eax
	orl	%edx, %eax
	testl	%eax, %eax
	movl	%eax, 56(%rbx)
	js	L390
	imull	$100000, 40(%rbx), %edx
	addl	$10, %edx
	cmpl	%edx, %eax
	jg	L390
	xorl	%r8d, %r8d
L51:
	movslq	%r8d, %r9
L132:
	movl	%r9d, %r8d
	movl	$28, 8(%rbx)
	jmp	L134
	.align 4,0x90
L131:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r11d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r11d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L581
L134:
	testl	%ecx, %ecx
	jle	L131
	movl	32(%rbx), %eax
	subl	$1, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	movb	%al, 3452(%rbx,%r9)
	andb	$1, 3452(%rbx,%r9)
	addq	$1, %r9
	cmpl	$15, %r9d
	jle	L132
	leaq	3196(%rbx), %rdx
	movl	$32, %ecx
	xorl	%eax, %eax
	movq	%rdx, %rdi
	xorl	%r8d, %r8d
	rep stosq
L143:
	movslq	%r8d, %rax
	cmpb	$0, 3452(%rbx,%rax)
	je	L136
	xorl	%r14d, %r14d
	.align 4,0x90
L25:
	movl	36(%rbx), %r9d
	movl	%r8d, %r11d
	sall	$4, %r11d
L142:
	movl	$29, 8(%rbx)
	jmp	L140
	.align 4,0x90
L137:
	movq	(%rbx), %rax
	movl	8(%rax), %ecx
	testl	%ecx, %ecx
	je	L395
	movq	(%rax), %rsi
	addl	$8, %r9d
	subl	$1, %ecx
	movl	32(%rbx), %edx
	movzbl	(%rsi), %edi
	movl	%r9d, 36(%rbx)
	addq	$1, %rsi
	sall	$8, %edx
	orl	%edi, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rsi, (%rax)
	movl	%ecx, 8(%rax)
	je	L582
L140:
	testl	%r9d, %r9d
	jle	L137
	movl	32(%rbx), %eax
	subl	$1, %r9d
	movl	%r9d, 36(%rbx)
	btl	%r9d, %eax
	jnc	L139
	leal	(%r14,%r11), %eax
	cltq
	movb	$1, 3196(%rbx,%rax)
L139:
	addl	$1, %r14d
	cmpl	$15, %r14d
	jle	L142
L136:
	addl	$1, %r8d
	cmpl	$15, %r8d
	jle	L143
	movl	$0, 3192(%rbx)
	xorl	%eax, %eax
	xorl	%edx, %edx
	.align 4,0x90
L145:
	cmpb	$0, 3196(%rbx,%rax)
	je	L144
	movslq	%edx, %rcx
	addl	$1, %edx
	movb	%al, 3468(%rbx,%rcx)
	movl	%edx, 3192(%rbx)
L144:
	addq	$1, %rax
	cmpq	$256, %rax
	jne	L145
	testl	%edx, %edx
	je	L390
	leal	2(%rdx), %r13d
	.align 4,0x90
L26:
	movl	$30, 8(%rbx)
	movl	36(%rbx), %ecx
	jmp	L148
	.align 4,0x90
L146:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L583
L148:
	cmpl	$2, %ecx
	jle	L146
	movl	32(%rbx), %eax
	subl	$3, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	andl	$7, %eax
	movl	%eax, 16(%rsp)
	subl	$2, %eax
	cmpl	$4, %eax
	jbe	L147
	jmp	L390
L614:
	movl	88(%rsp), %eax
	leal	(%rax,%rax), %edx
L216:
	movl	56(%rsp), %ecx
	testl	%ecx, %ecx
	jne	L204
	movl	88(%rsp), %edi
	addl	%edi, 60(%rsp)
L205:
	movl	64(%rsp), %eax
	testl	%eax, %eax
	jne	L363
	addl	$1, 68(%rsp)
	movslq	68(%rsp), %rax
	cmpl	%eax, 32(%rsp)
	jle	L364
	movzbl	7884(%rbx,%rax), %edi
	movl	$50, 64(%rsp)
	imulq	$1032, %rdi, %rax
	movslq	%edi, %rcx
	movl	%edi, 84(%rsp)
	movl	64012(%rbx,%rcx,4), %ebp
	leaq	45436(%rbx,%rax), %rdi
	leaq	57820(%rbx,%rax), %r15
	movq	%rdi, 24(%rsp)
	leaq	51628(%rbx,%rax), %rax
	movq	%rax, 48(%rsp)
L206:
	subl	$1, 64(%rsp)
	movl	%ebp, %r10d
	movl	%edx, 88(%rsp)
	.align 4,0x90
L34:
	movl	$38, 8(%rbx)
	movl	36(%rbx), %eax
	jmp	L209
	.align 4,0x90
L207:
	movq	(%rbx), %rdx
	movl	8(%rdx), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rdx), %rdi
	addl	$8, %eax
	subl	$1, %esi
	movl	32(%rbx), %ecx
	movzbl	(%rdi), %r9d
	movl	%eax, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %ecx
	orl	%r9d, %ecx
	movl	%ecx, 32(%rbx)
	addl	$1, 12(%rdx)
	movq	%rdi, (%rdx)
	movl	%esi, 8(%rdx)
	je	L584
L209:
	cmpl	%eax, %ebp
	jg	L207
	movl	32(%rbx), %r12d
	subl	%ebp, %eax
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%eax, 36(%rbx)
	shrl	%cl, %r12d
	movl	%ebp, %ecx
	sall	%cl, %edx
	subl	$1, %edx
	andl	%edx, %r12d
	jmp	L208
	.align 4,0x90
L33:
	movl	36(%rbx), %eax
L50:
	movl	$37, 8(%rbx)
	jmp	L200
	.align 4,0x90
L199:
	movq	(%rbx), %rdx
	movl	8(%rdx), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rdx), %rdi
	addl	$8, %eax
	subl	$1, %esi
	movl	32(%rbx), %ecx
	movzbl	(%rdi), %r9d
	movl	%eax, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %ecx
	orl	%r9d, %ecx
	movl	%ecx, 32(%rbx)
	addl	$1, 12(%rdx)
	movq	%rdi, (%rdx)
	movl	%esi, 8(%rdx)
	je	L585
L200:
	testl	%eax, %eax
	jle	L199
	movl	32(%rbx), %edx
	subl	$1, %eax
	addl	%r12d, %r12d
	movl	%eax, %ecx
	movl	%eax, 36(%rbx)
	shrl	%cl, %edx
	movl	%edx, %esi
	andl	$1, %esi
	movl	%esi, 20(%rsp)
	orl	%esi, %r12d
L195:
	cmpl	$20, %ebp
	jg	L390
	movq	24(%rsp), %rcx
	movslq	%ebp, %rdx
	cmpl	%r12d, (%rcx,%rdx,4)
	jge	L198
	addl	$1, %ebp
	jmp	L50
	.align 4,0x90
L19:
	movl	36(%rbx), %ecx
L108:
	movl	$23, 8(%rbx)
	jmp	L113
	.align 4,0x90
L111:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L586
L113:
	cmpl	$7, %ecx
	jle	L111
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	movzbl	%al, %edx
	movl	3176(%rbx), %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, 3176(%rbx)
	jmp	L112
	.align 4,0x90
L16:
	movl	36(%rbx), %ecx
L52:
	movl	$20, 8(%rbx)
	jmp	L101
	.align 4,0x90
L99:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L587
L101:
	cmpl	$7, %ecx
	jle	L99
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	movzbl	%al, %edx
	movl	3176(%rbx), %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, 3176(%rbx)
L100:
	movl	$21, 8(%rbx)
	jmp	L105
	.align 4,0x90
L103:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L588
L105:
	cmpl	$7, %ecx
	jle	L103
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	movzbl	%al, %edx
	movl	3176(%rbx), %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, 3176(%rbx)
L104:
	movl	$22, 8(%rbx)
	jmp	L109
	.align 4,0x90
L107:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L589
L109:
	cmpl	$7, %ecx
	jle	L107
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	movzbl	%al, %edx
	movl	3176(%rbx), %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, 3176(%rbx)
	jmp	L108
	.align 4,0x90
L15:
	movl	36(%rbx), %ecx
L91:
	movl	$19, 8(%rbx)
	jmp	L96
	.align 4,0x90
L94:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L590
L96:
	cmpl	$7, %ecx
	jle	L94
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	cmpb	$89, %al
	jne	L390
	movl	48(%rbx), %eax
	cmpl	$1, 52(%rbx)
	leal	1(%rax), %edx
	movl	%edx, 48(%rbx)
	jle	L98
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC0(%rip), %rsi
	movl	%r10d, 104(%rsp)
	movl	%r8d, 96(%rsp)
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	movl	36(%rbx), %ecx
	movl	104(%rsp), %r10d
	movl	96(%rsp), %r8d
L98:
	movl	$0, 3176(%rbx)
	jmp	L52
	.align 4,0x90
L14:
	movl	36(%rbx), %ecx
L87:
	movl	$18, 8(%rbx)
	jmp	L92
	.align 4,0x90
L90:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L591
L92:
	cmpl	$7, %ecx
	jle	L90
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	cmpb	$83, %al
	je	L91
	jmp	L390
	.align 4,0x90
L13:
	movl	36(%rbx), %ecx
L83:
	movl	$17, 8(%rbx)
	jmp	L88
	.align 4,0x90
L86:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L592
L88:
	cmpl	$7, %ecx
	jle	L86
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	cmpb	$38, %al
	je	L87
	jmp	L390
	.align 4,0x90
L18:
	movl	36(%rbx), %ecx
	jmp	L104
	.align 4,0x90
L17:
	movl	36(%rbx), %ecx
	jmp	L100
	.align 4,0x90
L12:
	movl	36(%rbx), %ecx
L79:
	movl	$16, 8(%rbx)
	jmp	L84
	.align 4,0x90
L82:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L593
L84:
	cmpl	$7, %ecx
	jle	L82
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	cmpb	$89, %al
	je	L83
	jmp	L390
	.align 4,0x90
L11:
	movl	36(%rbx), %ecx
L53:
	movl	$15, 8(%rbx)
	jmp	L80
	.align 4,0x90
L78:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L594
L80:
	cmpl	$7, %ecx
	jle	L78
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	cmpb	$65, %al
	je	L79
	jmp	L390
	.align 4,0x90
L40:
	movl	36(%rbx), %ecx
L264:
	movl	$44, 8(%rbx)
	jmp	L269
	.align 4,0x90
L267:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L595
L269:
	cmpl	$7, %ecx
	jle	L267
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	cmpb	$56, %al
	je	L268
	jmp	L390
	.align 4,0x90
L39:
	movl	36(%rbx), %ecx
L260:
	movl	$43, 8(%rbx)
	jmp	L265
	.align 4,0x90
L263:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L596
L265:
	cmpl	$7, %ecx
	jle	L263
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	cmpb	$69, %al
	je	L264
	jmp	L390
	.align 4,0x90
L24:
	movl	36(%rbx), %ecx
	jmp	L51
	.align 4,0x90
L23:
	movl	36(%rbx), %ecx
	jmp	L124
	.align 4,0x90
L46:
	movl	36(%rbx), %ecx
L288:
	movl	$50, 8(%rbx)
	jmp	L292
	.align 4,0x90
L291:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L597
L292:
	cmpl	$7, %ecx
	jle	L291
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	$1, 8(%rbx)
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	movzbl	%al, %edx
	movl	3180(%rbx), %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, 3180(%rbx)
	movl	$4, %eax
L55:
	movd	36(%rsp), %xmm1
	movd	%r13d, %xmm3
	movd	%r14d, %xmm7
	movd	%r8d, %xmm0
	movd	68(%rsp), %xmm6
	punpckldq	%xmm7, %xmm0
	movl	%r10d, 64116(%rbx)
	punpckldq	%xmm3, %xmm1
	movd	32(%rsp), %xmm2
	punpcklqdq	%xmm1, %xmm0
	movups	%xmm0, 64036(%rbx)
	movd	72(%rsp), %xmm1
	movq	%r15, 64136(%rbx)
	movd	16(%rsp), %xmm0
	punpckldq	%xmm6, %xmm1
	movd	40(%rsp), %xmm5
	punpckldq	%xmm2, %xmm0
	movd	56(%rsp), %xmm4
	punpcklqdq	%xmm1, %xmm0
	movups	%xmm0, 64052(%rbx)
	movd	80(%rsp), %xmm1
	movd	%r12d, %xmm2
	movd	64(%rsp), %xmm0
	punpckldq	%xmm5, %xmm1
	movd	92(%rsp), %xmm3
	movd	88(%rsp), %xmm7
	punpckldq	%xmm4, %xmm0
	punpcklqdq	%xmm1, %xmm0
	movups	%xmm0, 64068(%rbx)
	movd	12(%rsp), %xmm1
	movd	60(%rsp), %xmm0
	punpckldq	%xmm3, %xmm1
	movd	84(%rsp), %xmm6
	punpckldq	%xmm7, %xmm0
	punpcklqdq	%xmm1, %xmm0
	movd	20(%rsp), %xmm1
	movups	%xmm0, 64084(%rbx)
	movd	%ebp, %xmm0
	punpckldq	%xmm6, %xmm1
	punpckldq	%xmm2, %xmm0
	punpcklqdq	%xmm1, %xmm0
	movups	%xmm0, 64100(%rbx)
	movq	24(%rsp), %xmm0
	movhps	48(%rsp), %xmm0
	movups	%xmm0, 64120(%rbx)
	addq	$152, %rsp
LCFI11:
	popq	%rbx
LCFI12:
	popq	%rbp
LCFI13:
	popq	%r12
LCFI14:
	popq	%r13
LCFI15:
	popq	%r14
LCFI16:
	popq	%r15
LCFI17:
	ret
	.align 4,0x90
L45:
LCFI18:
	movl	36(%rbx), %ecx
L284:
	movl	$49, 8(%rbx)
	jmp	L289
	.align 4,0x90
L287:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L598
L289:
	cmpl	$7, %ecx
	jle	L287
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	movzbl	%al, %edx
	movl	3180(%rbx), %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, 3180(%rbx)
	jmp	L288
	.align 4,0x90
L44:
	movl	36(%rbx), %ecx
L280:
	movl	$48, 8(%rbx)
	jmp	L285
	.align 4,0x90
L283:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L599
L285:
	cmpl	$7, %ecx
	jle	L283
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	movzbl	%al, %edx
	movl	3180(%rbx), %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, 3180(%rbx)
	jmp	L284
	.align 4,0x90
L43:
	movl	36(%rbx), %ecx
L47:
	movl	$47, 8(%rbx)
	jmp	L281
	.align 4,0x90
L279:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L600
L281:
	cmpl	$7, %ecx
	jle	L279
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	movzbl	%al, %edx
	movl	3180(%rbx), %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, 3180(%rbx)
	jmp	L280
	.align 4,0x90
L7:
	movl	36(%rbx), %ecx
L56:
	movl	$11, 8(%rbx)
	jmp	L61
	.align 4,0x90
L59:
	movl	8(%r9), %edx
	testl	%edx, %edx
	je	L395
	movq	(%r9), %rsi
	addl	$8, %ecx
	subl	$1, %edx
	movl	32(%rbx), %eax
	movzbl	(%rsi), %edi
	movl	%ecx, 36(%rbx)
	addq	$1, %rsi
	sall	$8, %eax
	orl	%edi, %eax
	movl	%eax, 32(%rbx)
	addl	$1, 12(%r9)
	movq	%rsi, (%r9)
	movl	%edx, 8(%r9)
	je	L601
L61:
	cmpl	$7, %ecx
	jle	L59
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	cmpb	$90, %al
	je	L60
	jmp	L298
	.align 4,0x90
L5:
	movl	$10, 8(%rbx)
	movl	36(%rbx), %ecx
	jmp	L57
	.align 4,0x90
L54:
	movl	8(%r9), %edx
	testl	%edx, %edx
	je	L395
	movq	(%r9), %rsi
	addl	$8, %ecx
	subl	$1, %edx
	movl	32(%rbx), %eax
	movzbl	(%rsi), %edi
	movl	%ecx, 36(%rbx)
	addq	$1, %rsi
	sall	$8, %eax
	orl	%edi, %eax
	movl	%eax, 32(%rbx)
	addl	$1, 12(%r9)
	movq	%rsi, (%r9)
	movl	%edx, 8(%r9)
	je	L602
L57:
	cmpl	$7, %ecx
	jle	L54
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	cmpb	$66, %al
	je	L56
	jmp	L298
	.align 4,0x90
L38:
	movl	36(%rbx), %ecx
L74:
	movl	$42, 8(%rbx)
	jmp	L261
	.align 4,0x90
L259:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L603
L261:
	cmpl	$7, %ecx
	jle	L259
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	cmpb	$114, %al
	je	L260
	jmp	L390
	.align 4,0x90
L37:
	movl	36(%rbx), %eax
L48:
	movl	$41, 8(%rbx)
	jmp	L241
	.align 4,0x90
L240:
	movq	(%rbx), %rdx
	movl	8(%rdx), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rdx), %rdi
	addl	$8, %eax
	subl	$1, %esi
	movl	32(%rbx), %ecx
	movzbl	(%rdi), %r9d
	movl	%eax, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %ecx
	orl	%r9d, %ecx
	movl	%ecx, 32(%rbx)
	addl	$1, 12(%rdx)
	movq	%rdi, (%rdx)
	movl	%esi, 8(%rdx)
	je	L604
L241:
	testl	%eax, %eax
	jle	L240
	movl	32(%rbx), %edx
	subl	$1, %eax
	addl	%r12d, %r12d
	movl	%eax, %ecx
	movl	%eax, 36(%rbx)
	shrl	%cl, %edx
	movl	%edx, %ecx
	andl	$1, %ecx
	movl	%ecx, 20(%rsp)
	orl	%ecx, %r12d
L236:
	cmpl	$20, %ebp
	jg	L390
	movq	24(%rsp), %rdi
	movslq	%ebp, %rdx
	cmpl	%r12d, (%rdi,%rdx,4)
	jge	L239
	addl	$1, %ebp
	jmp	L48
	.align 4,0x90
L28:
	movl	36(%rbx), %ecx
L151:
	movslq	%r8d, %r11
L160:
	movl	%r11d, %r8d
L159:
	movl	$32, 8(%rbx)
	jmp	L157
	.align 4,0x90
L154:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L605
L157:
	testl	%ecx, %ecx
	jle	L154
	movl	32(%rbx), %eax
	subl	$1, %ecx
	movl	%ecx, 36(%rbx)
	btl	%ecx, %eax
	jnc	L606
	addl	$1, %r14d
	cmpl	16(%rsp), %r14d
	jl	L159
	.align 4,0x90
L390:
	movl	$-4, %eax
	jmp	L55
	.align 4,0x90
L27:
	movl	36(%rbx), %ecx
L147:
	movl	$31, 8(%rbx)
	jmp	L152
	.align 4,0x90
L150:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L607
L152:
	cmpl	$14, %ecx
	jle	L150
	movl	32(%rbx), %eax
	subl	$15, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	andl	$32767, %eax
	movl	%eax, 32(%rsp)
	je	L390
	xorl	%r14d, %r14d
	xorl	%r8d, %r8d
	jmp	L151
	.align 4,0x90
L35:
	movl	36(%rbx), %eax
L49:
	movl	$39, 8(%rbx)
	jmp	L213
	.align 4,0x90
L212:
	movq	(%rbx), %rdx
	movl	8(%rdx), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rdx), %rdi
	addl	$8, %eax
	subl	$1, %esi
	movl	32(%rbx), %ecx
	movzbl	(%rdi), %r9d
	movl	%eax, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %ecx
	orl	%r9d, %ecx
	movl	%ecx, 32(%rbx)
	addl	$1, 12(%rdx)
	movq	%rdi, (%rdx)
	movl	%esi, 8(%rdx)
	je	L608
L213:
	testl	%eax, %eax
	jle	L212
	movl	32(%rbx), %edx
	subl	$1, %eax
	addl	%r12d, %r12d
	movl	%eax, %ecx
	movl	%eax, 36(%rbx)
	shrl	%cl, %edx
	movl	%edx, %edi
	andl	$1, %edi
	movl	%edi, 20(%rsp)
	orl	%edi, %r12d
L208:
	cmpl	$20, %ebp
	jg	L390
	movq	24(%rsp), %rcx
	movslq	%ebp, %rdx
	cmpl	%r12d, (%rcx,%rdx,4)
	jge	L211
	addl	$1, %ebp
	jmp	L49
	.align 4,0x90
L9:
	movl	36(%rbx), %ecx
L64:
	movl	$13, 8(%rbx)
	jmp	L69
	.align 4,0x90
L67:
	movl	8(%r9), %edx
	testl	%edx, %edx
	je	L395
	movq	(%r9), %rsi
	addl	$8, %ecx
	subl	$1, %edx
	movl	32(%rbx), %eax
	movzbl	(%rsi), %edi
	movl	%ecx, 36(%rbx)
	addq	$1, %rsi
	sall	$8, %eax
	orl	%edi, %eax
	movl	%eax, 32(%rbx)
	addl	$1, 12(%r9)
	movq	%rsi, (%r9)
	movl	%edx, 8(%r9)
	je	L609
L69:
	cmpl	$7, %ecx
	jle	L67
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	movzbl	%al, %eax
	leal	-49(%rax), %edx
	cmpl	$8, %edx
	ja	L610
	subl	$48, %eax
	movq	56(%r9), %rcx
	movq	%r9, 96(%rsp)
	movl	%eax, 40(%rbx)
	imull	$100000, %eax, %eax
	cmpb	$0, 44(%rbx)
	movq	72(%r9), %rdi
	je	L71
	movl	%r10d, 112(%rsp)
	leal	(%rax,%rax), %esi
	movl	$1, %edx
	movl	%r8d, 104(%rsp)
	call	*%rcx
	movq	96(%rsp), %r9
	movl	$1, %edx
	imull	$100000, 40(%rbx), %esi
	movq	%rax, 3160(%rbx)
	sarl	%esi
	movq	72(%r9), %rdi
	call	*56(%r9)
	cmpq	$0, 3160(%rbx)
	movq	%rax, 3168(%rbx)
	movl	104(%rsp), %r8d
	movl	112(%rsp), %r10d
	je	L302
	testq	%rax, %rax
	jne	L10
L302:
	movl	$-3, %eax
	jmp	L55
	.align 4,0x90
L8:
	movl	36(%rbx), %ecx
L60:
	movl	$12, 8(%rbx)
	jmp	L65
	.align 4,0x90
L63:
	movl	8(%r9), %edx
	testl	%edx, %edx
	je	L395
	movq	(%r9), %rsi
	addl	$8, %ecx
	subl	$1, %edx
	movl	32(%rbx), %eax
	movzbl	(%rsi), %edi
	movl	%ecx, 36(%rbx)
	addq	$1, %rsi
	sall	$8, %eax
	orl	%edi, %eax
	movl	%eax, 32(%rbx)
	addl	$1, 12(%r9)
	movq	%rsi, (%r9)
	movl	%edx, 8(%r9)
	je	L611
L65:
	cmpl	$7, %ecx
	jle	L63
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	cmpb	$104, %al
	je	L64
L298:
	movl	$-5, %eax
	jmp	L55
	.align 4,0x90
L42:
	movl	36(%rbx), %ecx
L272:
	movl	$46, 8(%rbx)
	jmp	L277
	.align 4,0x90
L275:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L612
L277:
	cmpl	$7, %ecx
	jle	L275
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	cmpb	$-112, %al
	jne	L390
	movl	$0, 3180(%rbx)
	jmp	L47
	.align 4,0x90
L41:
	movl	36(%rbx), %ecx
L268:
	movl	$45, 8(%rbx)
	jmp	L273
	.align 4,0x90
L271:
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	testl	%esi, %esi
	je	L395
	movq	(%rax), %rdi
	addl	$8, %ecx
	subl	$1, %esi
	movl	32(%rbx), %edx
	movzbl	(%rdi), %r9d
	movl	%ecx, 36(%rbx)
	addq	$1, %rdi
	sall	$8, %edx
	orl	%r9d, %edx
	movl	%edx, 32(%rbx)
	addl	$1, 12(%rax)
	movq	%rdi, (%rax)
	movl	%esi, 8(%rax)
	je	L613
L273:
	cmpl	$7, %ecx
	jle	L271
	movl	32(%rbx), %eax
	subl	$8, %ecx
	movl	%ecx, 36(%rbx)
	shrl	%cl, %eax
	cmpb	$80, %al
	je	L272
	jmp	L390
	.align 4,0x90
L22:
	movl	36(%rbx), %ecx
	jmp	L120
	.align 4,0x90
L21:
	movl	36(%rbx), %ecx
	jmp	L116
	.align 4,0x90
L395:
	xorl	%eax, %eax
	jmp	L55
	.align 4,0x90
L581:
	addl	$1, 16(%rax)
	jmp	L134
	.align 4,0x90
L605:
	addl	$1, 16(%rax)
	jmp	L157
	.align 4,0x90
L4:
	movl	$4001, %edi
	movl	%r10d, 104(%rsp)
	movl	%r8d, 96(%rsp)
	call	_BZ2_bz__AssertH__fail
	movl	$4002, %edi
	call	_BZ2_bz__AssertH__fail
	xorl	%eax, %eax
	movl	96(%rsp), %r8d
	movl	104(%rsp), %r10d
	jmp	L55
	.align 4,0x90
L578:
	addl	$1, 16(%rax)
	jmp	L121
	.align 4,0x90
L579:
	addl	$1, 16(%rax)
	jmp	L125
	.align 4,0x90
L580:
	addl	$1, 16(%rax)
	jmp	L129
	.align 4,0x90
L586:
	addl	$1, 16(%rax)
	jmp	L113
	.align 4,0x90
L577:
	addl	$1, 16(%rax)
	jmp	L117
	.align 4,0x90
L597:
	addl	$1, 16(%rax)
	jmp	L292
	.align 4,0x90
L589:
	addl	$1, 16(%rax)
	jmp	L109
	.align 4,0x90
L598:
	addl	$1, 16(%rax)
	jmp	L289
	.align 4,0x90
L599:
	addl	$1, 16(%rax)
	jmp	L285
	.align 4,0x90
L588:
	addl	$1, 16(%rax)
	jmp	L105
	.align 4,0x90
L582:
	addl	$1, 16(%rax)
	jmp	L140
	.align 4,0x90
L587:
	addl	$1, 16(%rax)
	jmp	L101
	.align 4,0x90
L600:
	addl	$1, 16(%rax)
	jmp	L281
	.align 4,0x90
L590:
	addl	$1, 16(%rax)
	jmp	L96
	.align 4,0x90
L612:
	addl	$1, 16(%rax)
	jmp	L277
	.align 4,0x90
L591:
	addl	$1, 16(%rax)
	jmp	L92
	.align 4,0x90
L570:
	addl	$1, 16(%rax)
	jmp	L76
	.align 4,0x90
L613:
	addl	$1, 16(%rax)
	jmp	L273
	.align 4,0x90
L592:
	addl	$1, 16(%rax)
	jmp	L88
	.align 4,0x90
L609:
	addl	$1, 16(%r9)
	jmp	L69
	.align 4,0x90
L595:
	addl	$1, 16(%rax)
	jmp	L269
	.align 4,0x90
L593:
	addl	$1, 16(%rax)
	jmp	L84
	.align 4,0x90
L611:
	addl	$1, 16(%r9)
	jmp	L65
	.align 4,0x90
L596:
	addl	$1, 16(%rax)
	jmp	L265
	.align 4,0x90
L594:
	addl	$1, 16(%rax)
	jmp	L80
	.align 4,0x90
L607:
	addl	$1, 16(%rax)
	jmp	L152
	.align 4,0x90
L601:
	addl	$1, 16(%r9)
	jmp	L61
	.align 4,0x90
L571:
	addl	$1, 16(%rdx)
	jmp	L181
	.align 4,0x90
L603:
	addl	$1, 16(%rax)
	jmp	L261
	.align 4,0x90
L572:
	addl	$1, 16(%rdx)
	jmp	L176
	.align 4,0x90
L585:
	addl	$1, 16(%rdx)
	jmp	L200
	.align 4,0x90
L604:
	addl	$1, 16(%rdx)
	jmp	L241
	.align 4,0x90
L608:
	addl	$1, 16(%rdx)
	jmp	L213
	.align 4,0x90
L573:
	addl	$1, 16(%rdx)
	jmp	L196
	.align 4,0x90
L574:
	addl	$1, 16(%rax)
	jmp	L171
	.align 4,0x90
L576:
	addl	$1, 16(%rdx)
	jmp	L237
	.align 4,0x90
L583:
	addl	$1, 16(%rax)
	jmp	L148
	.align 4,0x90
L584:
	addl	$1, 16(%rdx)
	jmp	L209
	.align 4,0x90
L602:
	addl	$1, 16(%r9)
	jmp	L57
L239:
	movq	48(%rsp), %rdi
	movl	%r12d, %eax
	subl	(%rdi,%rdx,4), %eax
	cmpl	$257, %eax
	jbe	L567
	jmp	L390
	.align 4,0x90
L211:
	movq	48(%rsp), %rcx
	movl	%r12d, %eax
	subl	(%rcx,%rdx,4), %eax
	cmpl	$257, %eax
	ja	L390
	cltq
	movl	(%r15,%rax,4), %eax
	cmpl	$1, %eax
	movl	%eax, 56(%rsp)
	jbe	L614
	movslq	7820(%rbx), %rax
	addl	$1, 60(%rsp)
	movl	60(%rsp), %r11d
	movzbl	3724(%rbx,%rax), %eax
	movzbl	3468(%rbx,%rax), %eax
	addl	%r11d, 68(%rbx,%rax,4)
	movq	%rax, %rdx
	cmpb	$0, 44(%rbx)
	jne	L217
	testl	%r11d, %r11d
	jle	L218
	movl	80(%rsp), %edi
	movl	$-4, %eax
	movl	40(%rsp), %esi
	cmpl	%esi, %edi
	jle	L55
	movq	3152(%rbx), %rcx
	movslq	%esi, %rax
	leaq	(%rcx,%rax,4), %rax
	movl	%r11d, %ecx
L219:
	addl	$1, %esi
	subl	$1, %ecx
	movl	%edx, (%rax)
	je	L566
	addq	$4, %rax
	cmpl	%esi, %edi
	jne	L219
L372:
	movl	80(%rsp), %eax
	movl	%ecx, 60(%rsp)
	movl	%eax, 40(%rsp)
	movl	$-4, %eax
	jmp	L55
L343:
	movl	$1, %ecx
	jmp	L187
L344:
	movl	$2, %ecx
	jmp	L187
L202:
	movl	56(%rbx), %eax
	cmpl	40(%rsp), %eax
	jge	L390
	testl	%eax, %eax
	js	L390
	leaq	68(%rbx), %rsi
	movl	$1024, %edx
	movl	%r10d, 96(%rsp)
	leaq	1100(%rbx), %rcx
	movl	$0, 1096(%rbx)
	movq	%rcx, %rdi
	call	_memcpy
	movl	1096(%rbx), %edx
	leaq	2124(%rbx), %r9
	movl	96(%rsp), %r10d
	.align 4,0x90
L243:
	addl	(%rax), %edx
	addq	$4, %rax
	movl	%edx, -4(%rax)
	cmpq	%rax, %r9
	jne	L243
	movl	40(%rsp), %ecx
	xorl	%eax, %eax
	.align 4,0x90
L244:
	movl	1096(%rbx,%rax,4), %edx
	movl	%eax, %r8d
	testl	%edx, %edx
	js	L390
	cmpl	%ecx, %edx
	jg	L390
	addq	$1, %rax
	cmpq	$257, %rax
	jne	L244
	cmpl	$1, 52(%rbx)
	movb	$0, 12(%rbx)
	movl	$0, 16(%rbx)
	movl	$-1, 3184(%rbx)
	movl	$2, 8(%rbx)
	jle	L245
	movl	$6, %edx
	movq	___stderrp@GOTPCREL(%rip), %rax
	movl	$1, %esi
	movq	%r9, 104(%rsp)
	leaq	lC1(%rip), %rdi
	movl	%r10d, 96(%rsp)
	movq	(%rax), %rcx
	call	_fwrite
	movq	104(%rsp), %r9
	movl	96(%rsp), %r10d
L245:
	cmpb	$0, 44(%rbx)
	je	L246
	leaq	1096(%rbx), %r11
	movl	$1028, %edx
	movq	%r9, %rdi
	movl	%r10d, 104(%rsp)
	movq	%r11, %rsi
	movq	%r11, 96(%rsp)
	call	_memcpy
	movl	104(%rsp), %r10d
	xorl	%ecx, %ecx
	movq	96(%rsp), %r11
L249:
	leaq	(%rcx,%rcx), %rax
	addq	3160(%rbx), %rax
	movzbl	(%rax), %edx
	leaq	(%rbx,%rdx,4), %rdi
	movl	2124(%rdi), %edx
	movw	%dx, (%rax)
	movl	%ecx, %eax
	sarl	$16, %edx
	sarl	%eax
	cltq
	addq	3168(%rbx), %rax
	testb	$1, %cl
	movzbl	(%rax), %esi
	jne	L247
	andl	$-16, %esi
	orl	%esi, %edx
	movb	%dl, (%rax)
L248:
	addl	$1, 2124(%rdi)
	addq	$1, %rcx
	cmpl	%ecx, 40(%rsp)
	jg	L249
	movslq	56(%rbx), %rsi
	movq	3168(%rbx), %rdx
	movl	%esi, %ecx
	movq	%rsi, %rax
	sarl	%ecx
	movslq	%ecx, %rcx
	movzbl	(%rdx,%rcx), %r9d
	leal	0(,%rsi,4), %ecx
	andl	$4, %ecx
	shrl	%cl, %r9d
	movq	3160(%rbx), %rcx
	sall	$16, %r9d
	andl	$983040, %r9d
	movzwl	(%rcx,%rsi,2), %esi
	orl	%esi, %r9d
	jmp	L252
L616:
	andl	$-16, %eax
	orl	%edx, %eax
L251:
	movb	%al, (%rsi)
	movl	56(%rbx), %r8d
	movl	%r9d, %eax
	cmpl	%r8d, %r9d
	je	L615
	movq	3160(%rbx), %rcx
	movl	%r14d, %r9d
	movq	3168(%rbx), %rdx
L252:
	movslq	%r9d, %rdi
	addq	%rdi, %rdi
	addq	%rcx, %rdi
	movl	%r9d, %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	leaq	(%rdx,%rcx), %rsi
	movzbl	(%rsi), %edx
	leal	0(,%r9,4), %ecx
	andl	$4, %ecx
	shrl	%cl, %edx
	movl	%edx, %r14d
	movzwl	(%rdi), %edx
	movw	%ax, (%rdi)
	sarl	$16, %eax
	sall	$16, %r14d
	andl	$983040, %r14d
	orl	%edx, %r14d
	testb	$1, %r9b
	movl	%eax, %edx
	movzbl	(%rsi), %eax
	je	L616
	andl	$15, %eax
	sall	$4, %edx
	orl	%edx, %eax
	jmp	L251
L566:
	movl	%esi, 40(%rsp)
	movl	%ecx, 60(%rsp)
	jmp	L218
L341:
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	movl	$32, %r14d
	jmp	L186
L217:
	testl	%r11d, %r11d
	jle	L218
	movl	80(%rsp), %edi
	movl	$-4, %eax
	movl	40(%rsp), %esi
	cmpl	%esi, %edi
	jle	L55
	movq	3160(%rbx), %rcx
	movslq	%esi, %rax
	leaq	(%rcx,%rax,2), %rax
	movl	%r11d, %ecx
L220:
	addl	$1, %esi
	subl	$1, %ecx
	movw	%dx, (%rax)
	je	L566
	addq	$2, %rax
	cmpl	%esi, %edi
	jne	L220
	jmp	L372
L345:
	movl	$3, %ecx
	jmp	L187
L346:
	movl	$4, %ecx
	jmp	L187
L575:
	movl	$2, %edx
	movl	$1, 88(%rsp)
	movl	$-1, 60(%rsp)
	jmp	L216
L347:
	movl	$5, %ecx
	jmp	L187
L606:
	movb	%r14b, 25886(%rbx,%r11)
	addq	$1, %r11
	cmpl	%r11d, 32(%rsp)
	jg	L334
	movl	16(%rsp), %ecx
	testl	%ecx, %ecx
	jle	L161
	xorl	%edx, %edx
	xorl	%eax, %eax
	.align 4,0x90
L162:
	movb	%dl, 138(%rsp,%rax)
	addl	$1, %edx
	movzbl	%dl, %eax
	cmpl	%ecx, %eax
	jl	L162
L161:
	movl	32(%rsp), %eax
	testl	%eax, %eax
	jle	L335
	leaq	7884(%rbx), %rcx
	subl	$1, %eax
	leaq	7885(%rbx,%rax), %r9
	.align 4,0x90
L167:
	movzbl	18002(%rcx), %edx
	movslq	%edx, %rdi
	testb	%dl, %dl
	movl	%edx, %eax
	movzbl	138(%rsp,%rdi), %esi
	je	L165
	leal	-1(%rdx), %r8d
	cmpb	$1, %dl
	movslq	%r8d, %r8
	movzbl	138(%rsp,%r8), %r11d
	movb	%r11b, 138(%rsp,%rdi)
	je	L165
	leal	-2(%rdx), %edi
	cmpb	$2, %dl
	movslq	%edi, %rdi
	movzbl	138(%rsp,%rdi), %r11d
	movb	%r11b, 138(%rsp,%r8)
	je	L165
	subl	$3, %edx
	movslq	%edx, %rdx
	movzbl	138(%rsp,%rdx), %edx
	movb	%dl, 138(%rsp,%rdi)
	movl	%eax, %edx
	subb	$3, %dl
	je	L165
	movzbl	%dl, %edx
	leal	-1(%rdx), %edi
	movslq	%edi, %rdi
	movzbl	138(%rsp,%rdi), %edi
	movb	%dil, 138(%rsp,%rdx)
	movl	%eax, %edx
	subb	$4, %dl
	je	L165
	movzbl	%dl, %edx
	subb	$5, %al
	leal	-1(%rdx), %edi
	movslq	%edi, %rdi
	movzbl	138(%rsp,%rdi), %edi
	movb	%dil, 138(%rsp,%rdx)
	je	L165
	movzbl	%al, %eax
	leal	-1(%rax), %edx
	movslq	%edx, %rdx
	movzbl	138(%rsp,%rdx), %edx
	movb	%dl, 138(%rsp,%rax)
L165:
	movb	%sil, (%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %r9
	movb	%sil, 138(%rsp)
	jne	L167
	movl	32(%rsp), %r8d
L163:
	movl	$0, 36(%rsp)
	jmp	L168
L335:
	xorl	%r8d, %r8d
	jmp	L163
L223:
	movl	%esi, %ecx
	andl	$15, %esi
	shrl	$4, %ecx
	movl	%esi, %edx
	movl	%ecx, %eax
	leaq	(%rbx,%rax,4), %rax
	movslq	7820(%rax), %r9
	movq	%rax, 96(%rsp)
	leal	(%r9,%rsi), %eax
	movslq	%eax, %rdi
	cmpl	%eax, %r9d
	movzbl	3724(%rbx,%rdi), %r11d
	jge	L228
	subl	$1, %edx
	movq	%rbx, %rax
	movl	%r10d, 124(%rsp)
	addq	$1, %rdx
	movl	%r8d, 120(%rsp)
	subq	%rdx, %rax
	movb	%r11b, 119(%rsp)
	leaq	3724(%rax,%rdi), %rsi
	movq	%rbx, %rax
	movl	%r9d, 112(%rsp)
	subq	%rdx, %rax
	movl	%ecx, 104(%rsp)
	leaq	3725(%rax,%rdi), %rdi
	call	_memmove
	movl	124(%rsp), %r10d
	movl	120(%rsp), %r8d
	movzbl	119(%rsp), %r11d
	movslq	112(%rsp), %r9
	movl	104(%rsp), %ecx
L228:
	movq	96(%rsp), %rax
	movl	%r9d, 7820(%rax)
	movl	7816(%rax), %eax
	addl	$15, %eax
	cltq
	movzbl	3724(%rbx,%rax), %eax
	movb	%al, 3724(%rbx,%r9)
	movl	%ecx, %eax
	subl	$1, %eax
	je	L229
	cltq
	leaq	(%rbx,%rax,4), %rdx
	movl	7820(%rdx), %eax
	subl	$1, %eax
	movl	%eax, 7820(%rdx)
	movl	7816(%rdx), %edx
	cltq
	addl	$15, %edx
	movslq	%edx, %rdx
	movzbl	3724(%rbx,%rdx), %edx
	movb	%dl, 3724(%rbx,%rax)
	movl	%ecx, %eax
	subl	$2, %eax
	je	L229
	cltq
	leaq	(%rbx,%rax,4), %rdx
	movl	7820(%rdx), %eax
	subl	$1, %eax
	movl	%eax, 7820(%rdx)
	movl	7816(%rdx), %edx
	cltq
	addl	$15, %edx
	movslq	%edx, %rdx
	movzbl	3724(%rbx,%rdx), %edx
	movb	%dl, 3724(%rbx,%rax)
	movl	%ecx, %eax
	subl	$3, %eax
	je	L229
	cltq
	leaq	(%rbx,%rax,4), %rdx
	movl	7820(%rdx), %eax
	subl	$1, %eax
	movl	%eax, 7820(%rdx)
	movl	7816(%rdx), %edx
	cltq
	addl	$15, %edx
	movslq	%edx, %rdx
	movzbl	3724(%rbx,%rdx), %edx
	movb	%dl, 3724(%rbx,%rax)
	movl	%ecx, %eax
	subl	$4, %eax
	je	L229
	cltq
	leaq	(%rbx,%rax,4), %rdx
	movl	7820(%rdx), %eax
	subl	$1, %eax
	movl	%eax, 7820(%rdx)
	movl	7816(%rdx), %edx
	cltq
	addl	$15, %edx
	movslq	%edx, %rdx
	movzbl	3724(%rbx,%rdx), %edx
	movb	%dl, 3724(%rbx,%rax)
	movl	%ecx, %eax
	subl	$5, %eax
	je	L229
	cltq
	leaq	(%rbx,%rax,4), %rdx
	movl	7820(%rdx), %eax
	subl	$1, %eax
	movl	%eax, 7820(%rdx)
	movl	7816(%rdx), %edx
	cltq
	addl	$15, %edx
	movslq	%edx, %rdx
	movzbl	3724(%rbx,%rdx), %edx
	movb	%dl, 3724(%rbx,%rax)
	movl	%ecx, %eax
	subl	$6, %eax
	je	L229
	cltq
	leaq	(%rbx,%rax,4), %rdx
	movl	7820(%rdx), %eax
	subl	$1, %eax
	movl	%eax, 7820(%rdx)
	movl	7816(%rdx), %edx
	cltq
	addl	$15, %edx
	movslq	%edx, %rdx
	movzbl	3724(%rbx,%rdx), %edx
	movb	%dl, 3724(%rbx,%rax)
	movl	%ecx, %eax
	subl	$7, %eax
	je	L229
	cltq
	leaq	(%rbx,%rax,4), %rdx
	movl	7820(%rdx), %eax
	subl	$1, %eax
	movl	%eax, 7820(%rdx)
	movl	7816(%rdx), %edx
	cltq
	addl	$15, %edx
	movslq	%edx, %rdx
	movzbl	3724(%rbx,%rdx), %edx
	movb	%dl, 3724(%rbx,%rax)
	movl	%ecx, %eax
	subl	$8, %eax
	je	L229
	cltq
	leaq	(%rbx,%rax,4), %rdx
	movl	7820(%rdx), %eax
	subl	$1, %eax
	movl	%eax, 7820(%rdx)
	movl	7816(%rdx), %edx
	cltq
	addl	$15, %edx
	movslq	%edx, %rdx
	movzbl	3724(%rbx,%rdx), %edx
	movb	%dl, 3724(%rbx,%rax)
	movl	%ecx, %eax
	subl	$9, %eax
	je	L229
	cltq
	leaq	(%rbx,%rax,4), %rdx
	movl	7820(%rdx), %eax
	subl	$1, %eax
	movl	%eax, 7820(%rdx)
	movl	7816(%rdx), %edx
	cltq
	addl	$15, %edx
	movslq	%edx, %rdx
	movzbl	3724(%rbx,%rdx), %edx
	movb	%dl, 3724(%rbx,%rax)
	movl	%ecx, %eax
	subl	$10, %eax
	je	L229
	cltq
	leaq	(%rbx,%rax,4), %rdx
	movl	7820(%rdx), %eax
	subl	$1, %eax
	movl	%eax, 7820(%rdx)
	movl	7816(%rdx), %edx
	cltq
	addl	$15, %edx
	movslq	%edx, %rdx
	movzbl	3724(%rbx,%rdx), %edx
	movb	%dl, 3724(%rbx,%rax)
	movl	%ecx, %eax
	subl	$11, %eax
	je	L229
	cltq
	leaq	(%rbx,%rax,4), %rdx
	movl	7820(%rdx), %eax
	subl	$1, %eax
	movl	%eax, 7820(%rdx)
	movl	7816(%rdx), %edx
	cltq
	addl	$15, %edx
	movslq	%edx, %rdx
	movzbl	3724(%rbx,%rdx), %edx
	movb	%dl, 3724(%rbx,%rax)
	movl	%ecx, %eax
	subl	$12, %eax
	je	L229
	cltq
	leaq	(%rbx,%rax,4), %rdx
	movl	7820(%rdx), %eax
	subl	$1, %eax
	movl	%eax, 7820(%rdx)
	movl	7816(%rdx), %edx
	cltq
	addl	$15, %edx
	movslq	%edx, %rdx
	movzbl	3724(%rbx,%rdx), %edx
	movb	%dl, 3724(%rbx,%rax)
	movl	%ecx, %eax
	subl	$13, %eax
	je	L229
	cltq
	leaq	(%rbx,%rax,4), %rdx
	movl	7820(%rdx), %eax
	subl	$1, %eax
	movl	%eax, 7820(%rdx)
	movl	7816(%rdx), %edx
	cltq
	addl	$15, %edx
	movslq	%edx, %rdx
	movzbl	3724(%rbx,%rdx), %edx
	movb	%dl, 3724(%rbx,%rax)
	movl	%ecx, %eax
	subl	$14, %eax
	je	L229
	cltq
	leaq	(%rbx,%rax,4), %rdx
	movl	7820(%rdx), %eax
	subl	$1, %eax
	movl	%eax, 7820(%rdx)
	movl	7816(%rdx), %edx
	cltq
	addl	$15, %edx
	movslq	%edx, %rdx
	movzbl	3724(%rbx,%rdx), %edx
	movb	%dl, 3724(%rbx,%rax)
	movl	%ecx, %eax
	subl	$15, %eax
	je	L229
	cltq
	leaq	(%rbx,%rax,4), %rax
	movl	7820(%rax), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 7820(%rax)
	movl	7816(%rax), %eax
	addl	$15, %eax
	cltq
	movzbl	3724(%rbx,%rax), %ecx
	movslq	%edx, %rax
	movb	%cl, 3724(%rbx,%rax)
L229:
	movl	7820(%rbx), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	testl	%eax, %eax
	movl	%eax, 7820(%rbx)
	movb	%r11b, 3724(%rbx,%rdx)
	jne	L227
	leaq	7880(%rbx), %rcx
	movl	$4080, %edi
	leaq	7804(%rbx), %rax
	leaq	7548(%rbx), %r9
	.align 4,0x90
L230:
	movslq	(%rcx), %rdx
	subq	$16, %rax
	subq	$4, %rcx
	leal	15(%rdx), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %esi
	movb	%sil, 31(%rax)
	leal	14(%rdx), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %esi
	movb	%sil, 30(%rax)
	leal	13(%rdx), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %esi
	movb	%sil, 29(%rax)
	leal	12(%rdx), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %esi
	movb	%sil, 28(%rax)
	leal	11(%rdx), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %esi
	movb	%sil, 27(%rax)
	leal	10(%rdx), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %esi
	movb	%sil, 26(%rax)
	leal	9(%rdx), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %esi
	movb	%sil, 25(%rax)
	leal	8(%rdx), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %esi
	movb	%sil, 24(%rax)
	leal	7(%rdx), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %esi
	movb	%sil, 23(%rax)
	leal	6(%rdx), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %esi
	movb	%sil, 22(%rax)
	leal	5(%rdx), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %esi
	movb	%sil, 21(%rax)
	leal	4(%rdx), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %esi
	movb	%sil, 20(%rax)
	leal	3(%rdx), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %esi
	movb	%sil, 19(%rax)
	leal	2(%rdx), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %esi
	movb	%sil, 18(%rax)
	leal	1(%rdx), %esi
	movslq	%esi, %rsi
	movzbl	3724(%rbx,%rsi), %esi
	movb	%sil, 17(%rax)
	movzbl	3724(%rbx,%rdx), %edx
	movb	%dl, 16(%rax)
	movl	%edi, 4(%rcx)
	subl	$16, %edi
	cmpq	%r9, %rax
	jne	L230
	jmp	L227
L233:
	addl	$1, 68(%rsp)
	movslq	68(%rsp), %rax
	cmpl	%eax, 32(%rsp)
	jle	L390
	movzbl	7884(%rbx,%rax), %ecx
	movl	$49, 64(%rsp)
	movslq	%ecx, %rdx
	movl	%ecx, 84(%rsp)
	movl	64012(%rbx,%rdx,4), %ebp
	movzbl	%cl, %edx
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	45436(%rbx,%rax), %rcx
	leaq	57820(%rbx,%rax), %r15
	movq	%rcx, 24(%rsp)
	leaq	51628(%rbx,%rax), %rax
	movq	%rax, 48(%rsp)
	jmp	L234
L231:
	movq	3152(%rbx), %rcx
	movl	%eax, (%rcx,%rdx,4)
	jmp	L232
L342:
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	$32, %edx
	jmp	L187
L348:
	movl	$6, %ecx
	jmp	L187
L349:
	movl	$7, %ecx
	jmp	L187
L350:
	movl	$8, %ecx
	jmp	L187
L363:
	movl	%r10d, %ebp
	jmp	L206
L204:
	cmpl	$1, 56(%rsp)
	jne	L205
	addl	%edx, 60(%rsp)
	jmp	L205
L351:
	movl	$9, %ecx
	jmp	L187
L340:
	movl	$0, 36(%rsp)
	jmp	L184
L353:
	movl	$11, %ecx
	jmp	L187
L352:
	movl	$10, %ecx
	jmp	L187
L354:
	movl	$12, %ecx
	jmp	L187
L610:
	movl	%eax, 40(%rbx)
	movl	$-5, %eax
	jmp	L55
L355:
	movl	$13, %ecx
	jmp	L187
L356:
	movl	$14, %ecx
	jmp	L187
L247:
	andl	$15, %esi
	sall	$4, %edx
	orl	%esi, %edx
	movb	%dl, (%rax)
	jmp	L248
L615:
	cmpb	$0, 20(%rbx)
	movl	%r8d, 60(%rbx)
	movl	$0, 1092(%rbx)
	movl	%r10d, 104(%rsp)
	je	L253
	movq	%r11, %rsi
	movl	%r8d, %edi
	movl	%r8d, 96(%rsp)
	movq	$0, 24(%rbx)
	call	_BZ2_indexIntoF
	movl	60(%rbx), %esi
	movq	3168(%rbx), %rcx
	movl	%eax, 64(%rbx)
	movl	96(%rsp), %r8d
	movl	104(%rsp), %r10d
	movl	%esi, %edx
	shrl	%edx
	movzbl	(%rcx,%rdx), %edx
	leal	0(,%rsi,4), %ecx
	andl	$4, %ecx
	shrl	%cl, %edx
	movl	%edx, %ecx
	movl	%esi, %edx
	movq	3160(%rbx), %rsi
	sall	$16, %ecx
	andl	$983040, %ecx
	movzwl	(%rsi,%rdx,2), %edx
	addl	$1, 1092(%rbx)
	orl	%ecx, %edx
	cmpl	$0, 24(%rbx)
	movl	%edx, 60(%rbx)
	jne	L255
	movslq	28(%rbx), %rsi
	movq	_BZ2_rNums@GOTPCREL(%rip), %rcx
	movq	%rsi, %rdx
	movl	(%rcx,%rsi,4), %ecx
	addl	$1, %edx
	cmpl	$512, %edx
	movl	%edx, 28(%rbx)
	movl	%ecx, 24(%rbx)
	jne	L255
	movl	$0, 28(%rbx)
L255:
	movl	24(%rbx), %edi
	leal	-1(%rdi), %edx
	movl	%edx, 24(%rbx)
L568:
	subl	$1, %edx
	sete	%dl
	movzbl	%dl, %edx
	xorl	%edx, %eax
	movl	%eax, 64(%rbx)
	xorl	%eax, %eax
	jmp	L55
L246:
	movq	3152(%rbx), %rdx
	xorl	%eax, %eax
L257:
	movzbl	(%rdx,%rax,4), %ecx
	movl	%eax, %edi
	addq	$1, %rax
	sall	$8, %edi
	leaq	(%rbx,%rcx,4), %rcx
	movslq	1096(%rcx), %rsi
	orl	%edi, (%rdx,%rsi,4)
	addl	$1, 1096(%rcx)
	cmpl	%eax, 40(%rsp)
	jg	L257
	movl	40(%rsp), %eax
	movl	$1, %r8d
	testl	%eax, %eax
	cmovg	%eax, %r8d
	movslq	56(%rbx), %rax
	movl	(%rdx,%rax,4), %eax
	movl	$0, 1092(%rbx)
	shrl	$8, %eax
	cmpb	$0, 20(%rbx)
	movl	%eax, 60(%rbx)
	leaq	(%rdx,%rax,4), %rax
	je	L258
	movq	$0, 24(%rbx)
	movl	(%rax), %eax
	movl	$1, 1092(%rbx)
	movl	%eax, %edx
	movzbl	%al, %eax
	shrl	$8, %edx
	movl	%edx, 60(%rbx)
	movq	_BZ2_rNums@GOTPCREL(%rip), %rdx
	movl	(%rdx), %edx
	movl	$1, 28(%rbx)
	subl	$1, %edx
	movl	%edx, 24(%rbx)
	jmp	L568
L253:
	movl	%r8d, %edi
	movq	%r11, %rsi
	movl	%r8d, 96(%rsp)
	call	_BZ2_indexIntoF
	movl	60(%rbx), %edx
	movq	3168(%rbx), %rcx
	movl	%eax, 64(%rbx)
	movl	96(%rsp), %r8d
	movl	104(%rsp), %r10d
	movl	%edx, %eax
	shrl	%eax
	movzbl	(%rcx,%rax), %eax
	leal	0(,%rdx,4), %ecx
	andl	$4, %ecx
	shrl	%cl, %eax
	movq	3160(%rbx), %rcx
	sall	$16, %eax
	andl	$983040, %eax
	movzwl	(%rcx,%rdx,2), %edx
	addl	$1, 1092(%rbx)
	orl	%edx, %eax
	movl	%eax, 60(%rbx)
	xorl	%eax, %eax
	jmp	L55
L334:
	xorl	%r14d, %r14d
	jmp	L160
L358:
	movl	$0, 40(%rsp)
	movl	$256, %r8d
	movl	$-4, %eax
	movl	$0, 64(%rsp)
	movl	$0, 68(%rsp)
	jmp	L55
L364:
	movl	%edx, 88(%rsp)
	movl	$-4, %eax
	jmp	L55
L258:
	movl	(%rax), %eax
	movl	$1, 1092(%rbx)
	movzbl	%al, %edx
	shrl	$8, %eax
	movl	%eax, 60(%rbx)
	xorl	%eax, %eax
	movl	%edx, 64(%rbx)
	jmp	L55
LFE32:
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB32-.
	.set L$set$2,LFE32-LFB32
	.quad L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB32
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$8,LCFI5-LCFI4
	.long L$set$8
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$9,LCFI6-LCFI5
	.long L$set$9
	.byte	0xe
	.byte	0xd0,0x1
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xe
	.byte	0xd8,0x1
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xe
	.byte	0xe0,0x1
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xe
	.byte	0xd8,0x1
	.byte	0x4
	.set L$set$13,LCFI10-LCFI9
	.long L$set$13
	.byte	0xe
	.byte	0xd0,0x1
	.byte	0x4
	.set L$set$14,LCFI11-LCFI10
	.long L$set$14
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$15,LCFI12-LCFI11
	.long L$set$15
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$16,LCFI13-LCFI12
	.long L$set$16
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$17,LCFI14-LCFI13
	.long L$set$17
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$18,LCFI15-LCFI14
	.long L$set$18
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$19,LCFI16-LCFI15
	.long L$set$19
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$20,LCFI17-LCFI16
	.long L$set$20
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$21,LCFI18-LCFI17
	.long L$set$21
	.byte	0xb
	.align 3
LEFDE1:
	.subsections_via_symbols
