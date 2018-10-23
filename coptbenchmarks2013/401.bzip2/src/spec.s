	.text
	.align 4,0x90
	.globl _ran
_ran:
LFB5:
	movq	_seedi@GOTPCREL(%rip), %rsi
	pxor	%xmm0, %xmm0
	movabsq	$4730756183288445817, %rdx
	movq	(%rsi), %rcx
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$15, %rdx
	subq	%rax, %rdx
	imulq	$127773, %rdx, %rax
	imulq	$-2836, %rdx, %rdx
	subq	%rax, %rcx
	imulq	$16807, %rcx, %rax
	addq	%rdx, %rax
	leaq	2147483647(%rax), %rdx
	testq	%rax, %rax
	cmovle	%rdx, %rax
	cvtsi2ssq	%rax, %xmm0
	mulss	lC0(%rip), %xmm0
	movq	%rax, (%rsi)
	cvtss2sd	%xmm0, %xmm0
	ret
LFE5:
	.cstring
lC1:
	.ascii "spec_init\0"
	.align 3
lC2:
	.ascii "spec_init: Error mallocing memory!\0"
	.text
	.align 4,0x90
	.globl _spec_init
_spec_init:
LFB6:
	cmpl	$3, _dbglvl(%rip)
	pushq	%r12
LCFI0:
	pushq	%rbp
LCFI1:
	pushq	%rbx
LCFI2:
	jg	L12
L5:
	movq	_spec_fd@GOTPCREL(%rip), %r12
	leaq	72(%r12), %rbp
L9:
	movq	$0, 8(%r12)
	movl	(%r12), %ebx
	movq	$0, 16(%r12)
	movq	$0, (%r12)
	leal	1048576(%rbx), %edi
	movl	%ebx, (%r12)
	movslq	%edi, %rdi
	call	_malloc
	testq	%rax, %rax
	movq	%rax, 16(%r12)
	je	L6
	testl	%ebx, %ebx
	jle	L7
	leal	-1(%rbx), %ecx
	xorl	%edx, %edx
	shrl	$10, %ecx
	addq	$1, %rcx
	salq	$10, %rcx
	jmp	L8
	.align 4,0x90
L13:
	movq	16(%r12), %rax
L8:
	movb	$0, (%rax,%rdx)
	addq	$1024, %rdx
	cmpq	%rdx, %rcx
	jne	L13
L7:
	addq	$24, %r12
	cmpq	%rbp, %r12
	jne	L9
	popq	%rbx
LCFI3:
	xorl	%eax, %eax
	popq	%rbp
LCFI4:
	popq	%r12
LCFI5:
	ret
	.align 4,0x90
L12:
LCFI6:
	leaq	lC1(%rip), %rdi
	call	_puts
	jmp	L5
	.align 4,0x90
L6:
	leaq	lC2(%rip), %rdi
	call	_puts
	xorl	%edi, %edi
	call	_exit
LFE6:
	.cstring
lC3:
	.ascii "Creating Chunks\0"
lC4:
	.ascii "Creating Chunk %d\12\0"
lC6:
	.ascii "Filling input file\0"
	.text
	.align 4,0x90
	.globl _spec_random_load
_spec_random_load:
LFB7:
	pushq	%r15
LCFI7:
	pushq	%r14
LCFI8:
	pushq	%r13
LCFI9:
	pushq	%r12
LCFI10:
	pushq	%rbp
LCFI11:
	pushq	%rbx
LCFI12:
	movslq	%edi, %rbx
	subq	$4194328, %rsp
LCFI13:
	movl	_dbglvl(%rip), %edi
	cmpl	$4, %edi
	jle	L15
	leaq	lC3(%rip), %rdi
	call	_puts
	movl	_dbglvl(%rip), %edi
L15:
	movq	_seedi@GOTPCREL(%rip), %r15
	leaq	16(%rsp), %rbp
	xorl	%r14d, %r14d
	movabsq	$4730756183288445817, %r13
	movss	lC0(%rip), %xmm1
	leaq	131072(%rbp), %r12
	movsd	lC5(%rip), %xmm2
	.align 4,0x90
L21:
	cmpl	$5, %edi
	jg	L29
L16:
	movq	(%r15), %rcx
	leaq	-131072(%r12), %rsi
	.align 4,0x90
L17:
	movq	%rcx, %rax
	imulq	%r13
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$15, %rdx
	subq	%rax, %rdx
	imulq	$-2836, %rdx, %rax
	imulq	$127773, %rdx, %rdx
	subq	%rdx, %rcx
	imulq	$16807, %rcx, %rcx
	addq	%rax, %rcx
	testq	%rcx, %rcx
	jg	L18
	addq	$2147483647, %rcx
L18:
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rcx, %xmm0
	addq	$1, %rsi
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, -1(%rsi)
	cmpq	%rsi, %r12
	jne	L17
	addl	$1, %r14d
	addq	$131072, %r12
	movq	%rcx, (%r15)
	cmpl	$32, %r14d
	jne	L21
	cmpl	$4, %edi
	jle	L22
	leaq	lC6(%rip), %rdi
	movss	%xmm1, 4(%rsp)
	call	_puts
	movss	4(%rsp), %xmm1
L22:
	movq	_spec_fd@GOTPCREL(%rip), %rdi
	leaq	(%rbx,%rbx,2), %rax
	leaq	(%rdi,%rax,8), %r14
	movl	(%r14), %eax
	testl	%eax, %eax
	jle	L23
	movabsq	$4730756183288445817, %r13
	xorl	%r12d, %r12d
L25:
	movq	(%r15), %rcx
	pxor	%xmm0, %xmm0
	movss	%xmm1, 4(%rsp)
	movq	16(%r14), %rdi
	movq	%rcx, %rax
	imulq	%r13
	movq	%rcx, %rax
	addq	%r12, %rdi
	sarq	$63, %rax
	sarq	$15, %rdx
	subq	%rax, %rdx
	imulq	$127773, %rdx, %rax
	imulq	$-2836, %rdx, %rdx
	subq	%rax, %rcx
	imulq	$16807, %rcx, %rax
	addq	%rdx, %rax
	leaq	2147483647(%rax), %rdx
	testq	%rax, %rax
	cmovle	%rdx, %rax
	movl	$131072, %edx
	cvtsi2ssq	%rax, %xmm0
	movq	%rax, (%r15)
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	lC7(%rip), %xmm0
	cvttsd2si	%xmm0, %esi
	movslq	%esi, %rsi
	salq	$17, %rsi
	addq	%rbp, %rsi
	call	_memcpy
	leal	131072(%r12), %eax
	addq	$131072, %r12
	cmpl	%eax, (%r14)
	movss	4(%rsp), %xmm1
	jg	L25
L23:
	leaq	(%rbx,%rbx,2), %rax
	movq	_spec_fd@GOTPCREL(%rip), %rbx
	movl	$1048576, 4(%rbx,%rax,8)
	addq	$4194328, %rsp
LCFI14:
	xorl	%eax, %eax
	popq	%rbx
LCFI15:
	popq	%rbp
LCFI16:
	popq	%r12
LCFI17:
	popq	%r13
LCFI18:
	popq	%r14
LCFI19:
	popq	%r15
LCFI20:
	ret
L29:
LCFI21:
	leaq	lC4(%rip), %rdi
	movl	%r14d, %esi
	xorl	%eax, %eax
	movsd	%xmm2, 8(%rsp)
	movss	%xmm1, 4(%rsp)
	call	_printf
	movl	_dbglvl(%rip), %edi
	movsd	8(%rsp), %xmm2
	movss	4(%rsp), %xmm1
	jmp	L16
LFE7:
	.cstring
lC8:
	.ascii "Can't open file %s: %s\12\0"
lC9:
	.ascii "Error reading from %s: %s\12\0"
lC10:
	.ascii "Duplicating %d bytes\12\0"
	.text
	.align 4,0x90
	.globl _spec_load
_spec_load:
LFB8:
	pushq	%r15
LCFI22:
	xorl	%eax, %eax
	pushq	%r14
LCFI23:
	movq	%rsi, %r14
	xorl	%esi, %esi
	pushq	%r13
LCFI24:
	pushq	%r12
LCFI25:
	movslq	%edi, %r12
	movq	%r14, %rdi
	pushq	%rbp
LCFI26:
	pushq	%rbx
LCFI27:
	movl	%edx, %ebx
	subq	$8, %rsp
LCFI28:
	call	_open
	testl	%eax, %eax
	js	L44
	leaq	(%r12,%r12,2), %rcx
	movl	%eax, %ebp
	movq	_spec_fd@GOTPCREL(%rip), %rax
	salq	$3, %rcx
	testl	%ebx, %ebx
	movq	$0, 4(%rax,%rcx)
	jle	L32
	addq	%rax, %rcx
	xorl	%r15d, %r15d
	movq	%rcx, %r13
	jmp	L34
	.align 4,0x90
L46:
	js	L45
	addl	%eax, 4(%r13)
	addl	%eax, %r15d
	cmpl	%r15d, %ebx
	jle	L32
L34:
	movslq	%r15d, %rsi
	addq	16(%r13), %rsi
	movl	$131072, %edx
	movl	%ebp, %edi
	call	_read
	testl	%eax, %eax
	jne	L46
L32:
	movl	%ebp, %edi
	call	_close
	movq	_spec_fd@GOTPCREL(%rip), %rcx
	leaq	(%r12,%r12,2), %rax
	leaq	(%rcx,%rax,8), %r12
	movl	4(%r12), %edi
	cmpl	%edi, %ebx
	jle	L36
	.align 4,0x90
L35:
	movl	%ebx, %ebp
	subl	%edi, %ebp
	cmpl	%edi, %ebp
	cmovg	%edi, %ebp
	cmpl	$3, _dbglvl(%rip)
	jg	L47
	movq	16(%r12), %rsi
	movslq	%edi, %rdi
	movslq	%ebp, %rdx
	addq	%rsi, %rdi
	call	_memcpy
	movl	4(%r12), %edi
	addl	%ebp, %edi
	cmpl	%ebx, %edi
	movl	%edi, 4(%r12)
	jl	L35
L36:
	addq	$8, %rsp
LCFI29:
	xorl	%eax, %eax
	popq	%rbx
LCFI30:
	popq	%rbp
LCFI31:
	popq	%r12
LCFI32:
	popq	%r13
LCFI33:
	popq	%r14
LCFI34:
	popq	%r15
LCFI35:
	ret
	.align 4,0x90
L47:
LCFI36:
	leaq	lC10(%rip), %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	_printf
	movq	16(%r12), %rsi
	movslq	%ebp, %rdx
	movslq	4(%r12), %rdi
	addq	%rsi, %rdi
	call	_memcpy
	movl	4(%r12), %edi
	addl	%ebp, %edi
	cmpl	%edi, %ebx
	movl	%edi, 4(%r12)
	jg	L35
	jmp	L36
	.align 4,0x90
L45:
	call	___error
	movl	(%rax), %edi
	call	_strerror
	leaq	lC9(%rip), %rsi
	movq	%r14, %rdx
	movq	%rax, %rcx
L43:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	xorl	%edi, %edi
	call	_exit
	.align 4,0x90
L44:
	call	___error
	movl	(%rax), %edi
	call	_strerror
	leaq	lC8(%rip), %rsi
	movq	%r14, %rdx
	movq	%rax, %rcx
	jmp	L43
LFE8:
	.cstring
lC11:
	.ascii "spec_read: %d, %p, %d = \0"
	.align 3
lC12:
	.ascii "spec_read: fd=%d, > MAX_SPEC_FD!\12\0"
lC13:
	.ascii "EOF\0"
lC14:
	.ascii "%d\12\0"
	.text
	.align 4,0x90
	.globl _spec_read
_spec_read:
LFB9:
	pushq	%r13
LCFI37:
	movl	%edx, %r13d
	pushq	%r12
LCFI38:
	movq	%rsi, %r12
	pushq	%rbp
LCFI39:
	pushq	%rbx
LCFI40:
	movslq	%edi, %rbx
	subq	$8, %rsp
LCFI41:
	cmpl	$4, _dbglvl(%rip)
	jg	L57
L49:
	cmpl	$3, %ebx
	jg	L58
	movq	_spec_fd@GOTPCREL(%rip), %rax
	leaq	(%rbx,%rbx,2), %rbx
	leaq	(%rax,%rbx,8), %rbx
	movslq	8(%rbx), %rsi
	movl	4(%rbx), %eax
	cmpl	%eax, %esi
	jge	L59
	leal	(%rsi,%r13), %edx
	movl	%eax, %ebp
	movq	%r12, %rdi
	subl	%esi, %ebp
	cmpl	%edx, %eax
	cmovg	%r13d, %ebp
	addq	16(%rbx), %rsi
	movslq	%ebp, %rdx
	call	_memcpy
	addl	%ebp, 8(%rbx)
	cmpl	$4, _dbglvl(%rip)
	jle	L48
	leaq	lC14(%rip), %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	_printf
L48:
	addq	$8, %rsp
LCFI42:
	movl	%ebp, %eax
	popq	%rbx
LCFI43:
	popq	%rbp
LCFI44:
	popq	%r12
LCFI45:
	popq	%r13
LCFI46:
	ret
	.align 4,0x90
L59:
LCFI47:
	cmpl	$4, _dbglvl(%rip)
	movl	$-1, %ebp
	jle	L48
	leaq	lC13(%rip), %rdi
	call	_puts
	addq	$8, %rsp
LCFI48:
	movl	%ebp, %eax
	popq	%rbx
LCFI49:
	popq	%rbp
LCFI50:
	popq	%r12
LCFI51:
	popq	%r13
LCFI52:
	ret
	.align 4,0x90
L58:
LCFI53:
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC12(%rip), %rsi
	movl	%ebx, %edx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	xorl	%edi, %edi
	call	_exit
	.align 4,0x90
L57:
	leaq	lC11(%rip), %rdi
	movl	%edx, %ecx
	xorl	%eax, %eax
	movq	%rsi, %rdx
	movl	%ebx, %esi
	call	_printf
	jmp	L49
LFE9:
	.cstring
	.align 3
lC15:
	.ascii "spec_fread: %p, (%d x %d) fd %d =\0"
	.align 3
lC16:
	.ascii "spec_fread: fd=%d, > MAX_SPEC_FD!\12\0"
	.text
	.align 4,0x90
	.globl _spec_fread
_spec_fread:
LFB10:
	cmpl	$4, _dbglvl(%rip)
	pushq	%r14
LCFI54:
	pushq	%r13
LCFI55:
	movl	%edx, %r13d
	pushq	%r12
LCFI56:
	movl	%esi, %r12d
	pushq	%rbp
LCFI57:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI58:
	movslq	%ecx, %rbx
	jg	L69
L61:
	cmpl	$3, %ebx
	jg	L70
	movq	_spec_fd@GOTPCREL(%rip), %r8
	leaq	(%rbx,%rbx,2), %rax
	leaq	(%r8,%rax,8), %rcx
	movslq	8(%rcx), %rsi
	movl	4(%rcx), %edi
	cmpl	%edi, %esi
	jl	L63
	cmpl	$4, _dbglvl(%rip)
	movl	$-1, %r13d
	jg	L71
L60:
	popq	%rbx
LCFI59:
	movl	%r13d, %eax
	popq	%rbp
LCFI60:
	popq	%r12
LCFI61:
	popq	%r13
LCFI62:
	popq	%r14
LCFI63:
	ret
	.align 4,0x90
L63:
LCFI64:
	movl	%r12d, %r14d
	imull	%r13d, %r14d
	leal	(%rsi,%r14), %eax
	cmpl	%eax, %edi
	jg	L65
	movl	%edi, %eax
	movl	%r12d, %r14d
	subl	%esi, %eax
	cltd
	idivl	%r12d
	imull	%eax, %r14d
	movl	%eax, %r13d
L65:
	leaq	(%rbx,%rbx,2), %rax
	movslq	%r13d, %rdx
	movq	%rbp, %rdi
	leaq	(%r8,%rax,8), %rbx
	addq	16(%rbx), %rsi
	call	_memcpy
	addl	%r14d, 8(%rbx)
	cmpl	$4, _dbglvl(%rip)
	jle	L60
	leaq	lC14(%rip), %rdi
	movl	%r14d, %esi
	xorl	%eax, %eax
	call	_printf
	popq	%rbx
LCFI65:
	movl	%r13d, %eax
	popq	%rbp
LCFI66:
	popq	%r12
LCFI67:
	popq	%r13
LCFI68:
	popq	%r14
LCFI69:
	ret
	.align 4,0x90
L70:
LCFI70:
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC16(%rip), %rsi
	movl	%ebx, %edx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	xorl	%edi, %edi
	call	_exit
	.align 4,0x90
L69:
	movl	%edx, %ecx
	movl	%ebx, %r8d
	movl	%esi, %edx
	xorl	%eax, %eax
	movq	%rdi, %rsi
	leaq	lC15(%rip), %rdi
	call	_printf
	jmp	L61
	.align 4,0x90
L71:
	leaq	lC13(%rip), %rdi
	call	_puts
	popq	%rbx
LCFI71:
	movl	%r13d, %eax
	popq	%rbp
LCFI72:
	popq	%r12
LCFI73:
	popq	%r13
LCFI74:
	popq	%r14
LCFI75:
	ret
LFE10:
	.cstring
lC17:
	.ascii "spec_getc: %d = \0"
	.text
	.align 4,0x90
	.globl _spec_getc
_spec_getc:
LFB11:
	cmpl	$4, _dbglvl(%rip)
	pushq	%rbx
LCFI76:
	movslq	%edi, %rbx
	jg	L79
L73:
	cmpl	$3, %ebx
	jg	L80
	movq	_spec_fd@GOTPCREL(%rip), %rdx
	leaq	(%rbx,%rbx,2), %rax
	movl	_dbglvl(%rip), %ecx
	leaq	(%rdx,%rax,8), %rax
	movslq	8(%rax), %rdx
	cmpl	4(%rax), %edx
	jge	L81
	movq	16(%rax), %rsi
	leal	1(%rdx), %edi
	cmpl	$4, %ecx
	movl	%edi, 8(%rax)
	movzbl	(%rsi,%rdx), %ebx
	jle	L72
	leaq	lC14(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	call	_printf
L72:
	movl	%ebx, %eax
	popq	%rbx
LCFI77:
	ret
	.align 4,0x90
L81:
LCFI78:
	cmpl	$4, %ecx
	movl	$-1, %ebx
	jle	L72
	leaq	lC13(%rip), %rdi
	call	_puts
	movl	%ebx, %eax
	popq	%rbx
LCFI79:
	ret
	.align 4,0x90
L80:
LCFI80:
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC12(%rip), %rsi
	movl	%ebx, %edx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	xorl	%edi, %edi
	call	_exit
	.align 4,0x90
L79:
	leaq	lC17(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	call	_printf
	jmp	L73
LFE11:
	.cstring
lC18:
	.ascii "spec_ungetc: %d = \0"
lC19:
	.ascii "spec_ungetc: pos %d <= 0\12\0"
	.align 3
lC20:
	.ascii "spec_ungetc: can't unget something that wasn't what was in the buffer!\12\0"
	.text
	.align 4,0x90
	.globl _spec_ungetc
_spec_ungetc:
LFB12:
	pushq	%rbp
LCFI81:
	movl	%edi, %ebp
	pushq	%rbx
LCFI82:
	movslq	%esi, %rbx
	subq	$8, %rsp
LCFI83:
	cmpl	$4, _dbglvl(%rip)
	jg	L90
L83:
	leaq	lC12(%rip), %rsi
	cmpl	$3, %ebx
	movl	%ebx, %edx
	jg	L89
	movq	_spec_fd@GOTPCREL(%rip), %rdx
	leaq	(%rbx,%rbx,2), %rax
	leaq	(%rdx,%rax,8), %rax
	movl	8(%rax), %edx
	testl	%edx, %edx
	jle	L91
	movq	16(%rax), %rcx
	subl	$1, %edx
	movl	%edx, 8(%rax)
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %ebx
	cmpb	%bpl, %bl
	jne	L92
	cmpl	$4, _dbglvl(%rip)
	jg	L93
L87:
	addq	$8, %rsp
LCFI84:
	movzbl	%bl, %eax
	popq	%rbx
LCFI85:
	popq	%rbp
LCFI86:
	ret
	.align 4,0x90
L92:
LCFI87:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movl	$71, %edx
	movl	$1, %esi
	leaq	lC20(%rip), %rdi
	movq	(%rax), %rcx
	call	_fwrite
	xorl	%edi, %edi
	call	_exit
	.align 4,0x90
L91:
	leaq	lC19(%rip), %rsi
L89:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	xorl	%edi, %edi
	call	_exit
	.align 4,0x90
L90:
	leaq	lC18(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	call	_printf
	jmp	L83
	.align 4,0x90
L93:
	leaq	lC14(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	call	_printf
	jmp	L87
LFE12:
	.align 4,0x90
	.globl _spec_rewind
_spec_rewind:
LFB13:
	movq	_spec_fd@GOTPCREL(%rip), %rdx
	movslq	%edi, %rdi
	leaq	(%rdi,%rdi,2), %rax
	leaq	(%rdx,%rax,8), %rax
	movl	$0, 8(%rax)
	xorl	%eax, %eax
	ret
LFE13:
	.align 4,0x90
	.globl _spec_reset
_spec_reset:
LFB14:
	pushq	%rbp
LCFI88:
	movslq	%edi, %rdi
	xorl	%esi, %esi
	pushq	%rbx
LCFI89:
	leaq	(%rdi,%rdi,2), %rbx
	subq	$8, %rsp
LCFI90:
	movq	_spec_fd@GOTPCREL(%rip), %rbp
	salq	$3, %rbx
	leaq	0(%rbp,%rbx), %rax
	movslq	4(%rax), %rdx
	movq	16(%rax), %rdi
	call	_memset
	xorl	%eax, %eax
	movq	$0, 4(%rbx,%rbp)
	addq	$8, %rsp
LCFI91:
	popq	%rbx
LCFI92:
	popq	%rbp
LCFI93:
	ret
LFE14:
	.cstring
lC21:
	.ascii "spec_write: %d, %p, %d = \0"
	.align 3
lC22:
	.ascii "spec_write: fd=%d, > MAX_SPEC_FD!\12\0"
	.text
	.align 4,0x90
	.globl _spec_write
_spec_write:
LFB15:
	cmpl	$4, _dbglvl(%rip)
	pushq	%r12
LCFI94:
	movq	%rsi, %r12
	pushq	%rbp
LCFI95:
	movl	%edx, %ebp
	pushq	%rbx
LCFI96:
	movslq	%edi, %rbx
	jg	L102
L98:
	cmpl	$3, %ebx
	jle	L99
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC22(%rip), %rsi
	movl	%ebx, %edx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	xorl	%edi, %edi
	call	_exit
	.align 4,0x90
L99:
	movq	_spec_fd@GOTPCREL(%rip), %rax
	leaq	(%rbx,%rbx,2), %rbx
	movslq	%ebp, %rdx
	movq	%r12, %rsi
	leaq	(%rax,%rbx,8), %rbx
	movslq	8(%rbx), %rdi
	addq	16(%rbx), %rdi
	call	_memcpy
	addl	%ebp, 4(%rbx)
	addl	%ebp, 8(%rbx)
	cmpl	$4, _dbglvl(%rip)
	jg	L103
	movl	%ebp, %eax
	popq	%rbx
LCFI97:
	popq	%rbp
LCFI98:
	popq	%r12
LCFI99:
	ret
	.align 4,0x90
L102:
LCFI100:
	leaq	lC21(%rip), %rdi
	movl	%edx, %ecx
	xorl	%eax, %eax
	movq	%rsi, %rdx
	movl	%ebx, %esi
	call	_printf
	jmp	L98
	.align 4,0x90
L103:
	leaq	lC14(%rip), %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	call	_printf
	movl	%ebp, %eax
	popq	%rbx
LCFI101:
	popq	%rbp
LCFI102:
	popq	%r12
LCFI103:
	ret
LFE15:
	.cstring
	.align 3
lC23:
	.ascii "spec_fwrite: %p, %d, %d, %d = \0"
	.align 3
lC24:
	.ascii "spec_fwrite: fd=%d, > MAX_SPEC_FD!\12\0"
	.text
	.align 4,0x90
	.globl _spec_fwrite
_spec_fwrite:
LFB16:
	pushq	%r13
LCFI104:
	movq	%rdi, %r13
	pushq	%r12
LCFI105:
	movl	%edx, %r12d
	pushq	%rbp
LCFI106:
	movl	%esi, %ebp
	pushq	%rbx
LCFI107:
	movslq	%ecx, %rbx
	subq	$8, %rsp
LCFI108:
	cmpl	$4, _dbglvl(%rip)
	jg	L109
L105:
	cmpl	$3, %ebx
	jle	L106
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC24(%rip), %rsi
	movl	%ebx, %edx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	xorl	%edi, %edi
	call	_exit
	.align 4,0x90
L106:
	movq	_spec_fd@GOTPCREL(%rip), %rax
	leaq	(%rbx,%rbx,2), %rbx
	imull	%r12d, %ebp
	movq	%r13, %rsi
	movslq	%ebp, %rdx
	leaq	(%rax,%rbx,8), %rbx
	movslq	8(%rbx), %rdi
	addq	16(%rbx), %rdi
	call	_memcpy
	addl	%ebp, 4(%rbx)
	addl	%ebp, 8(%rbx)
	cmpl	$4, _dbglvl(%rip)
	jg	L110
	addq	$8, %rsp
LCFI109:
	movl	%r12d, %eax
	popq	%rbx
LCFI110:
	popq	%rbp
LCFI111:
	popq	%r12
LCFI112:
	popq	%r13
LCFI113:
	ret
	.align 4,0x90
L109:
LCFI114:
	movl	%edx, %ecx
	movl	%ebx, %r8d
	movl	%esi, %edx
	xorl	%eax, %eax
	movq	%rdi, %rsi
	leaq	lC23(%rip), %rdi
	call	_printf
	jmp	L105
	.align 4,0x90
L110:
	leaq	lC14(%rip), %rdi
	movl	%r12d, %esi
	xorl	%eax, %eax
	call	_printf
	addq	$8, %rsp
LCFI115:
	movl	%r12d, %eax
	popq	%rbx
LCFI116:
	popq	%rbp
LCFI117:
	popq	%r12
LCFI118:
	popq	%r13
LCFI119:
	ret
LFE16:
	.cstring
lC25:
	.ascii "spec_putc: %d, %d = \0"
	.text
	.align 4,0x90
	.globl _spec_putc
_spec_putc:
LFB17:
	pushq	%rbp
LCFI120:
	movl	%edi, %ebp
	pushq	%rbx
LCFI121:
	movslq	%esi, %rbx
	subq	$8, %rsp
LCFI122:
	cmpl	$4, _dbglvl(%rip)
	jg	L115
L112:
	cmpl	$3, %ebx
	jg	L116
	movq	_spec_fd@GOTPCREL(%rip), %rax
	leaq	(%rbx,%rbx,2), %rdx
	leaq	(%rax,%rdx,8), %rdx
	movslq	8(%rdx), %rax
	movq	16(%rdx), %rcx
	leal	1(%rax), %esi
	movl	%esi, 8(%rdx)
	movb	%bpl, (%rcx,%rax)
	movzbl	%bpl, %eax
	addl	$1, 4(%rdx)
	addq	$8, %rsp
LCFI123:
	popq	%rbx
LCFI124:
	popq	%rbp
LCFI125:
	ret
	.align 4,0x90
L116:
LCFI126:
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC22(%rip), %rsi
	movl	%ebx, %edx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	xorl	%edi, %edi
	call	_exit
	.align 4,0x90
L115:
	movzbl	%dil, %esi
	movl	%ebx, %edx
	xorl	%eax, %eax
	leaq	lC25(%rip), %rdi
	call	_printf
	jmp	L112
LFE17:
	.cstring
lC26:
	.ascii "input.combined\0"
lC27:
	.ascii "Loading Input Data\0"
	.align 3
lC28:
	.ascii "Input data %d bytes in length\12\0"
lC29:
	.ascii "main: Error mallocing memory!\0"
	.align 3
lC30:
	.ascii "Compressing Input Data, level %d\12\0"
	.align 3
lC31:
	.ascii "Compressed data %d bytes in length\12\0"
lC32:
	.ascii "Uncompressing Data\0"
	.align 3
lC33:
	.ascii "Uncompressed data %d bytes in length\12\0"
	.align 3
lC34:
	.ascii "Tested %dMB buffer: Miscompared!!\12\0"
	.align 3
lC35:
	.ascii "Uncompressed data compared correctly\0"
lC36:
	.ascii "Tested %dMB buffer: OK!\12\0"
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
	.globl _main
_main:
LFB18:
	pushq	%r15
LCFI127:
	pushq	%r14
LCFI128:
	pushq	%r13
LCFI129:
	pushq	%r12
LCFI130:
	pushq	%rbp
LCFI131:
	pushq	%rbx
LCFI132:
	subq	$24, %rsp
LCFI133:
	movq	_seedi@GOTPCREL(%rip), %rax
	cmpl	$1, %edi
	movq	$10, (%rax)
	jle	L139
	cmpl	$2, %edi
	movl	%edi, %ebx
	movq	8(%rsi), %r12
	je	L140
	movq	16(%rsi), %rdi
	movq	%rsi, 8(%rsp)
	call	_atoi
	cmpl	$3, %ebx
	movl	%eax, %r13d
	je	L118
	movq	8(%rsp), %rsi
	movq	24(%rsi), %rdi
	call	_atoi
L118:
	movq	_spec_fd@GOTPCREL(%rip), %rbp
	movl	%r13d, %ebx
	sall	$20, %eax
	sall	$20, %ebx
	movl	%eax, 24(%rbp)
	xorl	%eax, %eax
	movl	%ebx, 0(%rbp)
	movl	%ebx, 48(%rbp)
	call	_spec_init
	cmpl	$2, _dbglvl(%rip)
	jg	L149
L119:
	xorl	%edi, %edi
	movl	%ebx, %edx
	movq	%r12, %rsi
	call	_spec_load
	cmpl	$3, _dbglvl(%rip)
	jg	L150
L120:
	movl	%r13d, %edi
	sall	$10, %edi
	movslq	%edi, %rdi
	call	_malloc
	testq	%rax, %rax
	movq	%rax, %r12
	je	L121
	testl	%ebx, %ebx
	jle	L123
	movq	16(%rbp), %rsi
	movq	%rax, %rdx
	xorl	%eax, %eax
	.align 4
L124:
	movzbl	(%rsi,%rax), %ecx
	addq	$1027, %rax
	addq	$1, %rdx
	movb	%cl, -1(%rdx)
	cmpl	%eax, %ebx
	jg	L124
L123:
	movq	_smallMode@GOTPCREL(%rip), %rax
	movl	$5, %r14d
	movq	_blockSize100k@GOTPCREL(%rip), %r15
	movb	$0, (%rax)
	movq	_verbosity@GOTPCREL(%rip), %rax
	movl	$9, (%r15)
	movl	$0, (%rax)
	movq	_workFactor@GOTPCREL(%rip), %rax
	movl	$30, (%rax)
L138:
	cmpl	$2, _dbglvl(%rip)
	jg	L151
L125:
	xorl	%edi, %edi
	movl	$1, %esi
	movl	%r14d, (%r15)
	call	_compressStream
	cmpl	$3, _dbglvl(%rip)
	jg	L152
L126:
	movslq	4(%rbp), %rdx
	xorl	%esi, %esi
	movq	16(%rbp), %rdi
	call	_memset
	cmpl	$2, _dbglvl(%rip)
	movq	$0, 4(%rbp)
	movl	$0, 32(%rbp)
	jg	L153
L127:
	xorl	%esi, %esi
	movl	$1, %edi
	movl	$0, (%r15)
	call	_uncompressStream
	cmpl	$3, _dbglvl(%rip)
	jg	L154
	testl	%ebx, %ebx
	jle	L137
L129:
	movq	16(%rbp), %rax
	movzbl	(%r12), %ecx
	cmpb	%cl, (%rax)
	jne	L132
	leaq	1(%r12), %rcx
	addq	$1027, %rax
	movl	$1027, %edx
	jmp	L134
	.align 4
L135:
	movzbl	(%rcx), %edi
	addl	$1027, %edx
	addq	$1, %rcx
	addq	$1027, %rax
	movzbl	-1027(%rax), %esi
	cmpb	%sil, %dil
	jne	L132
L134:
	cmpl	%edx, %ebx
	jg	L135
L136:
	cmpl	$3, _dbglvl(%rip)
	jle	L137
	leaq	lC35(%rip), %rdi
	call	_puts
L137:
	movslq	28(%rbp), %rdx
	xorl	%esi, %esi
	addl	$2, %r14d
	movq	40(%rbp), %rdi
	call	_memset
	cmpl	$11, %r14d
	movq	$0, 28(%rbp)
	movl	$0, 8(%rbp)
	jne	L138
	leaq	lC36(%rip), %rdi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	_printf
	addq	$24, %rsp
LCFI134:
	xorl	%eax, %eax
	popq	%rbx
LCFI135:
	popq	%rbp
LCFI136:
	popq	%r12
LCFI137:
	popq	%r13
LCFI138:
	popq	%r14
LCFI139:
	popq	%r15
LCFI140:
	ret
L140:
LCFI141:
	movl	$64, %r13d
	movl	$64, %eax
	jmp	L118
L132:
	leaq	lC34(%rip), %rdi
	movl	%r13d, %esi
	xorl	%eax, %eax
	call	_printf
	xorl	%edi, %edi
	call	_exit
L139:
	leaq	lC26(%rip), %r12
	movl	$64, %r13d
	movl	$64, %eax
	jmp	L118
L154:
	movl	4(%rbp), %esi
	leaq	lC33(%rip), %rdi
	xorl	%eax, %eax
	call	_printf
	testl	%ebx, %ebx
	jg	L129
	jmp	L136
L153:
	leaq	lC32(%rip), %rdi
	call	_puts
	jmp	L127
L152:
	movl	28(%rbp), %esi
	leaq	lC31(%rip), %rdi
	xorl	%eax, %eax
	call	_printf
	jmp	L126
L151:
	leaq	lC30(%rip), %rdi
	movl	%r14d, %esi
	xorl	%eax, %eax
	call	_printf
	jmp	L125
L150:
	movl	4(%rbp), %esi
	leaq	lC28(%rip), %rdi
	xorl	%eax, %eax
	call	_printf
	jmp	L120
L149:
	leaq	lC27(%rip), %rdi
	call	_puts
	jmp	L119
L121:
	leaq	lC29(%rip), %rdi
	call	_puts
	xorl	%edi, %edi
	call	_exit
LFE18:
	.text
	.align 4,0x90
	.globl _spec_initbufs
_spec_initbufs:
LFB19:
	movq	_smallMode@GOTPCREL(%rip), %rax
	movb	$0, (%rax)
	movq	_verbosity@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	movq	_blockSize100k@GOTPCREL(%rip), %rax
	movl	$9, (%rax)
	movq	_workFactor@GOTPCREL(%rip), %rax
	movl	$30, (%rax)
	ret
LFE19:
	.align 4,0x90
	.globl _spec_compress
_spec_compress:
LFB20:
	movq	_blockSize100k@GOTPCREL(%rip), %rax
	movl	%edx, (%rax)
	jmp	_compressStream
LFE20:
	.align 4,0x90
	.globl _spec_uncompress
_spec_uncompress:
LFB21:
	movq	_blockSize100k@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	jmp	_uncompressStream
LFE21:
	.align 4,0x90
	.globl _debug_time
_debug_time:
LFB22:
	xorl	%eax, %eax
	ret
LFE22:
	.comm	_seedi,8,3
	.comm	_spec_fd,72,5
	.globl _dbglvl
	.data
	.align 2
_dbglvl:
	.long	4
	.literal4
	.align 2
lC0:
	.long	805306368
	.literal8
	.align 3
lC5:
	.long	0
	.long	1081081856
	.align 3
lC7:
	.long	0
	.long	1077936128
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
	.quad	LFB5-.
	.set L$set$2,LFE5-LFB5
	.quad L$set$2
	.byte	0
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$3,LEFDE3-LASFDE3
	.long L$set$3
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB6-.
	.set L$set$4,LFE6-LFB6
	.quad L$set$4
	.byte	0
	.byte	0x4
	.set L$set$5,LCFI0-LFB6
	.long L$set$5
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$6,LCFI1-LCFI0
	.long L$set$6
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$7,LCFI2-LCFI1
	.long L$set$7
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$8,LCFI3-LCFI2
	.long L$set$8
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$9,LCFI4-LCFI3
	.long L$set$9
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$10,LCFI5-LCFI4
	.long L$set$10
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$11,LCFI6-LCFI5
	.long L$set$11
	.byte	0xb
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$12,LEFDE5-LASFDE5
	.long L$set$12
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB7-.
	.set L$set$13,LFE7-LFB7
	.quad L$set$13
	.byte	0
	.byte	0x4
	.set L$set$14,LCFI7-LFB7
	.long L$set$14
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$15,LCFI8-LCFI7
	.long L$set$15
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$16,LCFI9-LCFI8
	.long L$set$16
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$17,LCFI10-LCFI9
	.long L$set$17
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$18,LCFI11-LCFI10
	.long L$set$18
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$19,LCFI12-LCFI11
	.long L$set$19
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$20,LCFI13-LCFI12
	.long L$set$20
	.byte	0xe
	.byte	0xd0,0x80,0x80,0x2
	.byte	0x4
	.set L$set$21,LCFI14-LCFI13
	.long L$set$21
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$22,LCFI15-LCFI14
	.long L$set$22
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$23,LCFI16-LCFI15
	.long L$set$23
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$24,LCFI17-LCFI16
	.long L$set$24
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$25,LCFI18-LCFI17
	.long L$set$25
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$26,LCFI19-LCFI18
	.long L$set$26
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$27,LCFI20-LCFI19
	.long L$set$27
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$28,LCFI21-LCFI20
	.long L$set$28
	.byte	0xb
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$29,LEFDE7-LASFDE7
	.long L$set$29
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB8-.
	.set L$set$30,LFE8-LFB8
	.quad L$set$30
	.byte	0
	.byte	0x4
	.set L$set$31,LCFI22-LFB8
	.long L$set$31
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$32,LCFI23-LCFI22
	.long L$set$32
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$33,LCFI24-LCFI23
	.long L$set$33
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$34,LCFI25-LCFI24
	.long L$set$34
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$35,LCFI26-LCFI25
	.long L$set$35
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$36,LCFI27-LCFI26
	.long L$set$36
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$37,LCFI28-LCFI27
	.long L$set$37
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$38,LCFI29-LCFI28
	.long L$set$38
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$39,LCFI30-LCFI29
	.long L$set$39
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$40,LCFI31-LCFI30
	.long L$set$40
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$41,LCFI32-LCFI31
	.long L$set$41
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$42,LCFI33-LCFI32
	.long L$set$42
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$43,LCFI34-LCFI33
	.long L$set$43
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$44,LCFI35-LCFI34
	.long L$set$44
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$45,LCFI36-LCFI35
	.long L$set$45
	.byte	0xb
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$46,LEFDE9-LASFDE9
	.long L$set$46
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB9-.
	.set L$set$47,LFE9-LFB9
	.quad L$set$47
	.byte	0
	.byte	0x4
	.set L$set$48,LCFI37-LFB9
	.long L$set$48
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$49,LCFI38-LCFI37
	.long L$set$49
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$50,LCFI39-LCFI38
	.long L$set$50
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$51,LCFI40-LCFI39
	.long L$set$51
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$52,LCFI41-LCFI40
	.long L$set$52
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$53,LCFI42-LCFI41
	.long L$set$53
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$54,LCFI43-LCFI42
	.long L$set$54
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$55,LCFI44-LCFI43
	.long L$set$55
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$56,LCFI45-LCFI44
	.long L$set$56
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$57,LCFI46-LCFI45
	.long L$set$57
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$58,LCFI47-LCFI46
	.long L$set$58
	.byte	0xb
	.byte	0x4
	.set L$set$59,LCFI48-LCFI47
	.long L$set$59
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$60,LCFI49-LCFI48
	.long L$set$60
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$61,LCFI50-LCFI49
	.long L$set$61
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$62,LCFI51-LCFI50
	.long L$set$62
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$63,LCFI52-LCFI51
	.long L$set$63
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$64,LCFI53-LCFI52
	.long L$set$64
	.byte	0xb
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$65,LEFDE11-LASFDE11
	.long L$set$65
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB10-.
	.set L$set$66,LFE10-LFB10
	.quad L$set$66
	.byte	0
	.byte	0x4
	.set L$set$67,LCFI54-LFB10
	.long L$set$67
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$68,LCFI55-LCFI54
	.long L$set$68
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$69,LCFI56-LCFI55
	.long L$set$69
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$70,LCFI57-LCFI56
	.long L$set$70
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$71,LCFI58-LCFI57
	.long L$set$71
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$72,LCFI59-LCFI58
	.long L$set$72
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$73,LCFI60-LCFI59
	.long L$set$73
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$74,LCFI61-LCFI60
	.long L$set$74
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$75,LCFI62-LCFI61
	.long L$set$75
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$76,LCFI63-LCFI62
	.long L$set$76
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$77,LCFI64-LCFI63
	.long L$set$77
	.byte	0xb
	.byte	0x4
	.set L$set$78,LCFI65-LCFI64
	.long L$set$78
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$79,LCFI66-LCFI65
	.long L$set$79
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$80,LCFI67-LCFI66
	.long L$set$80
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$81,LCFI68-LCFI67
	.long L$set$81
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$82,LCFI69-LCFI68
	.long L$set$82
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$83,LCFI70-LCFI69
	.long L$set$83
	.byte	0xb
	.byte	0x4
	.set L$set$84,LCFI71-LCFI70
	.long L$set$84
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$85,LCFI72-LCFI71
	.long L$set$85
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$86,LCFI73-LCFI72
	.long L$set$86
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$87,LCFI74-LCFI73
	.long L$set$87
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$88,LCFI75-LCFI74
	.long L$set$88
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$89,LEFDE13-LASFDE13
	.long L$set$89
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB11-.
	.set L$set$90,LFE11-LFB11
	.quad L$set$90
	.byte	0
	.byte	0x4
	.set L$set$91,LCFI76-LFB11
	.long L$set$91
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$92,LCFI77-LCFI76
	.long L$set$92
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$93,LCFI78-LCFI77
	.long L$set$93
	.byte	0xb
	.byte	0x4
	.set L$set$94,LCFI79-LCFI78
	.long L$set$94
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$95,LCFI80-LCFI79
	.long L$set$95
	.byte	0xb
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$96,LEFDE15-LASFDE15
	.long L$set$96
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB12-.
	.set L$set$97,LFE12-LFB12
	.quad L$set$97
	.byte	0
	.byte	0x4
	.set L$set$98,LCFI81-LFB12
	.long L$set$98
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$99,LCFI82-LCFI81
	.long L$set$99
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$100,LCFI83-LCFI82
	.long L$set$100
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$101,LCFI84-LCFI83
	.long L$set$101
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$102,LCFI85-LCFI84
	.long L$set$102
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$103,LCFI86-LCFI85
	.long L$set$103
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$104,LCFI87-LCFI86
	.long L$set$104
	.byte	0xb
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$105,LEFDE17-LASFDE17
	.long L$set$105
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB13-.
	.set L$set$106,LFE13-LFB13
	.quad L$set$106
	.byte	0
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$107,LEFDE19-LASFDE19
	.long L$set$107
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB14-.
	.set L$set$108,LFE14-LFB14
	.quad L$set$108
	.byte	0
	.byte	0x4
	.set L$set$109,LCFI88-LFB14
	.long L$set$109
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$110,LCFI89-LCFI88
	.long L$set$110
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$111,LCFI90-LCFI89
	.long L$set$111
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$112,LCFI91-LCFI90
	.long L$set$112
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$113,LCFI92-LCFI91
	.long L$set$113
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$114,LCFI93-LCFI92
	.long L$set$114
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$115,LEFDE21-LASFDE21
	.long L$set$115
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB15-.
	.set L$set$116,LFE15-LFB15
	.quad L$set$116
	.byte	0
	.byte	0x4
	.set L$set$117,LCFI94-LFB15
	.long L$set$117
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$118,LCFI95-LCFI94
	.long L$set$118
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$119,LCFI96-LCFI95
	.long L$set$119
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$120,LCFI97-LCFI96
	.long L$set$120
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$121,LCFI98-LCFI97
	.long L$set$121
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$122,LCFI99-LCFI98
	.long L$set$122
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$123,LCFI100-LCFI99
	.long L$set$123
	.byte	0xb
	.byte	0x4
	.set L$set$124,LCFI101-LCFI100
	.long L$set$124
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$125,LCFI102-LCFI101
	.long L$set$125
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$126,LCFI103-LCFI102
	.long L$set$126
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$127,LEFDE23-LASFDE23
	.long L$set$127
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB16-.
	.set L$set$128,LFE16-LFB16
	.quad L$set$128
	.byte	0
	.byte	0x4
	.set L$set$129,LCFI104-LFB16
	.long L$set$129
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$130,LCFI105-LCFI104
	.long L$set$130
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$131,LCFI106-LCFI105
	.long L$set$131
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$132,LCFI107-LCFI106
	.long L$set$132
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$133,LCFI108-LCFI107
	.long L$set$133
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$134,LCFI109-LCFI108
	.long L$set$134
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$135,LCFI110-LCFI109
	.long L$set$135
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$136,LCFI111-LCFI110
	.long L$set$136
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$137,LCFI112-LCFI111
	.long L$set$137
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$138,LCFI113-LCFI112
	.long L$set$138
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$139,LCFI114-LCFI113
	.long L$set$139
	.byte	0xb
	.byte	0x4
	.set L$set$140,LCFI115-LCFI114
	.long L$set$140
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$141,LCFI116-LCFI115
	.long L$set$141
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$142,LCFI117-LCFI116
	.long L$set$142
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$143,LCFI118-LCFI117
	.long L$set$143
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$144,LCFI119-LCFI118
	.long L$set$144
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE23:
LSFDE25:
	.set L$set$145,LEFDE25-LASFDE25
	.long L$set$145
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB17-.
	.set L$set$146,LFE17-LFB17
	.quad L$set$146
	.byte	0
	.byte	0x4
	.set L$set$147,LCFI120-LFB17
	.long L$set$147
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$148,LCFI121-LCFI120
	.long L$set$148
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$149,LCFI122-LCFI121
	.long L$set$149
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$150,LCFI123-LCFI122
	.long L$set$150
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$151,LCFI124-LCFI123
	.long L$set$151
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$152,LCFI125-LCFI124
	.long L$set$152
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$153,LCFI126-LCFI125
	.long L$set$153
	.byte	0xb
	.align 3
LEFDE25:
LSFDE27:
	.set L$set$154,LEFDE27-LASFDE27
	.long L$set$154
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB18-.
	.set L$set$155,LFE18-LFB18
	.quad L$set$155
	.byte	0
	.byte	0x4
	.set L$set$156,LCFI127-LFB18
	.long L$set$156
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$157,LCFI128-LCFI127
	.long L$set$157
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$158,LCFI129-LCFI128
	.long L$set$158
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$159,LCFI130-LCFI129
	.long L$set$159
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$160,LCFI131-LCFI130
	.long L$set$160
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$161,LCFI132-LCFI131
	.long L$set$161
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$162,LCFI133-LCFI132
	.long L$set$162
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$163,LCFI134-LCFI133
	.long L$set$163
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$164,LCFI135-LCFI134
	.long L$set$164
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$165,LCFI136-LCFI135
	.long L$set$165
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$166,LCFI137-LCFI136
	.long L$set$166
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$167,LCFI138-LCFI137
	.long L$set$167
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$168,LCFI139-LCFI138
	.long L$set$168
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$169,LCFI140-LCFI139
	.long L$set$169
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$170,LCFI141-LCFI140
	.long L$set$170
	.byte	0xb
	.align 3
LEFDE27:
LSFDE29:
	.set L$set$171,LEFDE29-LASFDE29
	.long L$set$171
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB19-.
	.set L$set$172,LFE19-LFB19
	.quad L$set$172
	.byte	0
	.align 3
LEFDE29:
LSFDE31:
	.set L$set$173,LEFDE31-LASFDE31
	.long L$set$173
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB20-.
	.set L$set$174,LFE20-LFB20
	.quad L$set$174
	.byte	0
	.align 3
LEFDE31:
LSFDE33:
	.set L$set$175,LEFDE33-LASFDE33
	.long L$set$175
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB21-.
	.set L$set$176,LFE21-LFB21
	.quad L$set$176
	.byte	0
	.align 3
LEFDE33:
LSFDE35:
	.set L$set$177,LEFDE35-LASFDE35
	.long L$set$177
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB22-.
	.set L$set$178,LFE22-LFB22
	.quad L$set$178
	.byte	0
	.align 3
LEFDE35:
	.subsections_via_symbols
