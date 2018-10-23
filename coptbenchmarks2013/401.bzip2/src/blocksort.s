	.cstring
lC0:
	.ascii "        bucket sorting ...\12\0"
lC1:
	.ascii "        depth %6d has \0"
lC2:
	.ascii "%6d unresolved strings\12\0"
	.align 3
lC3:
	.ascii "        reconstructing block ...\12\0"
	.text
	.align 4,0x90
_fallbackSort:
LFB33:
	pushq	%r15
LCFI0:
	movq	%rsi, %r15
	pushq	%r14
LCFI1:
	pushq	%r13
LCFI2:
	movq	%rdx, %r13
	pushq	%r12
LCFI3:
	movq	%rdi, %r12
	pushq	%rbp
LCFI4:
	pushq	%rbx
LCFI5:
	subq	$2984, %rsp
LCFI6:
	cmpl	$3, %r8d
	movl	%ecx, 20(%rsp)
	movl	%r8d, 80(%rsp)
	jle	L2
	movq	___stderrp@GOTPCREL(%rip), %rax
	movl	$27, %edx
	movl	$1, %esi
	leaq	lC0(%rip), %rdi
	movq	(%rax), %rcx
	call	_fwrite
L2:
	leaq	1936(%rsp), %rbp
	xorl	%esi, %esi
	movl	$1028, %edx
	movq	%rbp, %rdi
	call	_memset
	movl	20(%rsp), %ebx
	testl	%ebx, %ebx
	jle	L3
	leal	-1(%rbx), %edx
	movq	%r15, %rax
	leaq	1(%r15,%rdx), %rcx
L4:
	movzbl	(%rax), %edx
	addq	$1, %rax
	addl	$1, 1936(%rsp,%rdx,4)
	cmpq	%rax, %rcx
	jne	L4
L3:
	leaq	912(%rsp), %rax
	movl	$1024, %edx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movq	%rax, 104(%rsp)
	movq	%rbp, %rbx
	call	_memcpy
	movl	1936(%rsp), %edx
	leaq	4(%rbp), %rax
	leaq	1028(%rbp), %rcx
	.align 4,0x90
L5:
	addl	(%rax), %edx
	addq	$4, %rax
	movl	%edx, -4(%rax)
	cmpq	%rax, %rcx
	jne	L5
	movl	20(%rsp), %eax
	testl	%eax, %eax
	jle	L6
	leal	-1(%rax), %esi
	xorl	%edx, %edx
	addq	$1, %rsi
L7:
	movzbl	(%r15,%rdx), %ecx
	movl	1936(%rsp,%rcx,4), %eax
	subl	$1, %eax
	movl	%eax, 1936(%rsp,%rcx,4)
	cltq
	movl	%edx, (%r12,%rax,4)
	addq	$1, %rdx
	cmpq	%rdx, %rsi
	jne	L7
L6:
	movl	20(%rsp), %edi
	leal	31(%rdi), %eax
	testl	%edi, %edi
	cmovns	%edi, %eax
	sarl	$5, %eax
	cmpl	$-1, %eax
	jl	L8
	addl	$1, %eax
	xorl	%esi, %esi
	movq	%r13, %rdi
	leaq	4(,%rax,4), %rdx
	call	_memset
L8:
	leaq	1024(%rbp), %rsi
	movl	$1, %edi
	.align 4,0x90
L9:
	movl	(%rbx), %ecx
	movl	%edi, %edx
	addq	$4, %rbx
	movl	%ecx, %eax
	sall	%cl, %edx
	sarl	$5, %eax
	cltq
	orl	%edx, 0(%r13,%rax,4)
	cmpq	%rbx, %rsi
	jne	L9
	movl	20(%rsp), %eax
	movl	$1, %esi
	leal	64(%rax), %edi
	.align 4,0x90
L10:
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%esi, %ebx
	sarl	$5, %edx
	sall	%cl, %ebx
	leal	1(%rax), %ecx
	movslq	%edx, %rdx
	addl	$2, %eax
	orl	%ebx, 0(%r13,%rdx,4)
	movl	%ecx, %edx
	movl	%esi, %ebx
	sarl	$5, %edx
	sall	%cl, %ebx
	movslq	%edx, %rdx
	movl	%ebx, %ecx
	notl	%ecx
	andl	%ecx, 0(%r13,%rdx,4)
	cmpl	%eax, %edi
	jne	L10
	movl	20(%rsp), %eax
	movl	$1, 40(%rsp)
	subl	$1, %eax
	movl	%eax, 100(%rsp)
L76:
	cmpl	$3, 80(%rsp)
	jle	L11
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC1(%rip), %rsi
	movl	40(%rsp), %edx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
L11:
	movl	20(%rsp), %edi
	testl	%edi, %edi
	jle	L12
	movl	100(%rsp), %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	addq	$1, %rsi
	.align 4,0x90
L13:
	movl	%ecx, %eax
	movl	$1, %edi
	sarl	$5, %eax
	sall	%cl, %edi
	cltq
	testl	%edi, 0(%r13,%rax,4)
	movl	(%r12,%rcx,4), %eax
	cmovne	%ecx, %edx
	subl	40(%rsp), %eax
	jns	L15
	addl	20(%rsp), %eax
L15:
	addq	$1, %rcx
	cltq
	cmpq	%rcx, %rsi
	movl	%edx, (%r15,%rax,4)
	jne	L13
L12:
	movq	%r15, %rbp
	movl	$0, 44(%rsp)
	movq	%r12, %r15
	movq	%r13, %rbx
	movl	$-1, 28(%rsp)
	.align 4,0x90
L17:
	movl	28(%rsp), %r14d
	jmp	L211
	.align 4,0x90
L214:
	testl	%ecx, %ecx
	je	L19
L211:
	addl	$1, %r14d
	movl	$1, %edx
	movl	%r14d, %eax
	movl	%r14d, %ecx
	sarl	$5, %eax
	andl	$31, %ecx
	cltq
	sall	%cl, %edx
	movl	(%rbx,%rax,4), %eax
	testl	%eax, %edx
	jne	L214
	leal	-1(%r14), %edi
	cmpl	%edi, 20(%rsp)
	movl	%edi, 32(%rsp)
	jle	L197
L193:
	movl	%r14d, %r13d
	jmp	L208
	.align 4,0x90
L25:
	addl	$1, %r13d
	movl	$1, %edx
	movl	%r13d, %eax
	movl	%r13d, %ecx
	sarl	$5, %eax
	andl	$31, %ecx
	cltq
	sall	%cl, %edx
	movl	(%rbx,%rax,4), %eax
	testl	%eax, %edx
	jne	L24
L208:
	testl	%ecx, %ecx
	jne	L25
	testl	%eax, %eax
	jne	L91
	.align 4,0x90
L27:
	addl	$32, %r13d
	movl	%r13d, %eax
	sarl	$5, %eax
	cltq
	movl	(%rbx,%rax,4), %eax
	testl	%eax, %eax
	je	L27
	movl	%r13d, %ecx
	andl	$31, %ecx
L26:
	movl	$1, %edx
	sall	%cl, %edx
	testl	%eax, %edx
	jne	L24
	movl	%r13d, %ecx
	.align 4,0x90
L28:
	addl	$1, %ecx
	movl	$1, %edx
	movl	%ecx, %eax
	sall	%cl, %edx
	sarl	$5, %eax
	cltq
	testl	%edx, (%rbx,%rax,4)
	je	L28
	movl	%ecx, %r13d
L24:
	leal	-1(%r13), %eax
	cmpl	%eax, 20(%rsp)
	movl	%eax, 28(%rsp)
	jle	L197
	movl	32(%rsp), %edi
	cmpl	%edi, %eax
	jle	L17
	movl	44(%rsp), %edx
	movl	%edi, %esi
	movl	%eax, %edi
	movl	$1, 24(%rsp)
	subl	%esi, %eax
	movq	%rbx, 88(%rsp)
	movl	%edi, %r12d
	movl	%esi, %ebx
	movl	%esi, 112(%rsp)
	movl	%edi, 512(%rsp)
	leal	1(%rdx,%rax), %eax
	movl	$0, 36(%rsp)
	movl	%eax, 44(%rsp)
	movl	24(%rsp), %eax
	movl	%r14d, 84(%rsp)
	movl	%r13d, 96(%rsp)
	.align 4,0x90
L31:
	subl	$1, %eax
	movl	%eax, 16(%rsp)
	movl	%r12d, %eax
	subl	%ebx, %eax
	cmpl	$9, %eax
	jle	L215
	imull	$7621, 36(%rsp), %eax
	addl	$1, %eax
	andl	$32767, %eax
	movl	%eax, %edi
	movl	%eax, 36(%rsp)
	movl	$-1431655765, %eax
	mull	%edi
	shrl	%edx
	leal	(%rdx,%rdx,2), %eax
	subl	%eax, %edi
	jne	L42
	movslq	%ebx, %rax
	movl	(%r15,%rax,4), %eax
	movl	0(%rbp,%rax,4), %r8d
L43:
	cmpl	%r12d, %ebx
	jg	L34
	movslq	%ebx, %rax
	movl	%r12d, %r9d
	movl	%ebx, %r13d
	movq	%rax, 64(%rsp)
	salq	$2, %rax
	movl	%r12d, %edx
	leaq	(%r15,%rax), %r10
	movq	%rax, 48(%rsp)
	leal	1(%rbx), %eax
	movq	%r10, 56(%rsp)
	movq	%r10, %r14
	movl	%eax, 72(%rsp)
	movl	%eax, %r11d
	.align 4,0x90
L45:
	movl	(%r10), %eax
	leal	-1(%r11), %edi
	movq	%rax, %rcx
	movl	0(%rbp,%rax,4), %eax
	subl	%r8d, %eax
	cmpl	$0, %eax
	je	L216
	jle	L209
	cmpl	%edi, %edx
	jl	L46
	movslq	%edx, %rax
	movq	%r10, 8(%rsp)
	leaq	(%r15,%rax,4), %rax
	jmp	L50
	.align 4,0x90
L51:
	js	L217
L52:
	subq	$4, %rax
	cmpl	%edx, %edi
	jg	L46
L50:
	movl	(%rax), %esi
	subl	$1, %edx
	cmpl	%r8d, 0(%rbp,%rsi,4)
	movq	%rsi, %rcx
	jne	L51
	movslq	%r9d, %rsi
	subl	$1, %r9d
	leaq	(%r15,%rsi,4), %rsi
	movl	(%rsi), %r10d
	movl	%r10d, (%rax)
	movl	%ecx, (%rsi)
	jmp	L52
	.align 4,0x90
L217:
	movq	8(%rsp), %r10
	movl	(%r10), %esi
	movl	%ecx, (%r10)
	movl	%esi, (%rax)
L209:
	movl	%r11d, %edi
L48:
	addq	$4, %r10
	addl	$1, %r11d
	cmpl	%edx, %edi
	jle	L45
L46:
	cmpl	%r9d, %r13d
	jg	L34
	movl	%edi, %esi
	movl	%r13d, %eax
	subl	%ebx, %eax
	subl	%r13d, %esi
	cmpl	%eax, %esi
	cmovg	%eax, %esi
	movl	%edi, %eax
	subl	%esi, %eax
	testl	%esi, %esi
	jle	L54
	movq	48(%rsp), %r11
	movslq	%eax, %r8
	movl	%eax, 8(%rsp)
	leaq	16(,%r8,4), %rcx
	movl	%esi, 76(%rsp)
	leaq	0(,%r8,4), %rax
	cmpq	%rcx, %r11
	leaq	16(%r11), %rcx
	setge	%r10b
	cmpq	%rcx, %rax
	setge	%cl
	orb	%cl, %r10b
	je	L55
	cmpl	$8, %esi
	jbe	L55
	movq	56(%rsp), %r11
	leal	-1(%rsi), %r10d
	movl	%ebx, %r14d
	movl	%r10d, 48(%rsp)
	movq	%r11, %rcx
	shrq	$2, %rcx
	negq	%rcx
	movl	%ecx, %r10d
	andl	$3, %r10d
	je	L56
	addq	%r15, %rax
	movl	(%r11), %ecx
	movl	(%rax), %r14d
	movl	%r14d, (%r11)
	movl	72(%rsp), %r14d
	movl	%ecx, (%rax)
	movl	8(%rsp), %eax
	addl	$1, %eax
	cmpl	$1, %r10d
	je	L97
	movslq	%r14d, %rcx
	cltq
	cmpl	$3, %r10d
	leaq	(%r15,%rcx,4), %rcx
	leaq	(%r15,%rax,4), %rax
	movl	(%rcx), %r14d
	movl	(%rax), %r11d
	movl	%r11d, (%rcx)
	movl	%r14d, (%rax)
	movl	8(%rsp), %eax
	leal	2(%rbx), %r14d
	leal	2(%rax), %ecx
	leal	-2(%rsi), %eax
	jne	L98
	addl	$3, 8(%rsp)
	movslq	%r14d, %rax
	subl	$3, %esi
	leaq	(%r15,%rax,4), %r14
	movslq	%ecx, %rax
	leaq	(%r15,%rax,4), %rax
	movl	(%r14), %r11d
	movl	(%rax), %ecx
	movl	%ecx, (%r14)
	leal	3(%rbx), %r14d
	movl	%r11d, (%rax)
L56:
	movl	76(%rsp), %r11d
	movl	%r10d, %eax
	movq	64(%rsp), %rcx
	subl	%r10d, %r11d
	addq	%rax, %rcx
	addq	%r8, %rax
	movl	%r11d, 48(%rsp)
	shrl	$2, %r11d
	leaq	(%r15,%rcx,4), %r10
	xorl	%ecx, %ecx
	leaq	(%r15,%rax,4), %r8
	xorl	%eax, %eax
	.align 4,0x90
L58:
	movdqa	(%r10,%rax), %xmm0
	addl	$1, %ecx
	movdqu	(%r8,%rax), %xmm1
	movaps	%xmm1, (%r10,%rax)
	movups	%xmm0, (%r8,%rax)
	addq	$16, %rax
	cmpl	%r11d, %ecx
	jb	L58
	movl	48(%rsp), %r8d
	movl	8(%rsp), %r10d
	movl	%r8d, %eax
	andl	$-4, %eax
	leal	(%rax,%r14), %ecx
	subl	%eax, %esi
	addl	%eax, %r10d
	cmpl	%r8d, %eax
	movl	%esi, %r11d
	je	L54
	movslq	%ecx, %rax
	cmpl	$1, %r11d
	leaq	(%r15,%rax,4), %rsi
	movslq	%r10d, %rax
	leaq	(%r15,%rax,4), %rax
	movl	(%rsi), %r8d
	movl	(%rax), %r14d
	movl	%r14d, (%rsi)
	leal	1(%rcx), %esi
	movl	%r8d, (%rax)
	leal	1(%r10), %eax
	je	L54
	movslq	%esi, %rsi
	cltq
	cmpl	$2, %r11d
	leaq	(%r15,%rsi,4), %rsi
	leaq	(%r15,%rax,4), %rax
	movl	(%rsi), %r8d
	movl	(%rax), %r14d
	movl	%r14d, (%rsi)
	leal	2(%rcx), %esi
	movl	%r8d, (%rax)
	leal	2(%r10), %eax
	je	L54
	movslq	%esi, %rsi
	cltq
	cmpl	$3, %r11d
	leaq	(%r15,%rsi,4), %rsi
	leaq	(%r15,%rax,4), %rax
	movl	(%rsi), %r8d
	movl	(%rax), %r14d
	movl	%r14d, (%rsi)
	leal	3(%rcx), %esi
	movl	%r8d, (%rax)
	leal	3(%r10), %eax
	je	L54
	movslq	%esi, %rsi
	cltq
	cmpl	$4, %r11d
	leaq	(%r15,%rsi,4), %rsi
	leaq	(%r15,%rax,4), %rax
	movl	(%rsi), %r8d
	movl	(%rax), %r14d
	movl	%r14d, (%rsi)
	leal	4(%rcx), %esi
	movl	%r8d, (%rax)
	leal	4(%r10), %eax
	je	L54
	movslq	%esi, %rsi
	cltq
	addl	$5, %ecx
	leaq	(%r15,%rax,4), %rax
	cmpl	$5, %r11d
	leaq	(%r15,%rsi,4), %rsi
	movl	(%rax), %r14d
	movl	(%rsi), %r8d
	movl	%r14d, (%rsi)
	movl	%r8d, (%rax)
	leal	5(%r10), %eax
	je	L54
	movslq	%ecx, %rcx
	cltq
	leaq	(%r15,%rcx,4), %rcx
	leaq	(%r15,%rax,4), %rax
	movl	(%rcx), %esi
	movl	(%rax), %r8d
	movl	%r8d, (%rcx)
	movl	%esi, (%rax)
L54:
	movl	%r9d, %r11d
	movl	%r12d, %esi
	subl	%edx, %r11d
	movl	%r12d, %edx
	subl	%r9d, %edx
	cmpl	%r11d, %edx
	cmovg	%r11d, %edx
	subl	%edx, %esi
	testl	%edx, %edx
	leal	1(%rsi), %r14d
	jle	L62
	movslq	%esi, %rcx
	movslq	%edi, %rax
	movl	%edx, %r10d
	leaq	1(%rcx), %r9
	movq	%rax, 48(%rsp)
	salq	$2, %rax
	leaq	16(%rax), %r8
	movq	%r9, 56(%rsp)
	salq	$2, %r9
	leaq	20(,%rcx,4), %rcx
	cmpq	%r8, %r9
	setge	%r8b
	cmpq	%rcx, %rax
	setge	%cl
	addq	%r15, %rax
	orb	%cl, %r8b
	je	L63
	cmpl	$8, %edx
	jbe	L63
	leal	-1(%rdx), %r9d
	movq	%rax, %rcx
	movl	%edi, 8(%rsp)
	shrq	$2, %rcx
	movl	%r9d, 64(%rsp)
	negq	%rcx
	movl	%ecx, %r9d
	andl	$3, %r9d
	je	L64
	movslq	%r14d, %r14
	movl	(%rax), %ecx
	cmpl	$1, %r9d
	leaq	(%r15,%r14,4), %r8
	movl	(%r8), %r14d
	movl	%r14d, (%rax)
	leal	1(%rdi), %eax
	movl	%ecx, (%r8)
	leal	2(%rsi), %r14d
	movl	%eax, 8(%rsp)
	je	L100
	movslq	%r14d, %r14
	cltq
	cmpl	$3, %r9d
	leaq	(%r15,%rax,4), %rax
	leaq	(%r15,%r14,4), %r8
	movl	(%rax), %ecx
	movl	(%r8), %r14d
	movl	%r14d, (%rax)
	leal	3(%rsi), %r14d
	movl	%ecx, (%r8)
	leal	2(%rdi), %ecx
	movl	%ecx, 8(%rsp)
	leal	-2(%rdx), %eax
	jne	L101
	movslq	%r14d, %r14
	movslq	%ecx, %rax
	subl	$3, %edx
	leaq	(%r15,%r14,4), %rcx
	leaq	(%r15,%rax,4), %rax
	movl	(%rcx), %r14d
	movl	(%rax), %r8d
	movl	%r14d, (%rax)
	leal	3(%rdi), %eax
	movl	%r8d, (%rcx)
	leal	4(%rsi), %r14d
	movl	%eax, 8(%rsp)
L64:
	movq	48(%rsp), %rcx
	movl	%r9d, %eax
	subl	%r9d, %r10d
	movl	%r10d, %r9d
	shrl	$2, %r9d
	addq	%rax, %rcx
	addq	56(%rsp), %rax
	leaq	(%r15,%rcx,4), %r8
	xorl	%ecx, %ecx
	leaq	(%r15,%rax,4), %rsi
	xorl	%eax, %eax
	.align 4,0x90
L66:
	movdqa	(%r8,%rax), %xmm0
	addl	$1, %ecx
	movdqu	(%rsi,%rax), %xmm1
	movaps	%xmm1, (%r8,%rax)
	movups	%xmm0, (%rsi,%rax)
	addq	$16, %rax
	cmpl	%r9d, %ecx
	jb	L66
	movl	8(%rsp), %ecx
	movl	%r10d, %eax
	andl	$-4, %eax
	subl	%eax, %edx
	addl	%eax, %r14d
	movl	%edx, %r8d
	addl	%eax, %ecx
	cmpl	%r10d, %eax
	je	L62
	movslq	%ecx, %rax
	cmpl	$1, %r8d
	leaq	(%r15,%rax,4), %rdx
	movslq	%r14d, %rax
	leaq	(%r15,%rax,4), %rax
	movl	(%rdx), %esi
	movl	(%rax), %r9d
	movl	%r9d, (%rdx)
	leal	1(%rcx), %edx
	movl	%esi, (%rax)
	leal	1(%r14), %eax
	je	L62
	movslq	%edx, %rdx
	cltq
	cmpl	$2, %r8d
	leaq	(%r15,%rdx,4), %rdx
	leaq	(%r15,%rax,4), %rax
	movl	(%rdx), %esi
	movl	(%rax), %r9d
	movl	%r9d, (%rdx)
	leal	2(%rcx), %edx
	movl	%esi, (%rax)
	leal	2(%r14), %eax
	je	L62
	movslq	%edx, %rdx
	cltq
	cmpl	$3, %r8d
	leaq	(%r15,%rdx,4), %rdx
	leaq	(%r15,%rax,4), %rax
	movl	(%rdx), %esi
	movl	(%rax), %r9d
	movl	%r9d, (%rdx)
	leal	3(%rcx), %edx
	movl	%esi, (%rax)
	leal	3(%r14), %eax
	je	L62
	movslq	%edx, %rdx
	cltq
	cmpl	$4, %r8d
	leaq	(%r15,%rdx,4), %rdx
	leaq	(%r15,%rax,4), %rax
	movl	(%rdx), %esi
	movl	(%rax), %r9d
	movl	%r9d, (%rdx)
	leal	4(%rcx), %edx
	movl	%esi, (%rax)
	leal	4(%r14), %eax
	je	L62
	movslq	%edx, %rdx
	cltq
	addl	$5, %ecx
	leaq	(%r15,%rdx,4), %rdx
	addl	$5, %r14d
	cmpl	$5, %r8d
	leaq	(%r15,%rax,4), %rax
	movl	(%rdx), %esi
	movl	(%rax), %r9d
	movl	%r9d, (%rdx)
	movl	%esi, (%rax)
	je	L62
	movslq	%ecx, %rcx
	movslq	%r14d, %rax
	leaq	(%r15,%rcx,4), %rdx
	leaq	(%r15,%rax,4), %rax
	movl	(%rdx), %ecx
	movl	(%rax), %esi
	movl	%esi, (%rdx)
	movl	%ecx, (%rax)
L62:
	addl	%ebx, %edi
	movl	%r12d, %edx
	movl	%r12d, %ecx
	subl	%r13d, %edi
	subl	%r11d, %edx
	movl	24(%rsp), %r11d
	leal	-1(%rdi), %eax
	addl	$1, %edx
	movl	%eax, %esi
	subl	%edx, %ecx
	subl	%ebx, %esi
	leal	1(%r11), %edi
	cmpl	%ecx, %esi
	movslq	16(%rsp), %rcx
	jle	L70
	movl	%eax, 512(%rsp,%rcx,4)
	movslq	%r11d, %rax
	movl	%edx, 112(%rsp,%rax,4)
	movl	%r12d, 512(%rsp,%rax,4)
L71:
	movl	%edi, 16(%rsp)
L72:
	cmpl	$99, 16(%rsp)
	jle	L32
	movl	$1004, %edi
	call	_BZ2_bz__AssertH__fail
L32:
	movl	16(%rsp), %edi
	leal	-1(%rdi), %eax
	movl	%edi, 24(%rsp)
	cltq
	movl	112(%rsp,%rax,4), %ebx
	movl	512(%rsp,%rax,4), %r12d
	movl	%edi, %eax
	jmp	L31
	.align 4,0x90
L216:
	movslq	%r13d, %rax
	movl	%r11d, %edi
	addl	$1, %r13d
	leaq	(%r15,%rax,4), %rax
	movl	(%rax), %esi
	movl	%esi, (%r10)
	movl	%ecx, (%rax)
	jmp	L48
L94:
	movq	%r9, %rax
	.align 4,0x90
L39:
	subl	$1, %r8d
	subq	$4, %r9
	movl	%r10d, -4(%r15,%rax)
	cmpl	%r8d, %ebx
	jne	L41
	.align 4,0x90
L34:
	movl	16(%rsp), %esi
	testl	%esi, %esi
	jne	L72
	movl	96(%rsp), %r13d
	movl	$-1, %edx
	movl	84(%rsp), %r14d
	movslq	32(%rsp), %rcx
	movq	88(%rsp), %rbx
	movl	%r13d, %edi
	subl	%r14d, %edi
	leaq	1(%rcx), %rax
	addq	%rax, %rdi
	jmp	L74
	.align 4,0x90
L218:
	addq	$1, %rax
L74:
	movl	(%r15,%rcx,4), %esi
	movl	0(%rbp,%rsi,4), %esi
	cmpl	%edx, %esi
	je	L73
	movl	%ecx, %edx
	movl	$1, %r11d
	sarl	$5, %edx
	sall	%cl, %r11d
	movslq	%edx, %rdx
	orl	%r11d, (%rbx,%rdx,4)
L73:
	cmpq	%rax, %rdi
	movq	%rax, %rcx
	movl	%esi, %edx
	jne	L218
	jmp	L17
	.align 4,0x90
L19:
	cmpl	$-1, %eax
	jne	L23
	.align 4,0x90
L22:
	addl	$32, %r14d
	movl	%r14d, %eax
	sarl	$5, %eax
	cltq
	movl	(%rbx,%rax,4), %eax
	cmpl	$-1, %eax
	je	L22
	jmp	L207
	.align 4,0x90
L23:
	addl	$1, %r14d
	movl	%r14d, %eax
	sarl	$5, %eax
	cltq
	movl	(%rbx,%rax,4), %eax
L207:
	movl	%r14d, %ecx
	movl	$1, %edx
	andl	$31, %ecx
	sall	%cl, %edx
	testl	%eax, %edx
	jne	L23
	leal	-1(%r14), %edi
	cmpl	%edi, 20(%rsp)
	movl	%edi, 32(%rsp)
	jg	L193
L197:
	cmpl	$3, 80(%rsp)
	movq	%r15, %r12
	movq	%rbx, %r13
	movq	%rbp, %r15
	jle	L75
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC2(%rip), %rsi
	movl	44(%rsp), %edx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
L75:
	sall	40(%rsp)
	movl	40(%rsp), %eax
	cmpl	%eax, 20(%rsp)
	jl	L103
	movl	44(%rsp), %ecx
	testl	%ecx, %ecx
	jne	L76
L103:
	cmpl	$3, 80(%rsp)
	jg	L219
	movl	20(%rsp), %eax
	testl	%eax, %eax
	jle	L1
L79:
	movl	912(%rsp), %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movl	20(%rsp), %r8d
	movq	104(%rsp), %rdi
L83:
	leal	1(%rcx), %eax
	testl	%edx, %edx
	cltq
	jne	L86
	.align 4,0x90
L82:
	movl	%eax, %ecx
	addq	$1, %rax
	movl	-4(%rdi,%rax,4), %edx
	testl	%edx, %edx
	je	L82
L86:
	subl	$1, %edx
	movslq	%ecx, %rax
	movl	%edx, 912(%rsp,%rax,4)
	movl	(%r12,%rsi,4), %eax
	addq	$1, %rsi
	cmpl	%esi, %r8d
	movb	%cl, (%r15,%rax)
	jg	L83
	cmpl	$255, %ecx
	jg	L220
L1:
	addq	$2984, %rsp
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
L42:
LCFI14:
	cmpl	$1, %edi
	je	L221
	movslq	%r12d, %rax
	movl	(%r15,%rax,4), %eax
	movl	0(%rbp,%rax,4), %r8d
	jmp	L43
L215:
	cmpl	%r12d, %ebx
	je	L34
	cmpl	$3, %eax
	jle	L35
	leal	-4(%r12), %eax
	cmpl	%ebx, %eax
	jl	L35
	leal	3(%rbx), %r11d
	cltq
	movl	%r12d, %r8d
	leaq	16(,%rax,4), %r9
	.align 4,0x90
L38:
	movslq	-16(%r15,%r9), %rax
	cmpl	%r12d, %r8d
	movl	%r8d, %edx
	movq	%rax, %r10
	movl	0(%rbp,%rax,4), %edi
	jg	L92
	movl	(%r15,%r9), %eax
	cmpl	0(%rbp,%rax,4), %edi
	movq	%rax, %rcx
	movq	%r9, %rax
	ja	L37
	jmp	L36
	.align 4,0x90
L222:
	movl	(%r15,%rax), %esi
	cmpl	0(%rbp,%rsi,4), %edi
	movq	%rsi, %rcx
	jbe	L36
L37:
	addl	$4, %edx
	movl	%ecx, -16(%r15,%rax)
	addq	$16, %rax
	cmpl	%r12d, %edx
	jle	L222
L36:
	subl	$1, %r8d
	subq	$4, %r9
	movl	%r10d, -16(%r15,%rax)
	cmpl	%r8d, %r11d
	jne	L38
L35:
	leal	-1(%r12), %eax
	cmpl	%ebx, %eax
	jl	L34
	cltq
	movl	%r12d, %r8d
	leaq	4(,%rax,4), %r9
	.align 4,0x90
L41:
	movslq	-4(%r15,%r9), %rax
	cmpl	%r12d, %r8d
	movl	%r8d, %edx
	movq	%rax, %r10
	movl	0(%rbp,%rax,4), %edi
	jg	L94
	movl	(%r15,%r9), %eax
	cmpl	%edi, 0(%rbp,%rax,4)
	movq	%rax, %rcx
	movq	%r9, %rax
	jb	L40
	jmp	L39
	.align 4,0x90
L223:
	movl	(%r15,%rax), %esi
	cmpl	0(%rbp,%rsi,4), %edi
	movq	%rsi, %rcx
	jbe	L39
L40:
	addl	$1, %edx
	movl	%ecx, -4(%r15,%rax)
	addq	$4, %rax
	cmpl	%r12d, %edx
	jle	L223
	jmp	L39
L70:
	movl	%edx, 112(%rsp,%rcx,4)
	movslq	24(%rsp), %rdx
	movl	%ebx, 112(%rsp,%rdx,4)
	movl	%eax, 512(%rsp,%rdx,4)
	jmp	L71
L221:
	leal	(%rbx,%r12), %eax
	sarl	%eax
	cltq
	movl	(%r15,%rax,4), %eax
	movl	0(%rbp,%rax,4), %r8d
	jmp	L43
L91:
	xorl	%ecx, %ecx
	jmp	L26
L63:
	movq	48(%rsp), %rsi
	subl	$1, %edx
	movslq	%r14d, %rcx
	addq	%rsi, %rdx
	subq	%rsi, %rcx
	leaq	4(%r15,%rdx,4), %rdx
	.align 4,0x90
L68:
	movl	(%rax), %esi
	movl	(%rax,%rcx,4), %r8d
	movl	%r8d, (%rax)
	movl	%esi, (%rax,%rcx,4)
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	L68
	jmp	L62
L55:
	leal	-1(%rsi), %eax
	movq	64(%rsp), %rsi
	addq	%rsi, %rax
	leaq	4(%r15,%rax,4), %rcx
	movq	%r8, %rax
	subq	%rsi, %rax
	.align 4,0x90
L60:
	movl	(%r14), %esi
	movl	(%r14,%rax,4), %r8d
	movl	%r8d, (%r14)
	movl	%esi, (%r14,%rax,4)
	addq	$4, %r14
	cmpq	%r14, %rcx
	jne	L60
	jmp	L54
L97:
	movl	48(%rsp), %esi
	movl	%eax, 8(%rsp)
	jmp	L56
L100:
	movl	64(%rsp), %edx
	jmp	L64
L92:
	movq	%r9, %rax
	jmp	L36
L101:
	movl	%eax, %edx
	jmp	L64
L98:
	movl	%eax, %esi
	movl	%ecx, 8(%rsp)
	jmp	L56
L219:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movl	$33, %edx
	movl	$1, %esi
	leaq	lC3(%rip), %rdi
	movq	(%rax), %rcx
	call	_fwrite
	movl	20(%rsp), %edx
	testl	%edx, %edx
	jg	L79
	jmp	L1
	.align 4,0x90
L220:
	addq	$2984, %rsp
LCFI15:
	movl	$1005, %edi
	popq	%rbx
LCFI16:
	popq	%rbp
LCFI17:
	popq	%r12
LCFI18:
	popq	%r13
LCFI19:
	popq	%r14
LCFI20:
	popq	%r15
LCFI21:
	jmp	_BZ2_bz__AssertH__fail
LFE33:
	.align 4,0x90
_mainGtU.part.0:
LFB40:
	leal	3(%rdi), %r10d
	leal	3(%rsi), %eax
	movzbl	(%rdx,%rax), %eax
	cmpb	%al, (%rdx,%r10)
	je	L225
L259:
	seta	%al
	ret
	.align 4,0x90
L225:
	leal	4(%rdi), %eax
	leal	4(%rsi), %r10d
	movzbl	(%rdx,%r10), %r11d
	cmpb	%r11b, (%rdx,%rax)
	jne	L259
	leal	5(%rdi), %eax
	leal	5(%rsi), %r10d
	movzbl	(%rdx,%r10), %r11d
	cmpb	%r11b, (%rdx,%rax)
	jne	L259
	leal	6(%rdi), %eax
	leal	6(%rsi), %r10d
	movzbl	(%rdx,%r10), %r11d
	cmpb	%r11b, (%rdx,%rax)
	jne	L259
	leal	7(%rdi), %eax
	leal	7(%rsi), %r10d
	movzbl	(%rdx,%r10), %r11d
	cmpb	%r11b, (%rdx,%rax)
	jne	L259
	leal	8(%rdi), %eax
	leal	8(%rsi), %r10d
	movzbl	(%rdx,%r10), %r11d
	cmpb	%r11b, (%rdx,%rax)
	jne	L259
	leal	9(%rdi), %eax
	leal	9(%rsi), %r10d
	movzbl	(%rdx,%r10), %r11d
	cmpb	%r11b, (%rdx,%rax)
	jne	L259
	leal	10(%rdi), %eax
	leal	10(%rsi), %r10d
	movzbl	(%rdx,%r10), %r11d
	cmpb	%r11b, (%rdx,%rax)
	jne	L259
	leal	11(%rdi), %eax
	leal	11(%rsi), %r10d
	movzbl	(%rdx,%r10), %r11d
	cmpb	%r11b, (%rdx,%rax)
	jne	L259
	pushq	%rbx
LCFI22:
	leal	8(%r8), %eax
	addl	$12, %edi
	addl	$12, %esi
L253:
	movl	%edi, %r11d
	movl	%esi, %r10d
	movzbl	(%rdx,%r10), %ebx
	cmpb	%bl, (%rdx,%r11)
	jne	L258
	movzwl	(%rcx,%r10,2), %ebx
	cmpw	%bx, (%rcx,%r11,2)
	jne	L258
	leal	1(%rdi), %r11d
	leal	1(%rsi), %r10d
	movzbl	(%rdx,%r10), %ebx
	cmpb	%bl, (%rdx,%r11)
	jne	L258
	movzwl	(%rcx,%r10,2), %ebx
	cmpw	%bx, (%rcx,%r11,2)
	jne	L258
	leal	2(%rdi), %r11d
	leal	2(%rsi), %r10d
	movzbl	(%rdx,%r10), %ebx
	cmpb	%bl, (%rdx,%r11)
	jne	L258
	movzwl	(%rcx,%r10,2), %ebx
	cmpw	%bx, (%rcx,%r11,2)
	jne	L258
	leal	3(%rdi), %r11d
	leal	3(%rsi), %r10d
	movzbl	(%rdx,%r10), %ebx
	cmpb	%bl, (%rdx,%r11)
	jne	L258
	movzwl	(%rcx,%r10,2), %ebx
	cmpw	%bx, (%rcx,%r11,2)
	jne	L258
	leal	4(%rdi), %r11d
	leal	4(%rsi), %r10d
	movzbl	(%rdx,%r10), %ebx
	cmpb	%bl, (%rdx,%r11)
	jne	L258
	movzwl	(%rcx,%r10,2), %ebx
	cmpw	%bx, (%rcx,%r11,2)
	jne	L258
	leal	5(%rdi), %r11d
	leal	5(%rsi), %r10d
	movzbl	(%rdx,%r10), %ebx
	cmpb	%bl, (%rdx,%r11)
	jne	L258
	movzwl	(%rcx,%r10,2), %ebx
	cmpw	%bx, (%rcx,%r11,2)
	jne	L258
	leal	6(%rdi), %r11d
	leal	6(%rsi), %r10d
	movzbl	(%rdx,%r10), %ebx
	cmpb	%bl, (%rdx,%r11)
	jne	L258
	movzwl	(%rcx,%r10,2), %ebx
	cmpw	%bx, (%rcx,%r11,2)
	jne	L258
	leal	7(%rdi), %r11d
	leal	7(%rsi), %r10d
	movzbl	(%rdx,%r10), %ebx
	cmpb	%bl, (%rdx,%r11)
	jne	L258
	movzwl	(%rcx,%r10,2), %ebx
	cmpw	%bx, (%rcx,%r11,2)
	jne	L258
	addl	$8, %edi
	addl	$8, %esi
	cmpl	%edi, %r8d
	ja	L251
	subl	%r8d, %edi
L251:
	cmpl	%esi, %r8d
	ja	L252
	subl	%r8d, %esi
L252:
	subl	$1, (%r9)
	subl	$8, %eax
	jns	L253
	xorl	%eax, %eax
	popq	%rbx
LCFI23:
	ret
L258:
LCFI24:
	seta	%al
	popq	%rbx
LCFI25:
	ret
LFE40:
	.cstring
	.align 3
lC5:
	.ascii "        main sort initialise ...\12\0"
	.align 3
lC7:
	.ascii "        qsort [0x%x, 0x%x]   done %d   this %d\12\0"
	.align 3
lC8:
	.ascii "        %d pointers, %d sorted, %d scanned\12\0"
	.text
	.align 4,0x90
_mainSort:
LFB38:
	pushq	%r15
LCFI26:
	movq	%rsi, %r11
	pushq	%r14
LCFI27:
	pushq	%r13
LCFI28:
	pushq	%r12
LCFI29:
	pushq	%rbp
LCFI30:
	pushq	%rbx
LCFI31:
	subq	$4760, %rsp
LCFI32:
	cmpl	$3, %r9d
	movq	4816(%rsp), %rax
	movq	%rdi, 144(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%rcx, 152(%rsp)
	movl	%r8d, 84(%rsp)
	movl	%r9d, 196(%rsp)
	movq	%rax, 72(%rsp)
	jle	L261
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	%rsi, 8(%rsp)
	movl	$33, %edx
	movl	$1, %esi
	leaq	lC5(%rip), %rdi
	movq	(%rax), %rcx
	call	_fwrite
	movq	8(%rsp), %r11
L261:
	movq	152(%rsp), %r14
	xorl	%esi, %esi
	movl	$262148, %edx
	movq	%r11, 8(%rsp)
	movq	%r14, %rdi
	call	_memset
	movq	8(%rsp), %r11
	movl	84(%rsp), %esi
	movzbl	(%r11), %eax
	leal	-1(%rsi), %ebx
	movl	%ebx, 204(%rsp)
	sall	$8, %eax
	cmpl	$2, %ebx
	jle	L378
	movslq	%ebx, %rdi
	movq	88(%rsp), %rbx
	subl	$4, %esi
	movq	%r14, %r9
	leaq	(%r11,%rdi), %rcx
	shrl	$2, %esi
	addq	%rdi, %rdi
	movl	%esi, %r8d
	salq	$3, %r8
	leaq	-6(%rbx,%rdi), %rdx
	leaq	-14(%rbx,%rdi), %rdi
	subq	%r8, %rdi
L263:
	xorl	%r8d, %r8d
	sarl	$8, %eax
	xorl	%r10d, %r10d
	movw	%r8w, 6(%rdx)
	movzbl	(%rcx), %r8d
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	subq	$8, %rdx
	subq	$4, %rcx
	sall	$8, %r8d
	orl	%r8d, %eax
	movslq	%eax, %r8
	sarl	$8, %eax
	addl	$1, (%r9,%r8,4)
	movw	%r10w, 12(%rdx)
	movl	%eax, %r8d
	movzbl	3(%rcx), %eax
	sall	$8, %eax
	orl	%r8d, %eax
	movslq	%eax, %r8
	sarl	$8, %eax
	addl	$1, (%r9,%r8,4)
	movw	%bx, 10(%rdx)
	movl	%eax, %r8d
	movzbl	2(%rcx), %eax
	sall	$8, %eax
	orl	%r8d, %eax
	movslq	%eax, %r8
	sarl	$8, %eax
	addl	$1, (%r9,%r8,4)
	movw	%bp, 8(%rdx)
	movl	%eax, %r8d
	movzbl	1(%rcx), %eax
	sall	$8, %eax
	orl	%r8d, %eax
	movslq	%eax, %r8
	addl	$1, (%r9,%r8,4)
	cmpq	%rdi, %rdx
	jne	L263
	movl	84(%rsp), %ebx
	negl	%esi
	leal	-5(%rbx,%rsi,4), %edx
L262:
	testl	%edx, %edx
	js	L264
	movq	88(%rsp), %rbx
	movslq	%edx, %rcx
	xorl	%r15d, %r15d
	sarl	$8, %eax
	movq	152(%rsp), %rdi
	leal	-1(%rdx), %esi
	movw	%r15w, (%rbx,%rcx,2)
	movzbl	(%r11,%rcx), %ecx
	sall	$8, %ecx
	orl	%ecx, %eax
	movslq	%eax, %rcx
	addl	$1, (%rdi,%rcx,4)
	cmpl	$-1, %esi
	je	L264
	sarl	$8, %eax
	movslq	%esi, %rsi
	xorl	%r14d, %r14d
	movl	%eax, %ecx
	movw	%r14w, (%rbx,%rsi,2)
	movzbl	(%r11,%rsi), %eax
	sall	$8, %eax
	orl	%ecx, %eax
	movslq	%eax, %rcx
	addl	$1, (%rdi,%rcx,4)
	cmpl	$2, %edx
	jne	L264
	sarl	$8, %eax
	xorl	%r13d, %r13d
	movw	%r13w, (%rbx)
	movl	%eax, %edx
	movzbl	(%r11), %eax
	sall	$8, %eax
	orl	%edx, %eax
	cltq
	addl	$1, (%rdi,%rax,4)
L264:
	movslq	84(%rsp), %rax
	movq	88(%rsp), %rbx
	leaq	34(%r11), %r8
	leaq	34(%rax), %rdi
	leaq	(%rdi,%rdi), %rsi
	leaq	-68(%rsi), %r9
	leaq	(%rbx,%r9), %rcx
	leaq	(%r11,%rax), %rdx
	cmpq	%r8, %rcx
	setnb	%r10b
	addq	%rbx, %rsi
	cmpq	%rsi, %r11
	setnb	%r8b
	addq	%r11, %rdi
	orl	%r10d, %r8d
	cmpq	%rdi, %rcx
	setnb	%dil
	cmpq	%rsi, %rdx
	setnb	%sil
	orl	%edi, %esi
	testb	%sil, %r8b
	je	L379
	leaq	16(%r11), %rsi
	cmpq	%rsi, %rdx
	leaq	16(%rax), %rsi
	setnb	%dil
	testq	%rsi, %rsi
	setle	%sil
	orb	%sil, %dil
	je	L379
	movq	%r11, %r8
	negq	%r8
	andl	$15, %r8d
	je	L380
	movzbl	(%r11), %ecx
	xorl	%r12d, %r12d
	cmpl	$1, %r8d
	movb	%cl, (%rdx)
	movw	%r12w, (%rbx,%rax,2)
	je	L381
	movzbl	1(%r11), %ecx
	leal	1(%rax), %edx
	xorl	%ebp, %ebp
	cmpl	$2, %r8d
	movslq	%edx, %rdx
	movb	%cl, (%r11,%rdx)
	movw	%bp, (%rbx,%rdx,2)
	je	L382
	movzbl	2(%r11), %ecx
	leal	2(%rax), %edx
	xorl	%r10d, %r10d
	cmpl	$3, %r8d
	movslq	%edx, %rdx
	movb	%cl, (%r11,%rdx)
	movw	%r10w, (%rbx,%rdx,2)
	je	L383
	movzbl	3(%r11), %ecx
	leal	3(%rax), %edx
	xorl	%edi, %edi
	cmpl	$4, %r8d
	movslq	%edx, %rdx
	movb	%cl, (%r11,%rdx)
	movw	%di, (%rbx,%rdx,2)
	je	L384
	movzbl	4(%r11), %ecx
	leal	4(%rax), %edx
	movslq	%edx, %rdx
	movb	%cl, (%r11,%rdx)
	xorl	%ecx, %ecx
	cmpl	$5, %r8d
	movw	%cx, (%rbx,%rdx,2)
	je	L385
	movzbl	5(%r11), %ecx
	leal	5(%rax), %edx
	xorl	%r15d, %r15d
	cmpl	$6, %r8d
	movslq	%edx, %rdx
	movb	%cl, (%r11,%rdx)
	movw	%r15w, (%rbx,%rdx,2)
	je	L386
	movzbl	6(%r11), %ecx
	leal	6(%rax), %edx
	xorl	%r14d, %r14d
	cmpl	$7, %r8d
	movslq	%edx, %rdx
	movb	%cl, (%r11,%rdx)
	movw	%r14w, (%rbx,%rdx,2)
	je	L387
	movzbl	7(%r11), %ecx
	leal	7(%rax), %edx
	xorl	%r13d, %r13d
	cmpl	$8, %r8d
	movslq	%edx, %rdx
	movb	%cl, (%r11,%rdx)
	movw	%r13w, (%rbx,%rdx,2)
	je	L388
	movzbl	8(%r11), %ecx
	leal	8(%rax), %edx
	xorl	%r12d, %r12d
	cmpl	$9, %r8d
	movslq	%edx, %rdx
	movb	%cl, (%r11,%rdx)
	movw	%r12w, (%rbx,%rdx,2)
	je	L389
	movzbl	9(%r11), %ecx
	leal	9(%rax), %edx
	xorl	%ebp, %ebp
	cmpl	$10, %r8d
	movslq	%edx, %rdx
	movb	%cl, (%r11,%rdx)
	movw	%bp, (%rbx,%rdx,2)
	je	L390
	movzbl	10(%r11), %ecx
	leal	10(%rax), %edx
	xorl	%r10d, %r10d
	cmpl	$11, %r8d
	movslq	%edx, %rdx
	movb	%cl, (%r11,%rdx)
	movw	%r10w, (%rbx,%rdx,2)
	je	L391
	movzbl	11(%r11), %ecx
	leal	11(%rax), %edx
	xorl	%edi, %edi
	cmpl	$12, %r8d
	movslq	%edx, %rdx
	movb	%cl, (%r11,%rdx)
	movw	%di, (%rbx,%rdx,2)
	je	L392
	movzbl	12(%r11), %ecx
	leal	12(%rax), %edx
	movslq	%edx, %rdx
	movb	%cl, (%r11,%rdx)
	xorl	%ecx, %ecx
	cmpl	$13, %r8d
	movw	%cx, (%rbx,%rdx,2)
	je	L393
	movzbl	13(%r11), %ecx
	leal	13(%rax), %edx
	xorl	%r15d, %r15d
	cmpl	$15, %r8d
	movslq	%edx, %rdx
	movb	%cl, (%r11,%rdx)
	movw	%r15w, (%rbx,%rdx,2)
	jne	L394
	movzbl	14(%r11), %ecx
	leal	14(%rax), %edx
	xorl	%r14d, %r14d
	movslq	%edx, %rdx
	movb	%cl, (%r11,%rdx)
	movl	$19, %ecx
	movw	%r14w, (%rbx,%rdx,2)
	movl	$15, %edx
L266:
	movl	%r8d, %edi
	movl	$34, %esi
	subl	%r8d, %esi
	addq	%rdi, %rax
	leaq	(%r11,%rdi), %r8
	addq	%r11, %rax
	leaq	(%r9,%rdi,2), %rdi
	addq	88(%rsp), %rdi
	movl	%esi, %r9d
	movdqa	(%r8), %xmm0
	shrl	$4, %r9d
	cmpl	$2, %r9d
	movups	%xmm0, (%rax)
	pxor	%xmm0, %xmm0
	movups	%xmm0, (%rdi)
	movups	%xmm0, 16(%rdi)
	jne	L268
	movdqa	16(%r8), %xmm1
	movups	%xmm1, 16(%rax)
	movups	%xmm0, 32(%rdi)
	movups	%xmm0, 48(%rdi)
L268:
	movl	%esi, %edi
	andl	$-16, %edi
	leal	(%rdi,%rdx), %eax
	subl	%edi, %ecx
	cmpl	%esi, %edi
	je	L270
	movl	84(%rsp), %ebx
	movslq	%eax, %rsi
	xorl	%r13d, %r13d
	cmpl	$1, %ecx
	movzbl	(%r11,%rsi), %esi
	movq	88(%rsp), %rdi
	leal	(%rbx,%rax), %edx
	movslq	%edx, %rdx
	movb	%sil, (%r11,%rdx)
	leal	1(%rax), %esi
	movw	%r13w, (%rdi,%rdx,2)
	je	L270
	leal	(%rbx,%rsi), %edx
	movslq	%esi, %rsi
	xorl	%r12d, %r12d
	movzbl	(%r11,%rsi), %esi
	movslq	%edx, %rdx
	cmpl	$2, %ecx
	movb	%sil, (%r11,%rdx)
	leal	2(%rax), %esi
	movw	%r12w, (%rdi,%rdx,2)
	je	L270
	leal	(%rsi,%rbx), %edx
	movslq	%esi, %rsi
	xorl	%ebp, %ebp
	movzbl	(%r11,%rsi), %esi
	movslq	%edx, %rdx
	cmpl	$3, %ecx
	movb	%sil, (%r11,%rdx)
	leal	3(%rax), %esi
	movw	%bp, (%rdi,%rdx,2)
	je	L270
	leal	(%rsi,%rbx), %edx
	movslq	%esi, %rsi
	xorl	%r10d, %r10d
	movzbl	(%r11,%rsi), %esi
	movslq	%edx, %rdx
	cmpl	$4, %ecx
	movb	%sil, (%r11,%rdx)
	leal	4(%rax), %esi
	movw	%r10w, (%rdi,%rdx,2)
	je	L270
	leal	(%rsi,%rbx), %edx
	movslq	%esi, %rsi
	xorl	%r9d, %r9d
	movzbl	(%r11,%rsi), %esi
	movslq	%edx, %rdx
	cmpl	$5, %ecx
	movb	%sil, (%r11,%rdx)
	leal	5(%rax), %esi
	movw	%r9w, (%rdi,%rdx,2)
	je	L270
	leal	(%rbx,%rsi), %edx
	movslq	%esi, %rsi
	xorl	%r8d, %r8d
	movzbl	(%r11,%rsi), %esi
	movslq	%edx, %rdx
	cmpl	$6, %ecx
	movb	%sil, (%r11,%rdx)
	leal	6(%rax), %esi
	movw	%r8w, (%rdi,%rdx,2)
	je	L270
	leal	(%rbx,%rsi), %edx
	movslq	%esi, %rsi
	movzbl	(%r11,%rsi), %esi
	movslq	%edx, %rdx
	movb	%sil, (%r11,%rdx)
	xorl	%esi, %esi
	cmpl	$7, %ecx
	movw	%si, (%rdi,%rdx,2)
	leal	7(%rax), %esi
	je	L270
	leal	(%rbx,%rsi), %edx
	movslq	%esi, %rsi
	xorl	%r15d, %r15d
	movzbl	(%r11,%rsi), %esi
	movslq	%edx, %rdx
	cmpl	$8, %ecx
	movb	%sil, (%r11,%rdx)
	leal	8(%rax), %esi
	movw	%r15w, (%rdi,%rdx,2)
	je	L270
	leal	(%rbx,%rsi), %edx
	movslq	%esi, %rsi
	xorl	%r14d, %r14d
	movzbl	(%r11,%rsi), %esi
	movslq	%edx, %rdx
	cmpl	$9, %ecx
	movb	%sil, (%r11,%rdx)
	leal	9(%rax), %esi
	movw	%r14w, (%rdi,%rdx,2)
	je	L270
	leal	(%rbx,%rsi), %edx
	movslq	%esi, %rsi
	xorl	%r13d, %r13d
	movzbl	(%r11,%rsi), %esi
	movslq	%edx, %rdx
	cmpl	$10, %ecx
	movb	%sil, (%r11,%rdx)
	leal	10(%rax), %esi
	movw	%r13w, (%rdi,%rdx,2)
	je	L270
	leal	(%rbx,%rsi), %edx
	movslq	%esi, %rsi
	xorl	%r12d, %r12d
	movzbl	(%r11,%rsi), %esi
	movslq	%edx, %rdx
	cmpl	$11, %ecx
	movb	%sil, (%r11,%rdx)
	leal	11(%rax), %esi
	movw	%r12w, (%rdi,%rdx,2)
	je	L270
	leal	(%rbx,%rsi), %edx
	movslq	%esi, %rsi
	xorl	%ebp, %ebp
	movzbl	(%r11,%rsi), %esi
	movslq	%edx, %rdx
	cmpl	$12, %ecx
	movb	%sil, (%r11,%rdx)
	leal	12(%rax), %esi
	movw	%bp, (%rdi,%rdx,2)
	je	L270
	leal	(%rbx,%rsi), %edx
	movslq	%esi, %rsi
	xorl	%r10d, %r10d
	movzbl	(%r11,%rsi), %esi
	movslq	%edx, %rdx
	cmpl	$13, %ecx
	movb	%sil, (%r11,%rdx)
	leal	13(%rax), %esi
	movw	%r10w, (%rdi,%rdx,2)
	je	L270
	leal	(%rbx,%rsi), %edx
	movslq	%esi, %rsi
	xorl	%r9d, %r9d
	movzbl	(%r11,%rsi), %esi
	movslq	%edx, %rdx
	addl	$14, %eax
	cmpl	$14, %ecx
	movb	%sil, (%r11,%rdx)
	movw	%r9w, (%rdi,%rdx,2)
	je	L270
	leal	(%rbx,%rax), %edx
	cltq
	xorl	%r8d, %r8d
	movzbl	(%r11,%rax), %eax
	movslq	%edx, %rdx
	movb	%al, (%r11,%rdx)
	movw	%r8w, (%rdi,%rdx,2)
L270:
	cmpl	$3, 196(%rsp)
	jle	L271
	movl	$27, %edx
	movq	___stderrp@GOTPCREL(%rip), %rax
	movl	$1, %esi
	movq	%r11, 8(%rsp)
	leaq	lC0(%rip), %rdi
	movq	(%rax), %rcx
	call	_fwrite
	movq	8(%rsp), %r11
L271:
	movq	152(%rsp), %rbx
	movl	(%rbx), %edx
	leaq	4(%rbx), %rax
	leaq	262148(%rbx), %rcx
	.align 4,0x90
L272:
	addl	(%rax), %edx
	addq	$4, %rax
	movl	%edx, -4(%rax)
	cmpq	%rcx, %rax
	jne	L272
	movzbl	(%r11), %eax
	movl	204(%rsp), %esi
	sall	$8, %eax
	cmpl	$2, %esi
	jle	L395
	movl	84(%rsp), %ebx
	movslq	%esi, %rdi
	movq	144(%rsp), %rcx
	addq	%r11, %rdi
	leal	-4(%rbx), %r9d
	leal	-5(%rbx), %r8d
	movq	152(%rsp), %rbx
	movl	%r9d, %edx
	andl	$-4, %edx
	movl	%r8d, %r10d
	subl	%edx, %r10d
L274:
	movzbl	(%rdi), %edx
	shrw	$8, %ax
	subq	$4, %rdi
	sall	$8, %edx
	orl	%edx, %eax
	movzwl	%ax, %edx
	shrw	$8, %ax
	leaq	(%rbx,%rdx,4), %rbp
	movl	0(%rbp), %edx
	subl	$1, %edx
	movl	%edx, 0(%rbp)
	movslq	%edx, %rdx
	movl	%esi, (%rcx,%rdx,4)
	movzbl	3(%rdi), %edx
	sall	$8, %edx
	orl	%edx, %eax
	movzwl	%ax, %edx
	shrw	$8, %ax
	leaq	(%rbx,%rdx,4), %rbp
	movl	0(%rbp), %edx
	subl	$1, %edx
	movl	%edx, 0(%rbp)
	leal	-1(%rsi), %ebp
	movslq	%edx, %rdx
	movl	%ebp, (%rcx,%rdx,4)
	movzbl	2(%rdi), %edx
	sall	$8, %edx
	orl	%eax, %edx
	movzwl	%dx, %eax
	leaq	(%rbx,%rax,4), %rbp
	movl	0(%rbp), %eax
	subl	$1, %eax
	movl	%eax, 0(%rbp)
	leal	-2(%rsi), %ebp
	cltq
	movl	%ebp, (%rcx,%rax,4)
	movzbl	1(%rdi), %eax
	sall	$8, %eax
	movl	%eax, %ebp
	movl	%edx, %eax
	shrw	$8, %ax
	orl	%ebp, %eax
	movzwl	%ax, %edx
	leaq	(%rbx,%rdx,4), %rbp
	movl	0(%rbp), %edx
	subl	$1, %edx
	movl	%edx, 0(%rbp)
	leal	-3(%rsi), %ebp
	subl	$4, %esi
	movslq	%edx, %rdx
	cmpl	%r10d, %esi
	movl	%ebp, (%rcx,%rdx,4)
	jne	L274
	andl	$-4, %r9d
	subl	%r9d, %r8d
L273:
	testl	%r8d, %r8d
	js	L275
	movslq	%r8d, %rdx
	movq	152(%rsp), %rbx
	shrw	$8, %ax
	movzbl	(%r11,%rdx), %edx
	movq	144(%rsp), %rdi
	sall	$8, %edx
	orl	%edx, %eax
	movzwl	%ax, %edx
	leaq	(%rbx,%rdx,4), %rcx
	movl	(%rcx), %edx
	subl	$1, %edx
	movl	%edx, (%rcx)
	leal	-1(%r8), %ecx
	movslq	%edx, %rdx
	cmpl	$-1, %ecx
	movl	%r8d, (%rdi,%rdx,4)
	je	L275
	movslq	%ecx, %rdx
	shrw	$8, %ax
	movzbl	(%r11,%rdx), %edx
	sall	$8, %edx
	orl	%edx, %eax
	movzwl	%ax, %edx
	leaq	(%rbx,%rdx,4), %rsi
	movl	(%rsi), %edx
	subl	$1, %edx
	cmpl	$2, %r8d
	movl	%edx, (%rsi)
	movslq	%edx, %rdx
	movl	%ecx, (%rdi,%rdx,4)
	jne	L275
	movzbl	(%r11), %edx
	shrw	$8, %ax
	sall	$8, %edx
	orl	%edx, %eax
	movzwl	%ax, %eax
	leaq	(%rbx,%rax,4), %rdx
	movl	(%rdx), %eax
	subl	$1, %eax
	movl	%eax, (%rdx)
	cltq
	movl	$0, (%rdi,%rax,4)
L275:
	leaq	224(%rsp), %rdx
	xorl	%eax, %eax
	movl	$32, %ecx
	movdqa	lC4(%rip), %xmm0
	movq	%rdx, %rdi
	movdqa	lC6(%rip), %xmm1
	rep stosq
	leaq	1680(%rsp), %rbx
	movq	%rbx, 184(%rsp)
	leaq	2704(%rsp), %rax
	movq	%rbx, %rdx
	.align 4,0x90
L276:
	movaps	%xmm0, (%rdx)
	addq	$16, %rdx
	paddd	%xmm1, %xmm0
	cmpq	%rax, %rdx
	jne	L276
	movq	152(%rsp), %r9
	movq	%rdx, 216(%rsp)
	movl	$364, 24(%rsp)
	movq	%r11, 32(%rsp)
L281:
	movl	24(%rsp), %ebx
	movl	$1431655766, %eax
	xorl	%r15d, %r15d
	movq	184(%rsp), %r13
	imull	%ebx
	movl	%ebx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	$255, %eax
	movslq	%edx, %r12
	movq	%r12, %rbx
	subl	%r12d, %eax
	movl	%r12d, 24(%rsp)
	leaq	1(%r12,%rax), %rax
	negl	%ebx
	movq	%r12, 8(%rsp)
	movslq	%ebx, %rbp
	movq	%rax, 16(%rsp)
	salq	$2, %rbp
	.align 4,0x90
L280:
	movq	8(%rsp), %rax
	movq	%r12, %rbx
	movslq	%r12d, %r8
	movq	%r13, %rsi
	subq	%r15, %rbx
	movl	0(%r13,%rax,4), %r14d
	leal	1(%r14), %eax
	movl	%r14d, %ecx
	sall	$8, %eax
	sall	$8, %ecx
	cltq
	movslq	%ecx, %rcx
	movl	(%r9,%rax,4), %r11d
	subl	(%r9,%rcx,4), %r11d
	jmp	L277
	.align 4,0x90
L279:
	movslq	%edi, %r8
	movl	%ecx, (%rsi,%rbx,4)
	addq	%rbp, %rsi
	cmpl	%edx, %r8d
	jl	L278
L277:
	movl	(%rsi), %ecx
	movl	%r8d, %edi
	subl	%edx, %edi
	leal	1(%rcx), %eax
	movl	%ecx, %r10d
	sall	$8, %eax
	sall	$8, %r10d
	cltq
	movslq	%r10d, %r10
	movl	(%r9,%rax,4), %eax
	subl	(%r9,%r10,4), %eax
	cmpl	%r11d, %eax
	ja	L279
L278:
	addq	$1, %r15
	addq	$1, %r12
	addq	$4, %r13
	cmpq	16(%rsp), %r12
	movl	%r14d, 1680(%rsp,%r8,4)
	jne	L280
	cmpl	$1, %edx
	jne	L281
	movl	$0, 200(%rsp)
	movq	32(%rsp), %r11
	movq	184(%rsp), %rax
	addq	$1020, %rax
	movq	%rax, 208(%rsp)
	movq	184(%rsp), %rax
L376:
	movq	$0, 120(%rsp)
	movl	(%rax), %eax
	movl	%eax, 164(%rsp)
	sall	$8, %eax
	movl	%eax, 176(%rsp)
	.align 4,0x90
L353:
	movq	120(%rsp), %rbx
	cmpl	%ebx, 164(%rsp)
	je	L282
	movl	176(%rsp), %eax
	movq	152(%rsp), %rsi
	addl	%ebx, %eax
	cltq
	salq	$2, %rax
	leaq	(%rsi,%rax), %rbx
	movl	(%rbx), %edx
	movq	%rbx, 136(%rsp)
	testl	$2097152, %edx
	jne	L283
	movl	4(%rsi,%rax), %eax
	movl	%edx, %ebx
	andl	$-2097153, %ebx
	movl	%ebx, 160(%rsp)
	andl	$-2097153, %eax
	subl	$1, %eax
	cmpl	%eax, %ebx
	movl	%eax, 56(%rsp)
	jge	L283
	subl	%ebx, %eax
	cmpl	$3, 196(%rsp)
	movl	%eax, 192(%rsp)
	jg	L560
L284:
	movl	160(%rsp), %eax
	movl	$2, %r10d
	movl	$2, 1280(%rsp)
	movl	$1, %r15d
	movl	$0, 180(%rsp)
	movl	%eax, 480(%rsp)
	movl	56(%rsp), %eax
	movl	%eax, 880(%rsp)
	movq	%r11, %rax
	movl	%r10d, %r11d
	movq	%rax, %r10
	movl	56(%rsp), %eax
L285:
	subl	160(%rsp), %eax
	cmpl	$19, %eax
	jle	L422
	cmpl	$14, %r11d
	jle	L287
L422:
	addl	$1, %eax
	cmpl	$1, %eax
	jle	L289
	cmpl	$4, %eax
	jle	L397
	cmpl	$13, %eax
	jle	L398
	cmpl	$40, %eax
	jle	L399
	cmpl	$121, %eax
	jle	L400
	cmpl	$364, %eax
	jle	L401
	cmpl	$1093, %eax
	jle	L402
	cmpl	$3280, %eax
	jle	L403
	cmpl	$9841, %eax
	jle	L404
	cmpl	$29524, %eax
	jle	L405
	cmpl	$88573, %eax
	jle	L406
	cmpl	$265720, %eax
	jle	L407
	cmpl	$797161, %eax
	setg	%al
	movzbl	%al, %eax
	addl	$11, %eax
L290:
	movslq	%eax, %rbx
	leaq	-1(%rbx), %rax
	movq	%rbx, 128(%rsp)
	subq	%rbx, %rax
	movq	%rax, 168(%rsp)
L316:
	movq	128(%rsp), %rbx
	leaq	_incs(%rip), %rax
	movl	(%rax,%rbx,4), %r15d
	movl	160(%rsp), %eax
	leal	(%r15,%rax), %ebx
	cmpl	56(%rsp), %ebx
	movl	%ebx, 8(%rsp)
	jg	L291
	movslq	%ebx, %rax
	movslq	%r15d, %rcx
	movl	%ebx, 48(%rsp)
	movl	%r11d, %r12d
	movq	144(%rsp), %rdx
	movq	%rcx, 24(%rsp)
	movl	%r15d, %r11d
	movq	%r10, %rbx
	leaq	0(,%rcx,4), %rsi
	movq	%rsi, 16(%rsp)
	leaq	(%rdx,%rax,4), %rax
	movq	%rax, 40(%rsp)
	movl	%r15d, %eax
	negl	%eax
	cltq
	leaq	0(,%rax,4), %r14
	movq	%rcx, %rax
	negq	%rax
	salq	$2, %rax
	movq	%rax, 64(%rsp)
	addq	$4, %rax
	movq	%rax, 96(%rsp)
	.align 4,0x90
L292:
	movq	40(%rsp), %r15
	movq	64(%rsp), %rbp
	movl	48(%rsp), %r13d
	movl	(%r15), %esi
	addq	%r15, %rbp
	leal	(%rsi,%r12), %r10d
	movl	%esi, 80(%rsp)
	movq	%r10, %rcx
	movl	%r10d, 60(%rsp)
	addq	%rbx, %r10
	leal	1(%rcx), %eax
	movl	%eax, 52(%rsp)
	jmp	L293
	.align 4,0x90
L554:
	seta	%al
	movq	%r15, %rdx
	testb	%al, %al
	je	L294
L299:
	movl	0(%rbp), %eax
	addq	%r14, %rbp
	cmpl	%r13d, 8(%rsp)
	movl	%eax, (%r15)
	leaq	(%rdx,%r14), %r15
	jg	L409
L293:
	movl	0(%rbp), %edi
	subl	%r11d, %r13d
	movq	%rbp, 32(%rsp)
	movzbl	(%r10), %ecx
	addl	%r12d, %edi
	movl	%edi, %eax
	cmpb	%cl, (%rbx,%rax)
	jne	L554
	movl	52(%rsp), %edx
	leal	1(%rdi), %eax
	movzbl	(%rbx,%rdx), %esi
	cmpb	%sil, (%rbx,%rax)
	jne	L554
	movl	60(%rsp), %esi
	leal	2(%rdi), %eax
	leal	2(%rsi), %edx
	movzbl	(%rbx,%rdx), %ecx
	cmpb	%cl, (%rbx,%rax)
	jne	L554
	movq	72(%rsp), %r9
	movq	%rbx, %rdx
	movq	%r10, 112(%rsp)
	movl	84(%rsp), %r8d
	movl	%r11d, 104(%rsp)
	movq	88(%rsp), %rcx
	call	_mainGtU.part.0
	movq	112(%rsp), %r10
	movq	%r15, %rdx
	testb	%al, %al
	movl	104(%rsp), %r11d
	jne	L299
	.align 4,0x90
L294:
	movl	80(%rsp), %eax
	movl	%eax, (%rdx)
	movl	48(%rsp), %eax
	leal	1(%rax), %r13d
	cmpl	%r13d, 56(%rsp)
	jl	L548
	movq	40(%rsp), %rdx
	movq	96(%rsp), %rbp
	movl	4(%rdx), %eax
	addq	%rdx, %rbp
	leal	(%rax,%r12), %r15d
	movl	%eax, 60(%rsp)
	movq	%r15, %rax
	movl	%r15d, 52(%rsp)
	addq	%rbx, %r15
	addl	$1, %eax
	movl	%eax, 32(%rsp)
	jmp	L300
	.align 4,0x90
L556:
	movq	16(%rsp), %rcx
	seta	%al
	testb	%al, %al
	leaq	0(%rbp,%rcx), %rdx
	je	L301
L306:
	movl	0(%rbp), %eax
	movq	24(%rsp), %rsi
	movl	%eax, 0(%rbp,%rsi,4)
	addq	%r14, %rbp
	cmpl	%r13d, 8(%rsp)
	jg	L410
L300:
	movl	0(%rbp), %edi
	subl	%r11d, %r13d
	movq	%rbp, %r10
	movzbl	(%r15), %esi
	addl	%r12d, %edi
	movl	%edi, %eax
	cmpb	%sil, (%rbx,%rax)
	jne	L556
	movl	32(%rsp), %edx
	leal	1(%rdi), %eax
	movzbl	(%rbx,%rdx), %ecx
	cmpb	%cl, (%rbx,%rax)
	jne	L556
	movl	52(%rsp), %esi
	leal	2(%rdi), %eax
	leal	2(%rsi), %edx
	movzbl	(%rbx,%rdx), %ecx
	cmpb	%cl, (%rbx,%rax)
	jne	L556
	movq	88(%rsp), %rcx
	movq	%rbx, %rdx
	movl	%r11d, 80(%rsp)
	movq	72(%rsp), %r9
	movq	%rbp, 104(%rsp)
	movl	84(%rsp), %r8d
	call	_mainGtU.part.0
	movq	16(%rsp), %rcx
	testb	%al, %al
	movq	104(%rsp), %r10
	movl	80(%rsp), %r11d
	leaq	0(%rbp,%rcx), %rdx
	jne	L306
	.align 4,0x90
L301:
	movl	60(%rsp), %eax
	movl	%eax, (%rdx)
	movl	48(%rsp), %eax
	leal	2(%rax), %r13d
	cmpl	%r13d, 56(%rsp)
	jl	L548
	movq	40(%rsp), %rdx
	movq	64(%rsp), %rsi
	movl	8(%rdx), %eax
	leaq	8(%rdx,%rsi), %rbp
	leal	(%rax,%r12), %r15d
	movl	%eax, 60(%rsp)
	movq	%r15, %rax
	movl	%r15d, 52(%rsp)
	addq	%rbx, %r15
	addl	$1, %eax
	movl	%eax, 32(%rsp)
	jmp	L307
	.align 4,0x90
L558:
	movq	16(%rsp), %rcx
	seta	%al
	testb	%al, %al
	leaq	0(%rbp,%rcx), %rdx
	je	L308
L313:
	movl	0(%rbp), %eax
	movq	24(%rsp), %rcx
	movl	%eax, 0(%rbp,%rcx,4)
	addq	%r14, %rbp
	cmpl	%r13d, 8(%rsp)
	jg	L411
L307:
	movl	0(%rbp), %edi
	subl	%r11d, %r13d
	movq	%rbp, %r10
	movzbl	(%r15), %esi
	addl	%r12d, %edi
	movl	%edi, %eax
	cmpb	%sil, (%rbx,%rax)
	jne	L558
	movl	32(%rsp), %edx
	leal	1(%rdi), %eax
	movzbl	(%rbx,%rdx), %edx
	cmpb	%dl, (%rbx,%rax)
	jne	L558
	movl	52(%rsp), %ecx
	leal	2(%rdi), %eax
	leal	2(%rcx), %edx
	movzbl	(%rbx,%rdx), %esi
	cmpb	%sil, (%rbx,%rax)
	jne	L558
	movl	%ecx, %esi
	movq	72(%rsp), %r9
	movq	%rbx, %rdx
	movl	%r11d, 80(%rsp)
	movq	88(%rsp), %rcx
	movq	%rbp, 104(%rsp)
	movl	84(%rsp), %r8d
	call	_mainGtU.part.0
	movq	16(%rsp), %rcx
	testb	%al, %al
	movq	104(%rsp), %r10
	movl	80(%rsp), %r11d
	leaq	0(%rbp,%rcx), %rdx
	jne	L313
	.align 4,0x90
L308:
	movl	60(%rsp), %eax
	addl	$3, 48(%rsp)
	movl	%eax, (%rdx)
	movq	72(%rsp), %rax
	movl	(%rax), %esi
	testl	%esi, %esi
	js	L260
	addq	$12, 40(%rsp)
	movl	56(%rsp), %edx
	cmpl	%edx, 48(%rsp)
	jle	L292
L548:
	movl	%r12d, %r11d
	movq	%rbx, %r10
L291:
	subq	$1, 128(%rsp)
	movq	128(%rsp), %rax
	cmpq	168(%rsp), %rax
	jne	L316
L289:
	movq	72(%rsp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	js	L260
	movl	180(%rsp), %edx
	testl	%edx, %edx
	jne	L420
	movl	200(%rsp), %eax
	movq	%r10, %r11
	movl	192(%rsp), %ebx
	leal	1(%rax,%rbx), %eax
	movl	%eax, 200(%rsp)
	movq	72(%rsp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	L260
	movq	136(%rsp), %rax
	movl	(%rax), %edx
	.align 4,0x90
L283:
	movq	136(%rsp), %rax
	orl	$2097152, %edx
	movl	%edx, (%rax)
L282:
	addq	$1, 120(%rsp)
	movq	120(%rsp), %rax
	cmpq	$256, %rax
	jne	L353
	movslq	164(%rsp), %rbp
	cmpb	$0, 224(%rsp,%rbp)
	je	L354
	movl	$1006, %edi
	movq	%r11, 8(%rsp)
	call	_BZ2_bz__AssertH__fail
	movq	8(%rsp), %r11
L354:
	movq	152(%rsp), %rax
	leaq	0(,%rbp,4), %r14
	xorl	%edx, %edx
	leaq	2704(%rsp), %rdi
	leaq	3728(%rsp), %rsi
	leaq	(%rax,%r14), %rbx
	movq	%rbx, %rcx
	.align 4,0x90
L355:
	movl	(%rcx), %eax
	addq	$1024, %rcx
	andl	$-2097153, %eax
	movl	%eax, (%rdi,%rdx)
	movl	-1020(%rcx), %eax
	andl	$-2097153, %eax
	subl	$1, %eax
	movl	%eax, (%rsi,%rdx)
	addq	$4, %rdx
	cmpq	$1024, %rdx
	jne	L355
	movq	152(%rsp), %rcx
	movslq	176(%rsp), %rax
	leaq	(%rcx,%rax,4), %r12
	movl	2704(%rsp,%rbp,4), %ecx
	movl	(%r12), %edx
	andl	$-2097153, %edx
	cmpl	%ecx, %edx
	jge	L356
	movq	144(%rsp), %rcx
	leal	1(%rdx), %eax
	movslq	%edx, %rdx
	cltq
	subq	%rax, %rdx
	leaq	(%rcx,%rdx,4), %r8
L357:
	movl	(%r8,%rax,4), %ecx
	leal	-1(%rcx), %edx
	movl	84(%rsp), %ecx
	addl	%edx, %ecx
	testl	%edx, %edx
	cmovs	%ecx, %edx
	movslq	%edx, %rcx
	movzbl	(%r11,%rcx), %esi
	cmpb	$0, 224(%rsp,%rsi)
	jne	L359
	movslq	2704(%rsp,%rsi,4), %rcx
	leal	1(%rcx), %edi
	movl	%edi, 2704(%rsp,%rsi,4)
	movq	144(%rsp), %rsi
	movl	%edx, (%rsi,%rcx,4)
	movl	2704(%rsp,%rbp,4), %ecx
	movl	%eax, %edx
	addq	$1, %rax
	cmpl	%ecx, %edx
	jl	L357
L356:
	movl	164(%rsp), %eax
	movq	152(%rsp), %rdx
	addl	$1, %eax
	sall	$8, %eax
	cltq
	leaq	(%rdx,%rax,4), %r13
	movl	3728(%rsp,%rbp,4), %edx
	movl	0(%r13), %eax
	andl	$-2097153, %eax
	leal	-1(%rax), %esi
	cmpl	%edx, %esi
	jle	L361
	movslq	%esi, %rdx
	movq	144(%rsp), %rsi
	subl	$2, %eax
	cltq
	subq	%rax, %rdx
	leaq	(%rsi,%rdx,4), %r9
L362:
	movl	(%r9,%rax,4), %edx
	movl	84(%rsp), %esi
	subl	$1, %edx
	addl	%edx, %esi
	testl	%edx, %edx
	cmovs	%esi, %edx
	movslq	%edx, %rsi
	movzbl	(%r11,%rsi), %edi
	cmpb	$0, 224(%rsp,%rdi)
	jne	L364
	movslq	3728(%rsp,%rdi,4), %rsi
	leal	-1(%rsi), %r8d
	movl	%r8d, 3728(%rsp,%rdi,4)
	movq	144(%rsp), %rdi
	movl	%edx, (%rdi,%rsi,4)
L364:
	movl	3728(%rsp,%rbp,4), %edx
	movl	%eax, %esi
	subq	$1, %rax
	cmpl	%esi, %edx
	jl	L362
L361:
	leal	-1(%rcx), %eax
	cmpl	%edx, %eax
	je	L366
	testl	%ecx, %ecx
	jne	L423
	cmpl	%edx, 204(%rsp)
	je	L366
L423:
	movl	$1007, %edi
	movq	%r11, 8(%rsp)
	call	_BZ2_bz__AssertH__fail
	movq	8(%rsp), %r11
L366:
	movq	152(%rsp), %rax
	leaq	262144(%rax,%r14), %rax
	.align 4,0x90
L368:
	orl	$2097152, (%rbx)
	addq	$1024, %rbx
	cmpq	%rax, %rbx
	jne	L368
	movq	208(%rsp), %rbx
	movb	$1, 224(%rsp,%rbp)
	cmpq	%rbx, 184(%rsp)
	je	L369
	movl	(%r12), %edx
	xorl	%ecx, %ecx
	movl	0(%r13), %eax
	andl	$-2097153, %edx
	andl	$-2097153, %eax
	subl	%edx, %eax
	cmpl	$65534, %eax
	jle	L370
L371:
	addl	$1, %ecx
	movl	%eax, %esi
	sarl	%cl, %esi
	cmpl	$65534, %esi
	jg	L371
L370:
	subl	$1, %eax
	js	L372
	movslq	%eax, %rsi
	movl	%eax, %edi
	movq	88(%rsp), %r10
	movslq	%edx, %rdx
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movq	%rbx, %rdi
	movq	144(%rsp), %rbx
	subq	$1, %rdi
	leaq	(%rbx,%rdx,4), %r8
L374:
	movslq	(%r8,%rsi,4), %rbx
	movl	%esi, %r9d
	sarl	%cl, %r9d
	cmpl	$33, %ebx
	movq	%rbx, %rdx
	movw	%r9w, (%r10,%rbx,2)
	jg	L373
	addl	84(%rsp), %edx
	movslq	%edx, %rdx
	movw	%r9w, (%r10,%rdx,2)
L373:
	subq	$1, %rsi
	cmpq	%rdi, %rsi
	jne	L374
L372:
	sarl	%cl, %eax
	cmpl	$65535, %eax
	jle	L375
	movl	$1002, %edi
	movq	%r11, 8(%rsp)
	call	_BZ2_bz__AssertH__fail
	movq	8(%rsp), %r11
L375:
	addq	$4, 184(%rsp)
	movq	184(%rsp), %rax
	cmpq	216(%rsp), %rax
	jne	L376
L369:
	cmpl	$3, 196(%rsp)
	jle	L260
	movl	84(%rsp), %edx
	leaq	lC8(%rip), %rsi
	movl	200(%rsp), %eax
	movl	%edx, %r8d
	subl	%eax, %r8d
	movl	%eax, %ecx
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	addq	$4760, %rsp
LCFI33:
	xorl	%eax, %eax
	popq	%rbx
LCFI34:
	popq	%rbp
LCFI35:
	popq	%r12
LCFI36:
	popq	%r13
LCFI37:
	popq	%r14
LCFI38:
	popq	%r15
LCFI39:
	jmp	_fprintf
	.align 4,0x90
L409:
LCFI40:
	movq	32(%rsp), %rdx
	jmp	L294
	.align 4,0x90
L410:
	movq	%r10, %rdx
	jmp	L301
	.align 4,0x90
L411:
	movq	%r10, %rdx
	jmp	L308
L287:
	movl	160(%rsp), %esi
	movl	%r11d, %edx
	movl	56(%rsp), %edi
	movq	144(%rsp), %rbx
	movl	%esi, %eax
	addl	%edi, %eax
	sarl	%eax
	cltq
	addl	(%rbx,%rax,4), %edx
	movslq	%edi, %rax
	movzbl	(%r10,%rdx), %ecx
	movl	%r11d, %edx
	addl	(%rbx,%rax,4), %edx
	movslq	%esi, %rax
	movq	%rax, 24(%rsp)
	salq	$2, %rax
	addq	%rax, %rbx
	movq	%rax, 32(%rsp)
	movl	%r11d, %eax
	addl	(%rbx), %eax
	movq	%rbx, %r12
	movzbl	(%r10,%rdx), %edx
	movzbl	(%r10,%rax), %eax
	cmpb	%al, %dl
	movzbl	%al, %r8d
	jb	L318
	movzbl	%dl, %r8d
	movl	%eax, %edx
L318:
	cmpb	%r8b, %cl
	jnb	L319
	cmpb	%dl, %cl
	cmovnb	%ecx, %edx
	movzbl	%dl, %r8d
L319:
	movl	160(%rsp), %ebx
	movl	56(%rsp), %ecx
	cmpl	%ecx, %ebx
	jg	L320
	leal	1(%rbx), %edx
	subl	%r8d, %eax
	movq	%r12, %r13
	movq	%r12, 8(%rsp)
	movl	%edx, %r14d
	cmpl	$0, %eax
	movq	%r12, %rbp
	movl	%edx, 48(%rsp)
	movl	%ecx, %r9d
	movl	%ecx, %edx
	movq	144(%rsp), %r12
	leal	-1(%r14), %edi
	movl	0(%r13), %ecx
	je	L561
L323:
	jle	L559
	cmpl	%edi, %edx
	jl	L551
	movslq	%edx, %rax
	movq	%r13, 16(%rsp)
	leaq	(%r12,%rax,4), %rax
	jmp	L326
	.align 4,0x90
L327:
	js	L562
	subq	$4, %rax
	cmpl	%edi, %edx
	jl	L551
L326:
	movl	(%rax), %ecx
	subl	$1, %edx
	leal	(%r11,%rcx), %esi
	movzbl	(%r10,%rsi), %esi
	cmpl	%r8d, %esi
	jne	L327
	movslq	%r9d, %rsi
	subq	$4, %rax
	subl	$1, %r9d
	leaq	(%r12,%rsi,4), %rsi
	movl	(%rsi), %r13d
	movl	%r13d, 4(%rax)
	cmpl	%edi, %edx
	movl	%ecx, (%rsi)
	jge	L326
	.align 4,0x90
L551:
	cmpl	%r9d, %ebx
	movq	8(%rsp), %r12
	jg	L320
	movl	%ebx, %r8d
	subl	160(%rsp), %r8d
	movl	%edi, %eax
	movl	%edi, %r14d
	subl	%ebx, %eax
	cmpl	%r8d, %eax
	movl	%r8d, %r13d
	cmovle	%eax, %r13d
	subl	%r13d, %r14d
	testl	%r13d, %r13d
	jle	L331
	movslq	%r14d, %rsi
	movl	%r14d, 8(%rsp)
	movq	32(%rsp), %r14
	leaq	16(,%rsi,4), %rax
	movl	%r13d, 16(%rsp)
	leaq	0(,%rsi,4), %rcx
	cmpq	%rax, %r14
	movq	%r14, %rax
	setge	%r8b
	addq	$16, %rax
	cmpq	%rax, %rcx
	setge	%al
	orb	%al, %r8b
	je	L332
	cmpl	$8, %r13d
	jbe	L332
	leal	-1(%r13), %r14d
	movq	%r12, %rax
	movl	160(%rsp), %ebp
	shrq	$2, %rax
	negq	%rax
	movl	%eax, %r8d
	andl	$3, %r8d
	je	L333
	movq	144(%rsp), %rax
	movl	(%r12), %ebp
	addq	%rcx, %rax
	cmpl	$1, %r8d
	movl	(%rax), %ecx
	movl	%ecx, (%r12)
	movl	%ebp, (%rax)
	movl	8(%rsp), %eax
	movl	48(%rsp), %ebp
	leal	1(%rax), %r12d
	je	L414
	movq	144(%rsp), %r14
	movslq	%ebp, %rax
	cmpl	$3, %r8d
	leaq	(%r14,%rax,4), %rcx
	movslq	%r12d, %rax
	leaq	(%r14,%rax,4), %rax
	movl	(%rcx), %ebp
	movl	(%rax), %r12d
	movl	8(%rsp), %r14d
	movl	%r12d, (%rcx)
	movl	160(%rsp), %ecx
	movl	%ebp, (%rax)
	leal	2(%r14), %r12d
	leal	-2(%r13), %eax
	leal	2(%rcx), %ebp
	jne	L415
	movq	144(%rsp), %rcx
	movslq	%ebp, %rax
	addl	$3, %r14d
	subl	$3, %r13d
	movl	%r14d, 8(%rsp)
	leaq	(%rcx,%rax,4), %rcx
	movslq	%r12d, %rax
	movq	144(%rsp), %r12
	movl	(%rcx), %ebp
	leaq	(%r12,%rax,4), %rax
	movl	(%rax), %r12d
	movl	%r12d, (%rcx)
	movl	160(%rsp), %ecx
	movl	%ebp, (%rax)
	leal	3(%rcx), %ebp
L333:
	movl	16(%rsp), %r14d
	movl	%r8d, %ecx
	movq	24(%rsp), %rax
	subl	%r8d, %r14d
	movq	144(%rsp), %r8
	addq	%rcx, %rax
	movl	%r14d, %r12d
	shrl	$2, %r12d
	leaq	(%r8,%rax,4), %r8
	leaq	(%rcx,%rsi), %rax
	movq	144(%rsp), %rcx
	leaq	(%rcx,%rax,4), %rsi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
L335:
	movdqa	(%r8,%rax), %xmm0
	addl	$1, %ecx
	movdqu	(%rsi,%rax), %xmm1
	movaps	%xmm1, (%r8,%rax)
	movups	%xmm0, (%rsi,%rax)
	addq	$16, %rax
	cmpl	%ecx, %r12d
	ja	L335
	movl	8(%rsp), %r12d
	movl	%r14d, %eax
	andl	$-4, %eax
	addl	%eax, %ebp
	subl	%eax, %r13d
	addl	%eax, %r12d
	cmpl	%r14d, %eax
	je	L331
	movq	144(%rsp), %r14
	movslq	%ebp, %rax
	cmpl	$1, %r13d
	leaq	(%r14,%rax,4), %rcx
	movslq	%r12d, %rax
	leaq	(%r14,%rax,4), %rax
	movl	(%rcx), %esi
	movl	(%rax), %r8d
	movl	%r8d, (%rcx)
	leal	1(%r12), %r8d
	movl	%esi, (%rax)
	leal	1(%rbp), %eax
	je	L331
	cltq
	cmpl	$2, %r13d
	leaq	(%r14,%rax,4), %rcx
	movslq	%r8d, %rax
	leaq	(%r14,%rax,4), %rax
	movl	(%rcx), %esi
	movl	(%rax), %r8d
	movl	%r8d, (%rcx)
	leal	2(%r12), %r8d
	movl	%esi, (%rax)
	leal	2(%rbp), %eax
	je	L331
	cltq
	cmpl	$3, %r13d
	leaq	(%r14,%rax,4), %rcx
	movslq	%r8d, %rax
	leaq	(%r14,%rax,4), %rax
	movl	(%rcx), %esi
	movl	(%rax), %r8d
	movl	%r8d, (%rcx)
	leal	3(%r12), %r8d
	movl	%esi, (%rax)
	leal	3(%rbp), %eax
	je	L331
	cltq
	cmpl	$4, %r13d
	leaq	(%r14,%rax,4), %rcx
	movslq	%r8d, %rax
	leaq	(%r14,%rax,4), %rax
	movl	(%rcx), %esi
	movl	(%rax), %r8d
	movl	%r8d, (%rcx)
	leal	4(%r12), %r8d
	movl	%esi, (%rax)
	leal	4(%rbp), %eax
	je	L331
	cltq
	addl	$5, %ebp
	cmpl	$5, %r13d
	leaq	(%r14,%rax,4), %rcx
	movslq	%r8d, %rax
	leaq	(%r14,%rax,4), %rax
	movl	(%rcx), %esi
	movl	(%rax), %r8d
	movl	%r8d, (%rcx)
	movl	%esi, (%rax)
	leal	5(%r12), %eax
	je	L331
	movslq	%ebp, %rbp
	cltq
	leaq	(%r14,%rbp,4), %rcx
	leaq	(%r14,%rax,4), %rax
	movl	(%rcx), %esi
	movl	(%rax), %r8d
	movl	%r8d, (%rcx)
	movl	%esi, (%rax)
L331:
	movl	56(%rsp), %ecx
	movl	%r9d, %eax
	subl	%edx, %eax
	movl	%eax, 8(%rsp)
	movl	%ecx, %r8d
	subl	%r9d, %r8d
	cmpl	%eax, %r8d
	cmovg	%eax, %r8d
	subl	%r8d, %ecx
	testl	%r8d, %r8d
	leal	1(%rcx), %r9d
	jle	L339
	movslq	%ecx, %rax
	movslq	%edi, %rbp
	movl	%r8d, %r12d
	leaq	0(,%rbp,4), %rsi
	movq	%rax, %r13
	leaq	1(%rax), %rax
	leaq	0(,%rax,4), %rdx
	movq	%rax, 16(%rsp)
	leaq	16(%rsi), %rax
	cmpq	%rax, %rdx
	leaq	20(,%r13,4), %rax
	setge	%dl
	cmpq	%rax, %rsi
	setge	%al
	orb	%al, %dl
	je	L340
	cmpl	$8, %r8d
	jbe	L340
	movq	144(%rsp), %rdx
	leal	-1(%r8), %r13d
	movl	%edi, %r14d
	addq	%rsi, %rdx
	movq	%rdx, %rax
	shrq	$2, %rax
	negq	%rax
	movl	%eax, %esi
	andl	$3, %esi
	je	L341
	movq	144(%rsp), %rax
	movslq	%r9d, %r9
	cmpl	$1, %esi
	movl	(%rdx), %r14d
	leaq	(%rax,%r9,4), %rax
	movl	(%rax), %r9d
	movl	%r9d, (%rdx)
	leal	2(%rcx), %r9d
	movl	%r14d, (%rax)
	leal	1(%rdi), %r14d
	je	L417
	movq	144(%rsp), %rdx
	movslq	%r14d, %rax
	movslq	%r9d, %r9
	cmpl	$3, %esi
	leal	2(%rdi), %r14d
	leaq	(%rdx,%rax,4), %rax
	leaq	(%rdx,%r9,4), %rdx
	movl	(%rax), %r13d
	movl	(%rdx), %r9d
	movl	%r9d, (%rax)
	leal	3(%rcx), %r9d
	movl	%r13d, (%rdx)
	leal	-2(%r8), %eax
	jne	L418
	movq	144(%rsp), %rdx
	movslq	%r14d, %rax
	movslq	%r9d, %r9
	subl	$3, %r8d
	leal	3(%rdi), %r14d
	leaq	(%rdx,%rax,4), %rax
	leaq	(%rdx,%r9,4), %rdx
	movl	(%rax), %r13d
	movl	(%rdx), %r9d
	movl	%r9d, (%rax)
	leal	4(%rcx), %r9d
	movl	%r13d, (%rdx)
L341:
	movq	144(%rsp), %rcx
	movl	%esi, %edx
	subl	%esi, %r12d
	leaq	(%rdx,%rbp), %rax
	movl	%r12d, %r13d
	shrl	$2, %r13d
	leaq	(%rcx,%rax,4), %rsi
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	xorl	%edx, %edx
	leaq	(%rcx,%rax,4), %rcx
	xorl	%eax, %eax
L343:
	movdqa	(%rsi,%rax), %xmm0
	addl	$1, %edx
	movdqu	(%rcx,%rax), %xmm1
	movaps	%xmm1, (%rsi,%rax)
	movups	%xmm0, (%rcx,%rax)
	addq	$16, %rax
	cmpl	%edx, %r13d
	ja	L343
	movl	%r12d, %eax
	andl	$-4, %eax
	leal	(%rax,%r14), %ebp
	addl	%eax, %r9d
	subl	%eax, %r8d
	cmpl	%r12d, %eax
	je	L339
	movq	144(%rsp), %r14
	movslq	%ebp, %rax
	cmpl	$1, %r8d
	leaq	(%r14,%rax,4), %rdx
	movslq	%r9d, %rax
	leaq	(%r14,%rax,4), %rax
	movl	(%rdx), %ecx
	movl	(%rax), %esi
	movl	%esi, (%rdx)
	leal	1(%r9), %esi
	movl	%ecx, (%rax)
	leal	1(%rbp), %eax
	je	L339
	cltq
	cmpl	$2, %r8d
	leaq	(%r14,%rax,4), %rdx
	movslq	%esi, %rax
	leaq	(%r14,%rax,4), %rax
	movl	(%rdx), %ecx
	movl	(%rax), %esi
	movl	%esi, (%rdx)
	leal	2(%r9), %esi
	movl	%ecx, (%rax)
	leal	2(%rbp), %eax
	je	L339
	cltq
	cmpl	$3, %r8d
	leaq	(%r14,%rax,4), %rdx
	movslq	%esi, %rax
	leaq	(%r14,%rax,4), %rax
	movl	(%rdx), %ecx
	movl	(%rax), %esi
	movl	%esi, (%rdx)
	leal	3(%r9), %esi
	movl	%ecx, (%rax)
	leal	3(%rbp), %eax
	je	L339
	cltq
	cmpl	$4, %r8d
	leaq	(%r14,%rax,4), %rdx
	movslq	%esi, %rax
	leaq	(%r14,%rax,4), %rax
	movl	(%rdx), %ecx
	movl	(%rax), %esi
	movl	%esi, (%rdx)
	leal	4(%r9), %esi
	movl	%ecx, (%rax)
	leal	4(%rbp), %eax
	je	L339
	cltq
	addl	$5, %r9d
	cmpl	$5, %r8d
	leaq	(%r14,%rax,4), %rdx
	movslq	%esi, %rax
	leaq	(%r14,%rax,4), %rax
	movl	(%rdx), %ecx
	movl	(%rax), %esi
	movl	%esi, (%rdx)
	movl	%ecx, (%rax)
	leal	5(%rbp), %eax
	je	L339
	cltq
	movslq	%r9d, %r9
	leaq	(%r14,%rax,4), %rax
	leaq	(%r14,%r9,4), %rcx
	movl	(%rax), %edx
	movl	(%rcx), %esi
	movl	%esi, (%rax)
	movl	%edx, (%rcx)
L339:
	movl	160(%rsp), %r14d
	movl	56(%rsp), %r9d
	leal	(%rdi,%r14), %edx
	movl	%r9d, %edi
	subl	8(%rsp), %edi
	subl	%ebx, %edx
	movl	%r9d, %esi
	leal	-1(%rdx), %ecx
	leal	1(%r11), %ebx
	movl	%ecx, %ebp
	leal	1(%rdi), %eax
	subl	%r14d, %ebp
	subl	%eax, %esi
	cmpl	%esi, %ebp
	jge	L347
	movl	%esi, %r8d
	movl	%ebp, %esi
	movl	%eax, 160(%rsp)
	movl	%r14d, %eax
	movl	%r8d, %ebp
	movl	%ecx, %r8d
	movl	%r9d, %ecx
	movl	%r8d, 56(%rsp)
L347:
	movl	%edi, %r8d
	movl	%r11d, %r9d
	subl	%edx, %r8d
	cmpl	%esi, %r8d
	jle	L348
	movl	%r8d, %esi
	movl	56(%rsp), %r8d
	movl	%edi, 56(%rsp)
	movl	%ebx, %r9d
	movl	%r11d, %ebx
	movl	%r8d, %edi
	movl	%eax, %r8d
	movl	%edx, %eax
	movl	%r8d, %edx
L348:
	cmpl	%esi, %ebp
	jl	L349
	movl	%r9d, %esi
	movl	%r11d, %r9d
	movl	%esi, %r11d
	movl	56(%rsp), %esi
	movl	%ecx, 56(%rsp)
	movl	%esi, %ecx
	movl	%eax, %esi
	movl	160(%rsp), %eax
	movl	%esi, 160(%rsp)
L349:
	movslq	180(%rsp), %rsi
	movl	%eax, 480(%rsp,%rsi,4)
	movl	56(%rsp), %eax
	movl	%r9d, 1280(%rsp,%rsi,4)
	movl	%eax, 880(%rsp,%rsi,4)
	movl	160(%rsp), %esi
	movslq	%r15d, %rax
	movl	%ecx, 880(%rsp,%rax,4)
	movl	%r11d, 1280(%rsp,%rax,4)
	movl	%esi, 480(%rsp,%rax,4)
	leal	1(%r15), %eax
	addl	$2, %r15d
	cltq
	movl	%edx, 480(%rsp,%rax,4)
	movl	%edi, 880(%rsp,%rax,4)
	movl	%ebx, 1280(%rsp,%rax,4)
	leal	-1(%r15), %eax
	movl	%eax, 180(%rsp)
L350:
	cmpl	$99, %r15d
	jle	L286
	movl	$1001, %edi
	movq	%r10, 8(%rsp)
	call	_BZ2_bz__AssertH__fail
	movq	8(%rsp), %r10
L286:
	movslq	180(%rsp), %rax
	movl	480(%rsp,%rax,4), %ebx
	movl	1280(%rsp,%rax,4), %r11d
	movl	%ebx, 160(%rsp)
	movl	880(%rsp,%rax,4), %ebx
	movl	%ebx, 56(%rsp)
	movl	%ebx, %eax
	jmp	L285
L562:
	movq	16(%rsp), %r13
	movl	0(%r13), %esi
	movl	%ecx, 0(%r13)
	movl	%esi, (%rax)
L559:
	movslq	%r14d, %rdi
L324:
	addq	$4, %r13
	addl	$1, %r14d
	cmpl	%edi, %edx
	jl	L551
	movl	%r11d, %eax
	addl	(%r12,%rdi,4), %eax
	movl	0(%r13), %ecx
	leal	-1(%r14), %edi
	movzbl	(%r10,%rax), %eax
	subl	%r8d, %eax
	cmpl	$0, %eax
	jne	L323
L561:
	movslq	%ebx, %rax
	movslq	%r14d, %rdi
	addl	$1, %ebx
	leaq	(%r12,%rax,4), %rax
	movl	(%rax), %esi
	movl	%esi, 0(%r13)
	movl	%ecx, (%rax)
	jmp	L324
L320:
	movslq	180(%rsp), %rax
	leal	1(%r11), %edx
	movl	%edx, 1280(%rsp,%rax,4)
	jmp	L350
L560:
	leal	1(%rax), %r9d
	movl	120(%rsp), %ecx
	movq	%r11, 8(%rsp)
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC7(%rip), %rsi
	movl	200(%rsp), %r8d
	movl	164(%rsp), %edx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	movq	8(%rsp), %r11
	jmp	L284
L397:
	xorl	%eax, %eax
	jmp	L290
L359:
	movl	2704(%rsp,%rbp,4), %ecx
	movl	%eax, %edx
	addq	$1, %rax
	cmpl	%edx, %ecx
	jg	L357
	jmp	L356
L398:
	movl	$1, %eax
	jmp	L290
L399:
	movl	$2, %eax
	jmp	L290
L401:
	movl	$4, %eax
	jmp	L290
L400:
	movl	$3, %eax
	jmp	L290
L260:
	addq	$4760, %rsp
LCFI41:
	popq	%rbx
LCFI42:
	popq	%rbp
LCFI43:
	popq	%r12
LCFI44:
	popq	%r13
LCFI45:
	popq	%r14
LCFI46:
	popq	%r15
LCFI47:
	ret
L402:
LCFI48:
	movl	$5, %eax
	jmp	L290
L403:
	movl	$6, %eax
	jmp	L290
L404:
	movl	$7, %eax
	jmp	L290
L340:
	movq	144(%rsp), %rcx
	leal	-1(%r8), %eax
	addq	%rbp, %rax
	addq	%rcx, %rsi
	leaq	4(%rcx,%rax,4), %rcx
	movslq	%r9d, %rax
	subq	%rbp, %rax
L345:
	movl	(%rsi), %edx
	movl	(%rsi,%rax,4), %r8d
	movl	%r8d, (%rsi)
	movl	%edx, (%rsi,%rax,4)
	addq	$4, %rsi
	cmpq	%rcx, %rsi
	jne	L345
	jmp	L339
L332:
	movq	24(%rsp), %r8
	leal	-1(%r13), %eax
	movq	144(%rsp), %rcx
	addq	%r8, %rax
	subq	%r8, %rsi
	leaq	4(%rcx,%rax,4), %rcx
L337:
	movl	0(%rbp), %eax
	movl	0(%rbp,%rsi,4), %r8d
	movl	%r8d, 0(%rbp)
	movl	%eax, 0(%rbp,%rsi,4)
	addq	$4, %rbp
	cmpq	%rcx, %rbp
	jne	L337
	jmp	L331
L405:
	movl	$8, %eax
	jmp	L290
L418:
	movl	%eax, %r8d
	jmp	L341
L417:
	movl	%r13d, %r8d
	jmp	L341
L415:
	movl	%eax, %r13d
	movl	%r12d, 8(%rsp)
	jmp	L333
L414:
	movl	%r14d, %r13d
	movl	%r12d, 8(%rsp)
	jmp	L333
L407:
	movl	$10, %eax
	jmp	L290
L406:
	movl	$9, %eax
	jmp	L290
L395:
	movl	%esi, %r8d
	jmp	L273
L379:
	xorl	%eax, %eax
L265:
	movzbl	(%r11,%rax), %esi
	xorl	%edi, %edi
	movb	%sil, (%rdx,%rax)
	movw	%di, (%rcx,%rax,2)
	addq	$1, %rax
	cmpq	$34, %rax
	jne	L265
	jmp	L270
L378:
	movl	%ebx, %edx
	jmp	L262
L394:
	movl	$20, %ecx
	movl	$14, %edx
	jmp	L266
L386:
	movl	$28, %ecx
	movl	$6, %edx
	jmp	L266
L387:
	movl	$27, %ecx
	movl	$7, %edx
	jmp	L266
L388:
	movl	$26, %ecx
	movl	$8, %edx
	jmp	L266
L389:
	movl	$25, %ecx
	movl	$9, %edx
	jmp	L266
L390:
	movl	$24, %ecx
	movl	$10, %edx
	jmp	L266
L391:
	movl	$23, %ecx
	movl	$11, %edx
	jmp	L266
L392:
	movl	$22, %ecx
	movl	$12, %edx
	jmp	L266
L393:
	movl	$21, %ecx
	movl	$13, %edx
	jmp	L266
L382:
	movl	$32, %ecx
	movl	$2, %edx
	jmp	L266
L383:
	movl	$31, %ecx
	movl	$3, %edx
	jmp	L266
L384:
	movl	$30, %ecx
	movl	$4, %edx
	jmp	L266
L385:
	movl	$29, %ecx
	movl	$5, %edx
	jmp	L266
L380:
	movl	$34, %ecx
	xorl	%edx, %edx
	jmp	L266
L381:
	movl	$33, %ecx
	movl	$1, %edx
	jmp	L266
L420:
	movl	180(%rsp), %eax
	movl	%eax, %r15d
	subl	$1, %eax
	movl	%eax, 180(%rsp)
	jmp	L350
LFE38:
	.cstring
	.align 3
lC9:
	.ascii "      %d work, %d block, ratio %5.2f\12\0"
	.align 3
lC10:
	.ascii "    too repetitive; using fallback sorting algorithm\12\0"
	.text
	.align 4,0x90
	.globl _BZ2_blockSort
_BZ2_blockSort:
LFB39:
	pushq	%r15
LCFI49:
	pushq	%r14
LCFI50:
	pushq	%r13
LCFI51:
	pushq	%r12
LCFI52:
	pushq	%rbp
LCFI53:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI54:
	subq	$24, %rsp
LCFI55:
	movl	108(%rdi), %r14d
	movq	56(%rdi), %r12
	movq	40(%rdi), %r13
	movl	656(%rdi), %r15d
	cmpl	$9999, %r14d
	jle	L568
	leal	34(%r14), %ecx
	movl	$1, %edx
	movq	64(%rdi), %rsi
	movl	%r15d, %r9d
	leal	35(%r14), %eax
	testb	$1, %cl
	movl	$-1431655765, %ebx
	cmovne	%eax, %ecx
	cmpl	$100, 88(%rdi)
	movl	$100, %eax
	movl	%r14d, %r8d
	cmovle	88(%rdi), %eax
	movq	%r12, %rdi
	testl	%eax, %eax
	cmovg	%eax, %edx
	subq	$8, %rsp
LCFI56:
	subl	$1, %edx
	movl	%edx, %eax
	mull	%ebx
	shrl	%edx
	movl	%edx, %ebx
	movslq	%ecx, %rdx
	movq	%r13, %rcx
	imull	%r14d, %ebx
	addq	%rsi, %rdx
	movl	%ebx, 20(%rsp)
	leaq	20(%rsp), %rax
	pushq	%rax
LCFI57:
	call	_mainSort
	cmpl	$2, %r15d
	popq	%r9
LCFI58:
	popq	%r10
LCFI59:
	jg	L579
	movl	12(%rsp), %r8d
	testl	%r8d, %r8d
	js	L580
L565:
	movl	108(%rbp), %eax
	movl	$-1, 48(%rbp)
	testl	%eax, %eax
	jle	L574
	movl	(%r12), %edi
	testl	%edi, %edi
	je	L581
	leal	-1(%rax), %edx
	movl	$1, %eax
	addq	$1, %rdx
	jmp	L572
	.align 4,0x90
L573:
	addq	$1, %rax
	movl	-4(%r12,%rax,4), %esi
	testl	%esi, %esi
	je	L582
L572:
	cmpq	%rdx, %rax
	movl	%eax, %ecx
	jne	L573
L574:
	movl	$1003, %edi
	call	_BZ2_bz__AssertH__fail
L563:
	addq	$24, %rsp
LCFI60:
	popq	%rbx
LCFI61:
	popq	%rbp
LCFI62:
	popq	%r12
LCFI63:
	popq	%r13
LCFI64:
	popq	%r14
LCFI65:
	popq	%r15
LCFI66:
	ret
	.align 4,0x90
L580:
LCFI67:
	cmpl	$1, %r15d
	jle	L568
	movq	___stderrp@GOTPCREL(%rip), %rax
	movl	$53, %edx
	movl	$1, %esi
	leaq	lC10(%rip), %rdi
	movq	(%rax), %rcx
	call	_fwrite
	.align 4,0x90
L568:
	movq	32(%rbp), %rsi
	movl	%r15d, %r8d
	movl	%r14d, %ecx
	movq	%r13, %rdx
	movq	24(%rbp), %rdi
	call	_fallbackSort
	jmp	L565
	.align 4,0x90
L579:
	subl	12(%rsp), %ebx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%r14d, %xmm1
	movq	___stderrp@GOTPCREL(%rip), %rax
	movl	%r14d, %ecx
	leaq	lC9(%rip), %rsi
	cvtsi2ss	%ebx, %xmm0
	movl	%ebx, %edx
	movq	(%rax), %rdi
	movl	$1, %eax
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	_fprintf
	movl	12(%rsp), %r8d
	testl	%r8d, %r8d
	jns	L565
	jmp	L580
	.align 4,0x90
L582:
	movl	%ecx, 48(%rbp)
	addq	$24, %rsp
LCFI68:
	popq	%rbx
LCFI69:
	popq	%rbp
LCFI70:
	popq	%r12
LCFI71:
	popq	%r13
LCFI72:
	popq	%r14
LCFI73:
	popq	%r15
LCFI74:
	ret
	.align 4,0x90
L581:
LCFI75:
	movl	$0, 48(%rbp)
	jmp	L563
LFE39:
	.const
	.align 5
_incs:
	.long	1
	.long	4
	.long	13
	.long	40
	.long	121
	.long	364
	.long	1093
	.long	3280
	.long	9841
	.long	29524
	.long	88573
	.long	265720
	.long	797161
	.long	2391484
	.literal16
	.align 4
lC4:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
lC6:
	.long	4
	.long	4
	.long	4
	.long	4
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
	.quad	LFB33-.
	.set L$set$2,LFE33-LFB33
	.quad L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB33
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
	.byte	0xe0,0x17
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
	.byte	0x4
	.set L$set$18,LCFI15-LCFI14
	.long L$set$18
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$19,LCFI16-LCFI15
	.long L$set$19
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$20,LCFI17-LCFI16
	.long L$set$20
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$21,LCFI18-LCFI17
	.long L$set$21
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$22,LCFI19-LCFI18
	.long L$set$22
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$23,LCFI20-LCFI19
	.long L$set$23
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$24,LCFI21-LCFI20
	.long L$set$24
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$25,LEFDE3-LASFDE3
	.long L$set$25
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB40-.
	.set L$set$26,LFE40-LFB40
	.quad L$set$26
	.byte	0
	.byte	0x4
	.set L$set$27,LCFI22-LFB40
	.long L$set$27
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$28,LCFI23-LCFI22
	.long L$set$28
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$29,LCFI24-LCFI23
	.long L$set$29
	.byte	0xb
	.byte	0x4
	.set L$set$30,LCFI25-LCFI24
	.long L$set$30
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$31,LEFDE5-LASFDE5
	.long L$set$31
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB38-.
	.set L$set$32,LFE38-LFB38
	.quad L$set$32
	.byte	0
	.byte	0x4
	.set L$set$33,LCFI26-LFB38
	.long L$set$33
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$34,LCFI27-LCFI26
	.long L$set$34
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$35,LCFI28-LCFI27
	.long L$set$35
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$36,LCFI29-LCFI28
	.long L$set$36
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$37,LCFI30-LCFI29
	.long L$set$37
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$38,LCFI31-LCFI30
	.long L$set$38
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$39,LCFI32-LCFI31
	.long L$set$39
	.byte	0xe
	.byte	0xd0,0x25
	.byte	0x4
	.set L$set$40,LCFI33-LCFI32
	.long L$set$40
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$41,LCFI34-LCFI33
	.long L$set$41
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$42,LCFI35-LCFI34
	.long L$set$42
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$43,LCFI36-LCFI35
	.long L$set$43
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$44,LCFI37-LCFI36
	.long L$set$44
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$45,LCFI38-LCFI37
	.long L$set$45
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$46,LCFI39-LCFI38
	.long L$set$46
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$47,LCFI40-LCFI39
	.long L$set$47
	.byte	0xb
	.byte	0x4
	.set L$set$48,LCFI41-LCFI40
	.long L$set$48
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$49,LCFI42-LCFI41
	.long L$set$49
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$50,LCFI43-LCFI42
	.long L$set$50
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$51,LCFI44-LCFI43
	.long L$set$51
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$52,LCFI45-LCFI44
	.long L$set$52
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$53,LCFI46-LCFI45
	.long L$set$53
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$54,LCFI47-LCFI46
	.long L$set$54
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$55,LCFI48-LCFI47
	.long L$set$55
	.byte	0xb
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$56,LEFDE7-LASFDE7
	.long L$set$56
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB39-.
	.set L$set$57,LFE39-LFB39
	.quad L$set$57
	.byte	0
	.byte	0x4
	.set L$set$58,LCFI49-LFB39
	.long L$set$58
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$59,LCFI50-LCFI49
	.long L$set$59
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$60,LCFI51-LCFI50
	.long L$set$60
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$61,LCFI52-LCFI51
	.long L$set$61
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$62,LCFI53-LCFI52
	.long L$set$62
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$63,LCFI54-LCFI53
	.long L$set$63
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$64,LCFI55-LCFI54
	.long L$set$64
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$65,LCFI56-LCFI55
	.long L$set$65
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$66,LCFI57-LCFI56
	.long L$set$66
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$67,LCFI58-LCFI57
	.long L$set$67
	.byte	0xe
	.byte	0x58
	.byte	0x4
	.set L$set$68,LCFI59-LCFI58
	.long L$set$68
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$69,LCFI60-LCFI59
	.long L$set$69
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$70,LCFI61-LCFI60
	.long L$set$70
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$71,LCFI62-LCFI61
	.long L$set$71
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$72,LCFI63-LCFI62
	.long L$set$72
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$73,LCFI64-LCFI63
	.long L$set$73
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$74,LCFI65-LCFI64
	.long L$set$74
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$75,LCFI66-LCFI65
	.long L$set$75
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$76,LCFI67-LCFI66
	.long L$set$76
	.byte	0xb
	.byte	0x4
	.set L$set$77,LCFI68-LCFI67
	.long L$set$77
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$78,LCFI69-LCFI68
	.long L$set$78
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$79,LCFI70-LCFI69
	.long L$set$79
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$80,LCFI71-LCFI70
	.long L$set$80
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$81,LCFI72-LCFI71
	.long L$set$81
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$82,LCFI73-LCFI72
	.long L$set$82
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$83,LCFI74-LCFI73
	.long L$set$83
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$84,LCFI75-LCFI74
	.long L$set$84
	.byte	0xb
	.align 3
LEFDE7:
	.subsections_via_symbols
