	.text
	.align 4,0x90
	.globl _BZ2_hbMakeCodeLengths
_BZ2_hbMakeCodeLengths:
LFB31:
	pushq	%r15
LCFI0:
	movl	%edx, %eax
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
	subq	$5256, %rsp
LCFI6:
	testl	%edx, %edx
	movq	%rdi, 32(%rsp)
	movl	%edx, 24(%rsp)
	movl	%ecx, 44(%rsp)
	jle	L89
	leal	-1(%rdx), %eax
	movl	%edx, %edi
	cmpl	$5, %eax
	movl	%eax, 28(%rsp)
	jbe	L44
	movl	(%rsi), %ecx
	movl	$256, %edx
	pxor	%xmm3, %xmm3
	movdqa	lC0(%rip), %xmm4
	movl	%ecx, %eax
	sall	$8, %eax
	testl	%ecx, %ecx
	movl	4(%rsi), %ecx
	cmove	%edx, %eax
	movl	%eax, 1124(%rsp)
	movl	%ecx, %eax
	sall	$8, %eax
	testl	%ecx, %ecx
	movl	8(%rsi), %ecx
	cmove	%edx, %eax
	movl	%eax, 1128(%rsp)
	movl	%ecx, %eax
	sall	$8, %eax
	testl	%ecx, %ecx
	cmove	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, 1132(%rsp)
	leal	-3(%rdi), %eax
	movl	%eax, 40(%rsp)
	leaq	1136(%rsp), %rcx
	movl	%eax, %edi
	xorl	%eax, %eax
	shrl	$2, %edi
	.align 4,0x90
L7:
	movdqu	12(%rsi,%rax), %xmm0
	movdqa	%xmm4, %xmm1
	addl	$1, %edx
	movdqa	%xmm0, %xmm2
	pcmpeqd	%xmm3, %xmm0
	pslld	$8, %xmm2
	pand	%xmm0, %xmm1
	pandn	%xmm2, %xmm0
	por	%xmm1, %xmm0
	movaps	%xmm0, (%rcx,%rax)
	addq	$16, %rax
	cmpl	%edx, %edi
	ja	L7
	movl	40(%rsp), %edi
	movl	%edi, %edx
	andl	$-4, %edx
	leal	3(%rdx), %eax
	cmpl	%edx, %edi
	je	L2
L3:
	movl	24(%rsp), %ebx
	leal	1(%rax), %r8d
	movslq	%eax, %rdx
	movl	(%rsi,%rdx,4), %edi
	movl	$256, %edx
	movl	%edi, %ecx
	sall	$8, %ecx
	testl	%edi, %edi
	movslq	%r8d, %rdi
	cmove	%edx, %ecx
	cmpl	%r8d, %ebx
	movl	%ecx, 1120(%rsp,%rdi,4)
	jle	L2
	movl	(%rsi,%rdi,4), %edi
	movl	%edi, %ecx
	sall	$8, %ecx
	testl	%edi, %edi
	cmove	%edx, %ecx
	leal	2(%rax), %edi
	movslq	%edi, %r8
	cmpl	%edi, %ebx
	movl	%ecx, 1120(%rsp,%r8,4)
	jle	L2
	movl	(%rsi,%r8,4), %edi
	leal	3(%rax), %r8d
	movl	%edi, %ecx
	sall	$8, %ecx
	testl	%edi, %edi
	movslq	%r8d, %rdi
	cmove	%edx, %ecx
	cmpl	%r8d, %ebx
	movl	%ecx, 1120(%rsp,%rdi,4)
	jle	L2
	movl	(%rsi,%rdi,4), %edi
	leal	4(%rax), %r8d
	movl	%edi, %ecx
	sall	$8, %ecx
	testl	%edi, %edi
	movslq	%r8d, %rdi
	cmove	%edx, %ecx
	cmpl	%r8d, %ebx
	movl	%ecx, 1120(%rsp,%rdi,4)
	jle	L2
	movl	(%rsi,%rdi,4), %edi
	leal	5(%rax), %r8d
	movl	%edi, %ecx
	sall	$8, %ecx
	testl	%edi, %edi
	movslq	%r8d, %rdi
	cmove	%edx, %ecx
	cmpl	%r8d, %ebx
	movl	%ecx, 1120(%rsp,%rdi,4)
	jle	L2
	movl	(%rsi,%rdi,4), %esi
	movl	%esi, %ecx
	sall	$8, %ecx
	testl	%esi, %esi
	cmovne	%ecx, %edx
	addl	$6, %eax
	cltq
	movl	%edx, 1120(%rsp,%rax,4)
L2:
	movslq	28(%rsp), %rax
	leaq	80(%rsp), %rdi
	movq	%rdi, 48(%rsp)
	leaq	3184(%rsp), %r15
	movdqa	lC1(%rip), %xmm2
	movq	%r15, 16(%rsp)
	leaq	(%rdi,%rax,4), %rax
	movq	%rax, 56(%rsp)
	movl	40(%rsp), %eax
	movl	%eax, %edi
	andl	$-4, %eax
	movl	%eax, 72(%rsp)
	addl	$4, %eax
	shrl	$2, %edi
	movl	%eax, 76(%rsp)
	movl	24(%rsp), %eax
	movl	%edi, 68(%rsp)
	leal	-1(%rax,%rax), %eax
	movl	%eax, 64(%rsp)
	.align 4,0x90
L43:
	movl	24(%rsp), %ecx
	movl	$0, 80(%rsp)
	movl	$0, 1120(%rsp)
	movl	$-2, 3184(%rsp)
	testl	%ecx, %ecx
	jle	L17
	movl	28(%rsp), %r11d
	leaq	1120(%rsp), %rbx
	movl	$1, %r8d
	movq	48(%rsp), %rbp
	movq	%rbx, (%rsp)
	movq	16(%rsp), %r12
	addq	$2, %r11
	.align 4,0x90
L20:
	movl	%r8d, %edx
	movl	%r8d, 0(%rbp,%r8,4)
	movl	(%rbx,%r8,4), %r9d
	movl	%r8d, %r10d
	sarl	%edx
	movl	$-1, (%r12,%r8,4)
	movslq	%edx, %rax
	movslq	80(%rsp,%rax,4), %rax
	cmpl	1120(%rsp,%rax,4), %r9d
	movq	%rax, %rcx
	jge	L52
	movslq	%r8d, %rax
	jmp	L19
	.align 4,0x90
L53:
	movl	%esi, %edx
L19:
	movl	%edx, %esi
	movl	%ecx, 80(%rsp,%rax,4)
	sarl	%esi
	movslq	%esi, %rax
	movslq	80(%rsp,%rax,4), %rdi
	movslq	%edx, %rax
	cmpl	%r9d, 1120(%rsp,%rdi,4)
	movq	%rdi, %rcx
	jg	L53
L18:
	addq	$1, %r8
	movslq	%edx, %rdx
	cmpq	%r11, %r8
	movl	%r10d, 80(%rsp,%rdx,4)
	jne	L20
	movl	24(%rsp), %eax
	cmpl	$1, %eax
	je	L31
	movq	56(%rsp), %r12
	leal	1(%rax), %r10d
	movl	%eax, %edi
	leal	-2(%rax), %r9d
	movslq	%r10d, %r10
	.align 4,0x90
L29:
	movl	4(%r12), %r13d
	subl	$1, %edi
	cmpl	$1, %edi
	movslq	84(%rsp), %r14
	movl	%r13d, 84(%rsp)
	je	L54
	movslq	%r13d, %rax
	movl	$2, %ecx
	movl	$1, %edx
	movl	1120(%rsp,%rax,4), %ebp
	jmp	L23
	.align 4,0x90
L90:
	movl	%ebx, %esi
	movl	%r11d, %r8d
L22:
	cmpl	%esi, %ebp
	jl	L21
L91:
	leal	(%rax,%rax), %ecx
	movl	%r8d, 80(%rsp,%rdx,4)
	movslq	%eax, %rdx
	cmpl	%ecx, %edi
	jl	L21
L23:
	movslq	%ecx, %rax
	cmpl	%ecx, %edi
	movslq	80(%rsp,%rax,4), %rax
	movq	%rax, %r8
	movl	1120(%rsp,%rax,4), %esi
	movl	%ecx, %eax
	jle	L22
	addl	$1, %eax
	movslq	%eax, %r11
	movslq	80(%rsp,%r11,4), %rbx
	movq	%rbx, %r11
	movl	1120(%rsp,%rbx,4), %ebx
	cmpl	%esi, %ebx
	jl	L90
	cmpl	%esi, %ebp
	movl	%ecx, %eax
	jge	L91
	.align 4,0x90
L21:
	movl	%r13d, 80(%rsp,%rdx,4)
	movl	(%r12), %r15d
	cmpl	$1, %r9d
	movslq	84(%rsp), %r13
	movl	%r15d, 84(%rsp)
	jle	L57
	movslq	%r15d, %rax
	movl	$2, %ecx
	movl	$1, %edx
	movl	1120(%rsp,%rax,4), %ebp
	jmp	L26
	.align 4,0x90
L92:
	movl	%ebx, %esi
	movl	%r11d, %r8d
L25:
	cmpl	%esi, %ebp
	jl	L24
L93:
	leal	(%rax,%rax), %ecx
	movl	%r8d, 80(%rsp,%rdx,4)
	movslq	%eax, %rdx
	cmpl	%ecx, %r9d
	jl	L24
L26:
	movslq	%ecx, %rax
	cmpl	%ecx, %r9d
	movslq	80(%rsp,%rax,4), %rax
	movq	%rax, %r8
	movl	1120(%rsp,%rax,4), %esi
	movl	%ecx, %eax
	jle	L25
	addl	$1, %eax
	movslq	%eax, %r11
	movslq	80(%rsp,%r11,4), %rbx
	movq	%rbx, %r11
	movl	1120(%rsp,%rbx,4), %ebx
	cmpl	%esi, %ebx
	jl	L92
	cmpl	%esi, %ebp
	movl	%ecx, %eax
	jge	L93
	.align 4,0x90
L24:
	movl	1120(%rsp,%r14,4), %eax
	movl	%r15d, 80(%rsp,%rdx,4)
	movl	%r10d, %r8d
	movl	1120(%rsp,%r13,4), %ecx
	movl	%r10d, 3184(%rsp,%r13,4)
	movl	%r10d, 3184(%rsp,%r14,4)
	movl	%r10d, (%r12)
	movzbl	%al, %r11d
	movzbl	%cl, %edx
	cmpl	%r11d, %edx
	cmovge	%edx, %r11d
	xorb	%cl, %cl
	xorb	%al, %al
	addl	%ecx, %eax
	movl	%edi, %edx
	addl	$1, %r11d
	sarl	%edx
	orl	%eax, %r11d
	movq	(%rsp), %rax
	movl	%r11d, (%rax,%r10,4)
	movq	16(%rsp), %rax
	movl	$-1, (%rax,%r10,4)
	movslq	%edx, %rax
	movslq	80(%rsp,%rax,4), %rax
	cmpl	1120(%rsp,%rax,4), %r11d
	movq	%rax, %rcx
	jge	L60
	movslq	%edi, %rax
	jmp	L28
	.align 4,0x90
L61:
	movl	%esi, %edx
L28:
	movl	%edx, %esi
	movl	%ecx, 80(%rsp,%rax,4)
	sarl	%esi
	movslq	%esi, %rax
	movslq	80(%rsp,%rax,4), %rbx
	movslq	%edx, %rax
	cmpl	1120(%rsp,%rbx,4), %r11d
	movq	%rbx, %rcx
	jl	L61
L27:
	movslq	%edx, %rdx
	addq	$1, %r10
	subq	$4, %r12
	subl	$1, %r9d
	cmpl	$1, %edi
	movl	%r8d, 80(%rsp,%rdx,4)
	jne	L29
	cmpl	$515, 64(%rsp)
	jg	L94
L31:
	movq	32(%rsp), %r8
	movl	$1, %ecx
	xorl	%esi, %esi
	movl	$1, %edi
	movl	24(%rsp), %r9d
	movl	44(%rsp), %r10d
	movq	16(%rsp), %r11
	.align 4,0x90
L36:
	movslq	(%r11,%rcx,4), %rax
	xorl	%edx, %edx
	testl	%eax, %eax
	js	L95
	.align 4,0x90
L34:
	movslq	3184(%rsp,%rax,4), %rax
	addl	$1, %edx
	testl	%eax, %eax
	jns	L34
	movl	%edx, %eax
L38:
	cmpl	%edx, %r10d
	movb	%al, -1(%r8,%rcx)
	cmovl	%edi, %esi
	addq	$1, %rcx
	cmpl	%ecx, %r9d
	jge	L36
	testb	%sil, %sil
	je	L1
	movl	24(%rsp), %eax
	testl	%eax, %eax
	jle	L43
	cmpl	$5, 28(%rsp)
	jbe	L64
	movl	1124(%rsp), %edx
	movl	68(%rsp), %ecx
	sarl	$8, %edx
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movl	1128(%rsp), %edx
	sarl	%eax
	addl	$1, %eax
	sall	$8, %eax
	sarl	$8, %edx
	movl	%eax, 1124(%rsp)
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	movl	1132(%rsp), %edx
	sarl	%eax
	addl	$1, %eax
	sall	$8, %eax
	sarl	$8, %edx
	movl	%eax, 1128(%rsp)
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	xorl	%edx, %edx
	sarl	%eax
	addl	$1, %eax
	sall	$8, %eax
	movl	%eax, 1132(%rsp)
	leaq	1136(%rsp), %rax
	.align 4,0x90
L41:
	movdqa	(%rax), %xmm0
	addl	$1, %edx
	addq	$16, %rax
	psrad	$8, %xmm0
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm1
	psubd	%xmm1, %xmm0
	psrad	$1, %xmm0
	paddd	%xmm2, %xmm0
	pslld	$8, %xmm0
	movaps	%xmm0, -16(%rax)
	cmpl	%edx, %ecx
	ja	L41
	movl	40(%rsp), %edi
	cmpl	%edi, 72(%rsp)
	je	L43
	movl	76(%rsp), %edx
L40:
	movslq	%edx, %rsi
	movl	24(%rsp), %edi
	movl	1120(%rsp,%rsi,4), %ecx
	sarl	$8, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	addl	$1, %eax
	sall	$8, %eax
	movl	%eax, 1120(%rsp,%rsi,4)
	leal	1(%rdx), %eax
	cmpl	%edi, %eax
	jg	L43
	movslq	%eax, %rcx
	movl	1120(%rsp,%rcx,4), %esi
	sarl	$8, %esi
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	addl	$1, %eax
	sall	$8, %eax
	movl	%eax, 1120(%rsp,%rcx,4)
	leal	2(%rdx), %eax
	cmpl	%eax, %edi
	jl	L43
	movslq	%eax, %rcx
	movl	1120(%rsp,%rcx,4), %esi
	sarl	$8, %esi
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	addl	$1, %eax
	sall	$8, %eax
	movl	%eax, 1120(%rsp,%rcx,4)
	leal	3(%rdx), %eax
	cmpl	%eax, %edi
	jl	L43
	movslq	%eax, %rcx
	movl	1120(%rsp,%rcx,4), %esi
	sarl	$8, %esi
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	addl	$1, %eax
	sall	$8, %eax
	movl	%eax, 1120(%rsp,%rcx,4)
	leal	4(%rdx), %eax
	cmpl	%eax, %edi
	jl	L43
	movslq	%eax, %rcx
	addl	$5, %edx
	movl	1120(%rsp,%rcx,4), %esi
	sarl	$8, %esi
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	addl	$1, %eax
	sall	$8, %eax
	cmpl	%edx, %edi
	movl	%eax, 1120(%rsp,%rcx,4)
	jl	L43
	movslq	%edx, %rdx
	movl	1120(%rsp,%rdx,4), %ecx
	sarl	$8, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	addl	$1, %eax
	sall	$8, %eax
	movl	%eax, 1120(%rsp,%rdx,4)
	jmp	L43
	.align 4,0x90
L95:
	xorl	%eax, %eax
	jmp	L38
	.align 4,0x90
L52:
	movl	%r8d, %edx
	jmp	L18
	.align 4,0x90
L60:
	movl	%edi, %edx
	jmp	L27
	.align 4,0x90
L57:
	movl	$1, %edx
	jmp	L24
	.align 4,0x90
L54:
	movl	$1, %edx
	jmp	L21
L94:
	movl	$2002, %edi
	movaps	%xmm2, (%rsp)
	call	_BZ2_bz__AssertH__fail
	movdqa	(%rsp), %xmm2
	jmp	L31
L17:
	movl	24(%rsp), %eax
	cmpl	$515, %eax
	jg	L32
	testl	%eax, %eax
	jg	L31
L1:
	addq	$5256, %rsp
LCFI7:
	popq	%rbx
LCFI8:
	popq	%rbp
LCFI9:
	popq	%r12
LCFI10:
	popq	%r13
LCFI11:
	popq	%r14
LCFI12:
	popq	%r15
LCFI13:
	ret
L64:
LCFI14:
	movl	$1, %edx
	jmp	L40
L32:
	movl	$2002, %edi
	movaps	%xmm2, (%rsp)
	call	_BZ2_bz__AssertH__fail
	movl	24(%rsp), %edx
	movdqa	(%rsp), %xmm2
	testl	%edx, %edx
	jle	L1
	jmp	L31
	.align 4,0x90
L89:
	leal	-1(%rdx), %edi
	subl	$3, %eax
	movl	%edi, 28(%rsp)
	movl	%eax, 40(%rsp)
	jmp	L2
L44:
	subl	$3, %edi
	xorl	%eax, %eax
	movl	%edi, 40(%rsp)
	jmp	L3
LFE31:
	.align 4,0x90
	.globl _BZ2_hbAssignCodes
_BZ2_hbAssignCodes:
LFB32:
	cmpl	%ecx, %edx
	jg	L96
	testl	%r8d, %r8d
	jle	L96
	leal	1(%rcx), %r10d
	subl	$1, %r8d
	xorl	%r9d, %r9d
	addq	$1, %r8
	.align 4,0x90
L98:
	xorl	%eax, %eax
	.align 4,0x90
L100:
	movzbl	(%rsi,%rax), %ecx
	cmpl	%edx, %ecx
	jne	L99
	movl	%r9d, (%rdi,%rax,4)
	addl	$1, %r9d
L99:
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	L100
	addl	$1, %edx
	addl	%r9d, %r9d
	cmpl	%edx, %r10d
	jne	L98
L96:
	ret
LFE32:
	.align 4,0x90
	.globl _BZ2_hbCreateDecodeTables
_BZ2_hbCreateDecodeTables:
LFB33:
	cmpl	%r9d, %r8d
	pushq	%r13
LCFI15:
	movq	%rdi, %r11
	movq	%rcx, %r10
	pushq	%r12
LCFI16:
	pushq	%rbp
LCFI17:
	pushq	%rbx
LCFI18:
	movl	40(%rsp), %ebx
	jg	L103
	testl	%ebx, %ebx
	jle	L104
	subl	$1, %ebx
	movl	%r8d, %edi
	xorl	%r12d, %r12d
	leal	1(%r9), %r13d
	movq	%rbx, %rbp
	addq	$1, %rbx
	.align 4,0x90
L105:
	xorl	%eax, %eax
	.align 4,0x90
L107:
	movzbl	(%r10,%rax), %ecx
	cmpl	%edi, %ecx
	jne	L106
	movslq	%r12d, %rcx
	addl	$1, %r12d
	movl	%eax, (%rdx,%rcx,4)
L106:
	addq	$1, %rax
	cmpq	%rbx, %rax
	jne	L107
	addl	$1, %edi
	cmpl	%r13d, %edi
	jne	L105
	movl	$11, %ecx
	xorl	%eax, %eax
	movq	%rsi, %rdi
	rep stosq
	movl	$0, (%rdi)
L123:
	leaq	1(%r10,%rbp), %rdx
	.align 4,0x90
L110:
	movzbl	(%r10), %eax
	addq	$1, %r10
	addl	$1, 4(%rsi,%rax,4)
	cmpq	%rdx, %r10
	jne	L110
L109:
	movl	(%rsi), %edx
	leaq	4(%rsi), %r10
	leaq	92(%rsi), %rcx
	movq	%r10, %rax
	.align 4,0x90
L111:
	addl	(%rax), %edx
	addq	$4, %rax
	movl	%edx, -4(%rax)
	cmpq	%rcx, %rax
	jne	L111
	xorl	%eax, %eax
	movl	$11, %ecx
	movq	%r11, %rdi
	rep stosq
	cmpl	%r9d, %r8d
	movl	$0, (%rdi)
	jg	L112
	movl	%r9d, %eax
	movslq	%r8d, %rdi
	leaq	0(,%rdi,4), %rcx
	subl	%r8d, %eax
	leaq	(%rsi,%rcx), %rdx
	addq	%rdi, %rax
	addq	%r11, %rcx
	leaq	(%r10,%rax,4), %r10
	xorl	%eax, %eax
	.align 4,0x90
L113:
	addl	4(%rdx), %eax
	addq	$4, %rdx
	addq	$4, %rcx
	subl	-4(%rdx), %eax
	leal	-1(%rax), %edi
	addl	%eax, %eax
	movl	%edi, -4(%rcx)
	cmpq	%r10, %rdx
	jne	L113
L112:
	leal	1(%r8), %edx
	cmpl	%edx, %r9d
	jl	L102
	movslq	%r8d, %rdi
	movl	%r9d, %r10d
	leaq	16(,%rdi,4), %rbx
	subl	%r8d, %r10d
	addq	$1, %rdi
	leaq	-12(%rbx), %rax
	leaq	(%r11,%rbx), %r12
	leaq	-16(%rbx), %rbp
	leaq	(%rsi,%rax), %rcx
	leaq	4(%rsi,%rbx), %rbx
	cmpq	%rcx, %r12
	leaq	(%r11,%rbp), %r13
	setbe	%r12b
	cmpq	%rbx, %r13
	setnb	%bl
	orb	%bl, %r12b
	je	L115
	cmpl	$7, %r10d
	jbe	L115
	movq	%rcx, %rax
	leal	-1(%r9), %ecx
	shrq	$2, %rax
	negq	%rax
	subl	%r8d, %ecx
	andl	$3, %eax
	leal	3(%rax), %ebx
	cmpl	%ecx, %ebx
	ja	L116
	testl	%eax, %eax
	je	L117
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rsi,%rdx), %rcx
	movl	-4(%r11,%rdx), %edx
	leal	2(%rdx,%rdx), %edx
	subl	(%rcx), %edx
	cmpl	$1, %eax
	movl	%edx, (%rcx)
	leal	2(%r8), %edx
	je	L117
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rsi,%rdx), %rcx
	movl	-4(%r11,%rdx), %edx
	leal	2(%rdx,%rdx), %edx
	subl	(%rcx), %edx
	cmpl	$3, %eax
	movl	%edx, (%rcx)
	leal	3(%r8), %edx
	jne	L117
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rsi,%rdx), %rcx
	movl	-4(%r11,%rdx), %edx
	leal	2(%rdx,%rdx), %edx
	subl	(%rcx), %edx
	movl	%edx, (%rcx)
	leal	4(%r8), %edx
L117:
	movl	%eax, %ecx
	subl	%eax, %r10d
	movdqa	lC1(%rip), %xmm1
	xorl	%eax, %eax
	leaq	0(%rbp,%rcx,4), %r8
	addq	%rcx, %rdi
	movl	%r10d, %ebx
	shrl	$2, %ebx
	addq	%r11, %r8
	xorl	%ecx, %ecx
	leaq	(%rsi,%rdi,4), %rdi
	.align 4,0x90
L119:
	movdqu	(%r8,%rax), %xmm0
	addl	$1, %ecx
	paddd	%xmm1, %xmm0
	pslld	$1, %xmm0
	psubd	(%rdi,%rax), %xmm0
	movaps	%xmm0, (%rdi,%rax)
	addq	$16, %rax
	cmpl	%ecx, %ebx
	ja	L119
	movl	%r10d, %eax
	andl	$-4, %eax
	addl	%eax, %edx
	cmpl	%r10d, %eax
	je	L102
L116:
	movslq	%edx, %rax
	salq	$2, %rax
	leaq	(%rsi,%rax), %rcx
	movl	-4(%r11,%rax), %eax
	leal	2(%rax,%rax), %eax
	subl	(%rcx), %eax
	movl	%eax, (%rcx)
	leal	1(%rdx), %eax
	cmpl	%eax, %r9d
	jl	L102
	cltq
	salq	$2, %rax
	leaq	(%rsi,%rax), %rcx
	movl	-4(%r11,%rax), %eax
	leal	2(%rax,%rax), %eax
	subl	(%rcx), %eax
	movl	%eax, (%rcx)
	leal	2(%rdx), %eax
	cmpl	%eax, %r9d
	jl	L102
	cltq
	salq	$2, %rax
	leaq	(%rsi,%rax), %rcx
	movl	-4(%r11,%rax), %eax
	leal	2(%rax,%rax), %eax
	subl	(%rcx), %eax
	movl	%eax, (%rcx)
	leal	3(%rdx), %eax
	cmpl	%eax, %r9d
	jl	L102
	cltq
	salq	$2, %rax
	leaq	(%rsi,%rax), %rcx
	movl	-4(%r11,%rax), %eax
	leal	2(%rax,%rax), %eax
	subl	(%rcx), %eax
	movl	%eax, (%rcx)
	leal	4(%rdx), %eax
	cmpl	%eax, %r9d
	jl	L102
	cltq
	addl	$5, %edx
	salq	$2, %rax
	leaq	(%rsi,%rax), %rcx
	movl	-4(%r11,%rax), %eax
	leal	2(%rax,%rax), %eax
	subl	(%rcx), %eax
	cmpl	%edx, %r9d
	movl	%eax, (%rcx)
	jl	L102
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rax
	addq	%rax, %rsi
	movl	-4(%r11,%rax), %eax
	leal	2(%rax,%rax), %eax
	subl	(%rsi), %eax
	movl	%eax, (%rsi)
L102:
	popq	%rbx
LCFI19:
	popq	%rbp
LCFI20:
	popq	%r12
LCFI21:
	popq	%r13
LCFI22:
	ret
L115:
LCFI23:
	subl	$1, %r9d
	movslq	%edx, %rdx
	subl	%r8d, %r9d
	leaq	1(%r9,%rdx), %rcx
	salq	$2, %rcx
	.align 4,0x90
L121:
	movl	-4(%r11,%rax), %edx
	leal	2(%rdx,%rdx), %edx
	subl	(%rsi,%rax), %edx
	movl	%edx, (%rsi,%rax)
	addq	$4, %rax
	cmpq	%rcx, %rax
	jne	L121
	popq	%rbx
LCFI24:
	popq	%rbp
LCFI25:
	popq	%r12
LCFI26:
	popq	%r13
LCFI27:
	ret
L103:
LCFI28:
	xorl	%eax, %eax
	movl	$11, %ecx
	movq	%rsi, %rdi
	rep stosq
	testl	%ebx, %ebx
	movl	$0, (%rdi)
	jle	L109
	leal	-1(%rbx), %ebp
	jmp	L123
L104:
	movl	$11, %ecx
	xorl	%eax, %eax
	movq	%rsi, %rdi
	rep stosq
	movl	$0, (%rdi)
	jmp	L109
LFE33:
	.literal16
	.align 4
lC0:
	.long	256
	.long	256
	.long	256
	.long	256
	.align 4
lC1:
	.long	1
	.long	1
	.long	1
	.long	1
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
	.quad	LFB31-.
	.set L$set$2,LFE31-LFB31
	.quad L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB31
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
	.byte	0xc0,0x29
	.byte	0x4
	.set L$set$10,LCFI7-LCFI6
	.long L$set$10
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$11,LCFI8-LCFI7
	.long L$set$11
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$12,LCFI9-LCFI8
	.long L$set$12
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$13,LCFI10-LCFI9
	.long L$set$13
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$14,LCFI11-LCFI10
	.long L$set$14
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$15,LCFI12-LCFI11
	.long L$set$15
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$16,LCFI13-LCFI12
	.long L$set$16
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$17,LCFI14-LCFI13
	.long L$set$17
	.byte	0xb
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$18,LEFDE3-LASFDE3
	.long L$set$18
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB32-.
	.set L$set$19,LFE32-LFB32
	.quad L$set$19
	.byte	0
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$20,LEFDE5-LASFDE5
	.long L$set$20
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB33-.
	.set L$set$21,LFE33-LFB33
	.quad L$set$21
	.byte	0
	.byte	0x4
	.set L$set$22,LCFI15-LFB33
	.long L$set$22
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$23,LCFI16-LCFI15
	.long L$set$23
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$24,LCFI17-LCFI16
	.long L$set$24
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$25,LCFI18-LCFI17
	.long L$set$25
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$26,LCFI19-LCFI18
	.long L$set$26
	.byte	0xa
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$27,LCFI20-LCFI19
	.long L$set$27
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$28,LCFI21-LCFI20
	.long L$set$28
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$29,LCFI22-LCFI21
	.long L$set$29
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$30,LCFI23-LCFI22
	.long L$set$30
	.byte	0xb
	.byte	0x4
	.set L$set$31,LCFI24-LCFI23
	.long L$set$31
	.byte	0xa
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$32,LCFI25-LCFI24
	.long L$set$32
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$33,LCFI26-LCFI25
	.long L$set$33
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$34,LCFI27-LCFI26
	.long L$set$34
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$35,LCFI28-LCFI27
	.long L$set$35
	.byte	0xb
	.align 3
LEFDE5:
	.subsections_via_symbols
