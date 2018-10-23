	.text
	.align 4,0x90
_add_pair_to_block:
LFB39:
	movl	96(%rdi), %esi
	movl	92(%rdi), %r10d
	testl	%esi, %esi
	jle	L2
	movl	648(%rdi), %edx
	movzbl	%r10b, %r9d
	xorl	%ecx, %ecx
	movq	_BZ2_crc32Table@GOTPCREL(%rip), %r8
	.align 4,0x90
L3:
	movl	%edx, %eax
	addl	$1, %ecx
	sall	$8, %edx
	shrl	$24, %eax
	xorl	%r9d, %eax
	xorl	(%r8,%rax,4), %edx
	cmpl	%esi, %ecx
	jne	L3
	movl	%r10d, %eax
	movl	%edx, 648(%rdi)
	movb	$1, 128(%rdi,%rax)
	movslq	108(%rdi), %rax
	addq	64(%rdi), %rax
	cmpl	$2, %ecx
	je	L5
	cmpl	$3, %ecx
	je	L6
	cmpl	$1, %ecx
	je	L12
L4:
	subl	$4, %esi
	movslq	%esi, %rsi
	movb	$1, 128(%rdi,%rsi)
	movb	%r10b, (%rax)
	movl	108(%rdi), %eax
	movq	64(%rdi), %rdx
	addl	$1, %eax
	movl	%eax, 108(%rdi)
	cltq
	movb	%r10b, (%rdx,%rax)
	movl	108(%rdi), %eax
	movq	64(%rdi), %rdx
	addl	$1, %eax
	movl	%eax, 108(%rdi)
	cltq
	movb	%r10b, (%rdx,%rax)
	movl	108(%rdi), %eax
	movq	64(%rdi), %rdx
	addl	$1, %eax
	movl	%eax, 108(%rdi)
	cltq
	movb	%r10b, (%rdx,%rax)
	movl	108(%rdi), %eax
	movzbl	96(%rdi), %esi
	movq	64(%rdi), %rcx
	addl	$1, %eax
	movl	%eax, 108(%rdi)
	leal	-4(%rsi), %edx
	cltq
	movb	%dl, (%rcx,%rax)
	addl	$1, 108(%rdi)
	ret
	.align 4,0x90
L6:
	movb	%r10b, (%rax)
	movl	108(%rdi), %eax
	movq	64(%rdi), %rdx
	addl	$1, %eax
	movl	%eax, 108(%rdi)
	cltq
	movb	%r10b, (%rdx,%rax)
L10:
	movl	108(%rdi), %eax
	movq	64(%rdi), %rdx
	addl	$1, %eax
	movl	%eax, 108(%rdi)
	cltq
	movb	%r10b, (%rdx,%rax)
	addl	$1, 108(%rdi)
	ret
	.align 4,0x90
L12:
	movb	%r10b, (%rax)
	addl	$1, 108(%rdi)
	ret
	.align 4,0x90
L5:
	movb	%r10b, (%rax)
	jmp	L10
	.align 4,0x90
L2:
	movl	%r10d, %eax
	movb	$1, 128(%rdi,%rax)
	movslq	108(%rdi), %rax
	addq	64(%rdi), %rax
	jmp	L4
LFE39:
	.align 4,0x90
_default_bzfree:
LFB34:
	testq	%rsi, %rsi
	je	L13
	movq	%rsi, %rdi
	jmp	_free
	.align 4,0x90
L13:
	ret
LFE34:
	.align 4,0x90
_default_bzalloc:
LFB33:
	imull	%edx, %esi
	movslq	%esi, %rdi
	jmp	_malloc
LFE33:
	.align 4,0x90
_handle_compress.isra.2:
LFB74:
	pushq	%r12
LCFI0:
	xorl	%r12d, %r12d
	pushq	%rbp
LCFI1:
	xorl	%ebp, %ebp
	pushq	%rbx
LCFI2:
	movq	%rdi, %rbx
	movl	12(%rdi), %eax
	jmp	L17
	.align 4,0x90
L18:
	cmpl	$2, %eax
	je	L85
L17:
	cmpl	$1, %eax
	jne	L18
L54:
	movq	(%rbx), %rax
	xorl	%edi, %edi
	movl	120(%rbx), %edx
	movl	32(%rax), %ecx
	jmp	L21
	.align 4,0x90
L87:
	cmpl	%esi, %edx
	jge	L20
	movq	80(%rbx), %rcx
	movslq	%edx, %rdx
	movq	24(%rax), %rax
	movzbl	(%rcx,%rdx), %edx
	movb	%dl, (%rax)
	movl	120(%rbx), %eax
	leal	1(%rax), %edx
	movq	(%rbx), %rax
	movl	%edx, 120(%rbx)
	movl	32(%rax), %edi
	addq	$1, 24(%rax)
	leal	-1(%rdi), %ecx
	movl	36(%rax), %edi
	movl	%ecx, 32(%rax)
	leal	1(%rdi), %esi
	movl	$1, %edi
	testl	%esi, %esi
	movl	%esi, 36(%rax)
	je	L86
L21:
	testl	%ecx, %ecx
	movl	116(%rbx), %esi
	jne	L87
	orl	%edi, %ebp
	cmpl	%esi, %edx
	jl	L23
	movl	8(%rbx), %esi
	cmpl	$4, %esi
	jne	L24
L91:
	movl	16(%rbx), %edi
	testl	%edi, %edi
	jne	L25
	cmpl	$255, 92(%rbx)
	ja	L23
	movl	96(%rbx), %esi
	testl	%esi, %esi
	jle	L23
L25:
	leaq	128(%rbx), %rdx
	movl	$32, %ecx
	xorl	%eax, %eax
	movl	$0, 108(%rbx)
	movq	%rdx, %rdi
	xorl	%edx, %edx
	movq	$0, 116(%rbx)
	movl	$-1, 648(%rbx)
	rep stosq
	movl	$2, 12(%rbx)
	addl	$1, 660(%rbx)
	movl	112(%rbx), %r10d
L29:
	cmpl	%edx, %r10d
	movl	16(%rbx), %ecx
	jle	L40
L92:
	movq	(%rbx), %rax
	movl	8(%rax), %edi
	testl	%edi, %edi
	je	L40
	testl	%ecx, %ecx
	je	L41
	movq	(%rax), %r8
	jmp	L42
	.align 4,0x90
L90:
	cmpl	$1, %r9d
	je	L88
	cmpl	$255, %esi
	jbe	L47
L49:
	movl	%r11d, 92(%rbx)
	movl	$1, 96(%rbx)
L46:
	addq	$1, %r8
	subl	$1, %edi
	addl	$1, 12(%rax)
	movq	%r8, (%rax)
	movl	%edi, 8(%rax)
	jne	L50
	addl	$1, 16(%rax)
L50:
	subl	$1, %ecx
	cmpl	%r10d, %edx
	movl	%ecx, 16(%rbx)
	jge	L89
	testl	%edi, %edi
	je	L59
	testl	%ecx, %ecx
	je	L43
L42:
	movzbl	(%r8), %r11d
	movl	92(%rbx), %esi
	movl	96(%rbx), %r9d
	cmpl	%esi, %r11d
	jne	L90
	cmpl	$255, %r9d
	je	L47
	addl	$1, %r9d
	movl	108(%rbx), %edx
	movl	%r9d, 96(%rbx)
	movq	(%rax), %r8
	movl	8(%rax), %edi
	movl	16(%rbx), %ecx
	jmp	L46
	.align 4,0x90
L88:
	movl	648(%rbx), %eax
	movslq	%edx, %rdx
	movq	_BZ2_crc32Table@GOTPCREL(%rip), %rdi
	movl	%eax, %ecx
	sall	$8, %eax
	shrl	$24, %ecx
	xorl	%esi, %ecx
	movzbl	%cl, %ecx
	xorl	(%rdi,%rcx,4), %eax
	movl	%eax, 648(%rbx)
	movl	%esi, %eax
	movb	$1, 128(%rbx,%rax)
	movq	64(%rbx), %rax
	movb	%sil, (%rax,%rdx)
	movl	108(%rbx), %eax
	movl	%r11d, 92(%rbx)
	movl	112(%rbx), %r10d
	movl	16(%rbx), %ecx
	leal	1(%rax), %edx
	movq	(%rbx), %rax
	movl	%edx, 108(%rbx)
	movq	(%rax), %r8
	movl	8(%rax), %edi
	jmp	L46
	.align 4,0x90
L47:
	movq	%rbx, %rdi
	call	_add_pair_to_block
	movq	(%rbx), %rax
	movl	108(%rbx), %edx
	movl	112(%rbx), %r10d
	movl	16(%rbx), %ecx
	movq	(%rax), %r8
	movl	8(%rax), %edi
	jmp	L49
	.align 4,0x90
L20:
	movl	8(%rbx), %esi
	orl	%edi, %ebp
	cmpl	$4, %esi
	je	L91
L24:
	leaq	128(%rbx), %rdx
	xorl	%eax, %eax
	movl	$32, %ecx
	movl	$0, 108(%rbx)
	movq	%rdx, %rdi
	movq	$0, 116(%rbx)
	movl	$-1, 648(%rbx)
	rep stosq
	movl	$2, 12(%rbx)
	addl	$1, 660(%rbx)
	cmpl	$3, %esi
	jne	L58
	movl	16(%rbx), %ecx
	testl	%ecx, %ecx
	jne	L27
	cmpl	$255, 92(%rbx)
	ja	L23
	movl	96(%rbx), %edx
	testl	%edx, %edx
	jle	L23
L27:
	movl	112(%rbx), %r10d
	xorl	%edx, %edx
	movl	16(%rbx), %ecx
	cmpl	%edx, %r10d
	jg	L92
	.align 4,0x90
L40:
	testl	%ecx, %ecx
	je	L41
L52:
	movl	112(%rbx), %eax
	cmpl	%eax, 108(%rbx)
	jl	L55
L57:
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	_BZ2_compressBlock
	movl	$1, 12(%rbx)
	jmp	L54
	.align 4,0x90
L86:
	addl	$1, 40(%rax)
	jmp	L21
	.align 4,0x90
L43:
	cmpl	$2, 8(%rbx)
	movl	$1, %r12d
	je	L52
L41:
	cmpl	$255, 92(%rbx)
	jbe	L93
L53:
	xorl	%esi, %esi
	cmpl	$4, 8(%rbx)
	movq	$256, 92(%rbx)
	movq	%rbx, %rdi
	sete	%sil
	call	_BZ2_compressBlock
	movl	$1, 12(%rbx)
	jmp	L54
	.align 4,0x90
L89:
	movl	$1, %esi
L30:
	orl	%esi, %r12d
	cmpl	$2, 8(%rbx)
	je	L57
L84:
	movl	16(%rbx), %ecx
	jmp	L40
	.align 4,0x90
L59:
	movl	$1, %esi
L31:
	orl	%esi, %r12d
	cmpl	$2, 8(%rbx)
	jne	L84
L23:
	movl	%r12d, %eax
	popq	%rbx
LCFI3:
	orl	%ebp, %eax
	popq	%rbp
LCFI4:
	popq	%r12
LCFI5:
	ret
	.align 4,0x90
L58:
LCFI6:
	xorl	%edx, %edx
L26:
	movl	112(%rbx), %r9d
	cmpl	$2, %esi
	movl	%r9d, %r10d
	jne	L29
	xorl	%esi, %esi
	jmp	L38
	.align 4,0x90
L96:
	cmpl	$1, %r8d
	je	L94
	cmpl	$255, %edi
	jbe	L35
L37:
	movl	%r11d, 92(%rbx)
	movl	$1, 96(%rbx)
L34:
	movl	12(%rax), %edi
	subl	$1, %ecx
	addq	$1, %rsi
	movl	%ecx, 8(%rax)
	movq	%rsi, (%rax)
	movl	$1, %esi
	leal	1(%rdi), %ecx
	testl	%ecx, %ecx
	movl	%ecx, 12(%rax)
	je	L95
L38:
	cmpl	%r9d, %edx
	jge	L30
	movq	(%rbx), %rax
	movl	8(%rax), %ecx
	testl	%ecx, %ecx
	je	L31
	movq	(%rax), %rsi
	movl	92(%rbx), %edi
	movl	96(%rbx), %r8d
	movzbl	(%rsi), %r11d
	cmpl	%edi, %r11d
	jne	L96
	cmpl	$255, %r8d
	je	L35
	addl	$1, %r8d
	movl	%r8d, 96(%rbx)
	jmp	L34
	.align 4,0x90
L94:
	movl	648(%rbx), %eax
	movslq	%edx, %rdx
	movq	_BZ2_crc32Table@GOTPCREL(%rip), %rsi
	movl	%eax, %ecx
	sall	$8, %eax
	shrl	$24, %ecx
	xorl	%edi, %ecx
	movzbl	%cl, %ecx
	xorl	(%rsi,%rcx,4), %eax
	movl	%eax, 648(%rbx)
	movl	%edi, %eax
	movb	$1, 128(%rbx,%rax)
	movq	64(%rbx), %rax
	movb	%dil, (%rax,%rdx)
	movl	108(%rbx), %eax
	movl	%r11d, 92(%rbx)
	movl	112(%rbx), %r9d
	leal	1(%rax), %edx
	movq	(%rbx), %rax
	movl	%edx, 108(%rbx)
	movq	(%rax), %rsi
	movl	8(%rax), %ecx
	jmp	L34
	.align 4,0x90
L35:
	movq	%rbx, %rdi
	call	_add_pair_to_block
	movq	(%rbx), %rax
	movl	108(%rbx), %edx
	movl	112(%rbx), %r9d
	movq	(%rax), %rsi
	movl	8(%rax), %ecx
	jmp	L37
	.align 4,0x90
L95:
	addl	$1, 16(%rax)
	jmp	L38
	.align 4,0x90
L93:
	movq	%rbx, %rdi
	call	_add_pair_to_block
	jmp	L53
	.align 4,0x90
L55:
	movq	(%rbx), %rax
	movl	8(%rax), %eax
	testl	%eax, %eax
	je	L23
	movl	12(%rbx), %eax
	jmp	L17
L85:
	movl	108(%rbx), %edx
	movl	8(%rbx), %esi
	jmp	L26
LFE74:
	.align 4,0x90
_bzopen_or_bzdopen.isra.7.constprop.10:
LFB83:
	testq	%rdi, %rdi
	jne	L112
	jmp	L98
	.align 4,0x90
L109:
	addq	$1, %rdi
L112:
	cmpb	$0, (%rdi)
	jne	L109
L98:
	xorl	%eax, %eax
	ret
LFE83:
	.cstring
lC0:
	.ascii "1.0.3, 15-Feb-2005\0"
	.align 3
lC1:
	.ascii "\12\12bzip2/libbzip2: internal error number %d.\12This may be a bug in bzip2/libbzip2, %s.\12It may also be a bug in your compiler.  Please do not bother the\12original author of bzip2 with a bug report for this.  He\12doesn't know anything about bzip2 as it appears in CPU2006.\12\12\0"
	.align 3
lC2:
	.ascii "\12*** A special note about internal error number 1007 ***\12\12Experience suggests that a common cause of i.e. 1007\12is unreliable memory or other hardware.  The 1007 assertion\12just happens to cross-check the results of huge numbers of\12memory reads/writes, and so acts (unintendedly) as a stress\12test of your memory system.\12\12I suggest the following: try compressing the file again,\12possibly monitoring progress in detail with the -vv flag.\12\12* If the error cannot be reproduced, and/or happens at different\12  points in compression, you may have a flaky memory system.\12  Try a memory-test program.  I have used Memtest86\12  (www.memtest86.com).  At the time of writing it is free (GPLd).\12  Memtest86 tests memory much more thorougly than your BIOSs\12  power-on test, and may find failures that the BIOS doesn't.\12\12* If the error can be repeatably reproduced, this is a bug in\12  bzip2, and I would very much like to hear about it.  Please\12  let me know, and, ideally, save a copy of the file causing the\12  problem -- without which I will be unable to investigate it.\12\12\0"
	.text
	.align 4,0x90
	.globl _BZ2_bz__AssertH__fail
_BZ2_bz__AssertH__fail:
LFB31:
	pushq	%rbp
LCFI7:
	leaq	lC0(%rip), %rcx
	movl	%edi, %edx
	xorl	%eax, %eax
	pushq	%rbx
LCFI8:
	leaq	lC1(%rip), %rsi
	movl	%edi, %ebx
	subq	$8, %rsp
LCFI9:
	movq	___stderrp@GOTPCREL(%rip), %rbp
	movq	0(%rbp), %rdi
	call	_fprintf
	cmpl	$1007, %ebx
	je	L116
L114:
	xorl	%edi, %edi
	call	_exit
L116:
	movq	0(%rbp), %rcx
	movl	$1056, %edx
	movl	$1, %esi
	leaq	lC2(%rip), %rdi
	call	_fwrite
	jmp	L114
LFE31:
	.align 4,0x90
	.globl _BZ2_bzCompressInit
_BZ2_bzCompressInit:
LFB38:
	leal	-1(%rsi), %eax
	cmpl	$8, %eax
	ja	L142
	pushq	%r15
LCFI10:
	pushq	%r14
LCFI11:
	pushq	%r13
LCFI12:
	pushq	%r12
LCFI13:
	pushq	%rbp
LCFI14:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI15:
	subq	$8, %rsp
LCFI16:
	testq	%rdi, %rdi
	je	L128
	cmpl	$250, %ecx
	movl	%ecx, %r12d
	ja	L128
	testl	%ecx, %ecx
	movl	$30, %eax
	movl	%esi, %r15d
	cmove	%eax, %r12d
	movq	56(%rdi), %rax
	movl	%edx, %r14d
	testq	%rax, %rax
	je	L145
	cmpq	$0, 64(%rbp)
	je	L146
L121:
	movq	72(%rbp), %rdi
	movl	$1, %edx
	movl	$55768, %esi
	call	*%rax
	testq	%rax, %rax
	movq	%rax, %rbx
	je	L130
	imull	$100000, %r15d, %r13d
	movq	72(%rbp), %rdi
	movl	$1, %edx
	movq	%rbp, (%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	leal	0(,%r13,4), %esi
	movq	$0, 40(%rax)
	call	*56(%rbp)
	leal	136(,%r13,4), %esi
	movq	72(%rbp), %rdi
	movl	$1, %edx
	movq	%rax, 24(%rbx)
	call	*56(%rbp)
	movl	$262148, %esi
	movq	72(%rbp), %rdi
	movl	$1, %edx
	movq	%rax, 32(%rbx)
	call	*56(%rbp)
	movq	24(%rbx), %rsi
	movq	%rax, 40(%rbx)
	testq	%rsi, %rsi
	je	L122
	movq	32(%rbx), %rdx
	testq	%rdx, %rdx
	je	L131
	testq	%rax, %rax
	je	L131
	movq	%rdx, 64(%rbx)
	leaq	128(%rbx), %rdx
	subl	$19, %r13d
	movabsq	$8589934594, %rax
	movq	%rax, 8(%rbx)
	movq	%rdx, %rdi
	xorl	%eax, %eax
	movl	$32, %ecx
	movl	$0, 652(%rbx)
	movl	%r15d, 664(%rbx)
	movl	%r13d, 112(%rbx)
	movl	%r14d, 656(%rbx)
	movl	%r12d, 88(%rbx)
	movq	%rsi, 72(%rbx)
	movq	$0, 80(%rbx)
	movq	%rsi, 56(%rbx)
	movq	%rbx, 48(%rbp)
	movq	$0, 12(%rbp)
	movq	$0, 36(%rbp)
	movq	$256, 92(%rbx)
	movl	$0, 108(%rbx)
	movq	$0, 116(%rbx)
	movl	$-1, 648(%rbx)
	rep stosq
	movl	$1, 660(%rbx)
L117:
	addq	$8, %rsp
LCFI17:
	popq	%rbx
LCFI18:
	popq	%rbp
LCFI19:
	popq	%r12
LCFI20:
	popq	%r13
LCFI21:
	popq	%r14
LCFI22:
	popq	%r15
LCFI23:
	ret
	.align 4,0x90
L145:
LCFI24:
	cmpq	$0, 64(%rbp)
	leaq	_default_bzalloc(%rip), %rax
	movq	%rax, 56(%rdi)
	jne	L121
L146:
	leaq	_default_bzfree(%rip), %rcx
	movq	%rcx, 64(%rbp)
	jmp	L121
	.align 4,0x90
L128:
	movl	$-2, %eax
	jmp	L117
	.align 4,0x90
L131:
	movq	72(%rbp), %rdi
	call	*64(%rbp)
L122:
	movq	32(%rbx), %rsi
	testq	%rsi, %rsi
	je	L125
	movq	72(%rbp), %rdi
	call	*64(%rbp)
L125:
	movq	40(%rbx), %rsi
	movq	64(%rbp), %rax
	movq	72(%rbp), %rdi
	testq	%rsi, %rsi
	je	L126
	call	*%rax
	movq	72(%rbp), %rdi
	movq	64(%rbp), %rax
L126:
	movq	%rbx, %rsi
	call	*%rax
	movl	$-3, %eax
	jmp	L117
L130:
	movl	$-3, %eax
	jmp	L117
L142:
LCFI25:
	movl	$-2, %eax
	ret
LFE38:
	.cstring
lC3:
	.ascii "w\0"
lC4:
	.ascii "r\0"
	.text
	.align 4,0x90
_bzopen_or_bzdopen.isra.7:
LFB79:
	pushq	%rbp
LCFI26:
	xorl	%ecx, %ecx
	pushq	%rbx
LCFI27:
	subq	$24, %rsp
LCFI28:
	testq	%rsi, %rsi
	movq	$0, 6(%rsp)
	movw	%cx, 14(%rsp)
	je	L177
	movsbl	(%rsi), %eax
	testb	%al, %al
	je	L159
	xorl	%ecx, %ecx
	movl	$9, %ebx
	jmp	L155
	.align 4,0x90
L180:
	cmpb	$114, %al
	je	L178
	subl	$48, %eax
	cmpl	$9, %eax
	cmovbe	%eax, %ebx
L154:
	addq	$1, %rsi
	movsbl	(%rsi), %eax
	testb	%al, %al
	je	L179
L155:
	cmpb	$115, %al
	je	L154
	cmpb	$119, %al
	jne	L180
	addq	$1, %rsi
	movsbl	(%rsi), %eax
	movl	$1, %ecx
	testb	%al, %al
	jne	L155
L179:
	leaq	lC3(%rip), %rax
	testl	%ecx, %ecx
	leaq	lC4(%rip), %rsi
	cmove	%rsi, %rax
L150:
	movzbl	(%rax), %eax
	testl	%edx, %edx
	movb	%al, 6(%rsp)
	movl	$98, %eax
	movw	%ax, 7(%rsp)
	jne	L177
	testq	%rdi, %rdi
	je	L157
	cmpb	$0, (%rdi)
	jne	L177
L157:
	testl	%ecx, %ecx
	je	L177
	movl	$5104, %edi
	call	_malloc
	testq	%rax, %rax
	movq	%rax, %rbp
	je	L177
	movb	$0, 5100(%rax)
	cmpl	$9, %ebx
	movl	$1, %esi
	movl	$30, %ecx
	movl	$1, (%rax)
	leaq	5016(%rbp), %rdi
	movl	$0, 5096(%rax)
	movl	$0, 5004(%rax)
	movb	$1, 5008(%rax)
	movq	$0, 5072(%rax)
	movq	$0, 5080(%rax)
	movq	$0, 5088(%rax)
	movl	$9, %eax
	cmovg	%eax, %ebx
	testl	%ebx, %ebx
	cmovg	%ebx, %esi
	xorl	%edx, %edx
	call	_BZ2_bzCompressInit
	testl	%eax, %eax
	jne	L181
	movl	$0, 5024(%rbp)
	movq	%rbp, %rax
	movb	$1, 5100(%rbp)
	addq	$24, %rsp
LCFI29:
	popq	%rbx
LCFI30:
	popq	%rbp
LCFI31:
	ret
	.align 4,0x90
L178:
LCFI32:
	xorl	%ecx, %ecx
	jmp	L154
L181:
	movq	%rbp, %rdi
	call	_free
L177:
	xorl	%ebp, %ebp
	addq	$24, %rsp
LCFI33:
	movq	%rbp, %rax
	popq	%rbx
LCFI34:
	popq	%rbp
LCFI35:
	ret
	.align 4,0x90
L159:
LCFI36:
	leaq	lC4(%rip), %rax
	movl	$9, %ebx
	xorl	%ecx, %ecx
	jmp	L150
LFE79:
	.align 4,0x90
	.globl _BZ2_bzCompress
_BZ2_bzCompress:
LFB44:
	testq	%rdi, %rdi
	je	L251
	pushq	%rbx
LCFI37:
	movq	48(%rdi), %rbx
	testq	%rbx, %rbx
	je	L183
	movq	(%rbx), %rax
	cmpq	%rdi, %rax
	jne	L183
	cmpl	$2, %esi
	movl	8(%rbx), %edx
	jne	L184
	cmpl	$2, %edx
	je	L186
	jle	L257
	cmpl	$3, %edx
	jne	L261
L203:
	movl	$-1, %eax
L182:
	popq	%rbx
LCFI38:
	ret
	.align 4,0x90
L257:
LCFI39:
	cmpl	$1, %edx
	movl	$-1, %eax
	je	L182
L209:
	xorl	%eax, %eax
L262:
	popq	%rbx
LCFI40:
	ret
	.align 4,0x90
L186:
LCFI41:
	movl	8(%rax), %edx
	movl	$4, 8(%rbx)
	movl	%edx, 16(%rbx)
L191:
	movl	8(%rax), %eax
	cmpl	%eax, 16(%rbx)
	jne	L203
	movq	%rbx, %rdi
	call	_handle_compress.isra.2
	testb	%al, %al
	je	L203
	movl	16(%rbx), %ecx
	movl	$3, %eax
	testl	%ecx, %ecx
	jne	L182
	cmpl	$255, 92(%rbx)
	ja	L205
	movl	96(%rbx), %edx
	testl	%edx, %edx
	jg	L182
L205:
	movl	116(%rbx), %ecx
	movl	$3, %eax
	cmpl	%ecx, 120(%rbx)
	jl	L182
	movl	$1, 8(%rbx)
	movl	$4, %eax
	popq	%rbx
LCFI42:
	ret
	.align 4,0x90
L261:
LCFI43:
	cmpl	$4, %edx
	je	L191
	xorl	%eax, %eax
	jmp	L262
	.align 4,0x90
L183:
	movl	$-2, %eax
	popq	%rbx
LCFI44:
	ret
	.align 4,0x90
L184:
LCFI45:
	cmpl	$1, %esi
	je	L192
	testl	%esi, %esi
	je	L193
	cmpl	$2, %edx
	je	L183
	jle	L257
	cmpl	$3, %edx
	je	L189
	cmpl	$4, %edx
	jne	L209
	cmpl	$2, %esi
	je	L191
	jmp	L203
	.align 4,0x90
L189:
	cmpl	$1, %esi
	jne	L203
L202:
	movl	8(%rax), %eax
	cmpl	%eax, 16(%rbx)
	jne	L203
	movq	%rbx, %rdi
	call	_handle_compress.isra.2
	movl	16(%rbx), %edi
	movl	$2, %eax
	testl	%edi, %edi
	jne	L182
	cmpl	$255, 92(%rbx)
	ja	L204
	movl	96(%rbx), %esi
	testl	%esi, %esi
	jg	L182
L204:
	movl	116(%rbx), %ecx
	movl	$2, %eax
	cmpl	%ecx, 120(%rbx)
	jl	L182
	movl	$2, 8(%rbx)
	movl	$1, %eax
	popq	%rbx
LCFI46:
	ret
L192:
LCFI47:
	cmpl	$2, %edx
	je	L199
	jle	L257
	cmpl	$3, %edx
	je	L202
L255:
	cmpl	$4, %edx
	je	L203
	jmp	L209
L199:
	movl	8(%rax), %edx
	movl	$3, 8(%rbx)
	movl	%edx, 16(%rbx)
	jmp	L202
L251:
LCFI48:
	movl	$-2, %eax
	ret
L193:
LCFI49:
	cmpl	$2, %edx
	je	L196
	jle	L257
	cmpl	$3, %edx
	jne	L255
	jmp	L203
	.align 4,0x90
L196:
	movq	%rbx, %rdi
	call	_handle_compress.isra.2
	testb	%al, %al
	je	L183
	movl	$1, %eax
	popq	%rbx
LCFI50:
	ret
LFE44:
	.align 4,0x90
	.globl _BZ2_bzCompressEnd
_BZ2_bzCompressEnd:
LFB45:
	testq	%rdi, %rdi
	je	L268
	pushq	%rbp
LCFI51:
	movl	$-2, %eax
	pushq	%rbx
LCFI52:
	subq	$8, %rsp
LCFI53:
	movq	48(%rdi), %rbp
	testq	%rbp, %rbp
	je	L263
	cmpq	%rdi, 0(%rbp)
	jne	L263
	movq	24(%rbp), %rsi
	movq	%rdi, %rbx
	movq	64(%rdi), %rax
	movq	72(%rdi), %rdi
	testq	%rsi, %rsi
	je	L265
	call	*%rax
	movq	64(%rbx), %rax
	movq	72(%rbx), %rdi
L265:
	movq	32(%rbp), %rsi
	testq	%rsi, %rsi
	je	L266
	call	*%rax
	movq	64(%rbx), %rax
	movq	72(%rbx), %rdi
L266:
	movq	40(%rbp), %rsi
	testq	%rsi, %rsi
	je	L267
	call	*%rax
	movq	64(%rbx), %rax
	movq	72(%rbx), %rdi
L267:
	movq	48(%rbx), %rsi
	call	*%rax
	movq	$0, 48(%rbx)
	xorl	%eax, %eax
L263:
	addq	$8, %rsp
LCFI54:
	popq	%rbx
LCFI55:
	popq	%rbp
LCFI56:
	ret
L268:
LCFI57:
	movl	$-2, %eax
	ret
LFE45:
	.align 4,0x90
	.globl _BZ2_bzDecompressInit
_BZ2_bzDecompressInit:
LFB46:
	testq	%rdi, %rdi
	je	L290
	cmpl	$1, %edx
	ja	L290
	cmpl	$4, %esi
	ja	L290
	pushq	%r12
LCFI58:
	pushq	%rbp
LCFI59:
	pushq	%rbx
LCFI60:
	movq	56(%rdi), %rax
	testq	%rax, %rax
	je	L296
	cmpq	$0, 64(%rdi)
	je	L297
L287:
	movl	%edx, %ebp
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movq	72(%rdi), %rdi
	movl	$1, %edx
	movl	$64144, %esi
	call	*%rax
	testq	%rax, %rax
	je	L291
	movq	%rbx, (%rax)
	movq	%rax, 48(%rbx)
	movl	$10, 8(%rax)
	movq	$0, 32(%rax)
	movl	$0, 3188(%rax)
	movq	$0, 12(%rbx)
	movq	$0, 36(%rbx)
	movb	%bpl, 44(%rax)
	movq	$0, 3168(%rax)
	movq	$0, 3160(%rax)
	movq	$0, 3152(%rax)
	movl	$0, 48(%rax)
	movl	%r12d, 52(%rax)
	xorl	%eax, %eax
L284:
	popq	%rbx
LCFI61:
	popq	%rbp
LCFI62:
	popq	%r12
LCFI63:
	ret
	.align 4,0x90
L296:
LCFI64:
	cmpq	$0, 64(%rdi)
	leaq	_default_bzalloc(%rip), %rax
	movq	%rax, 56(%rdi)
	jne	L287
L297:
	leaq	_default_bzfree(%rip), %rcx
	movq	%rcx, 64(%rdi)
	jmp	L287
	.align 4,0x90
L290:
LCFI65:
	movl	$-2, %eax
	ret
L291:
LCFI66:
	movl	$-3, %eax
	jmp	L284
LFE46:
	.align 4,0x90
	.globl _BZ2_indexIntoF
_BZ2_indexIntoF:
LFB48:
	movl	$256, %ecx
	xorl	%eax, %eax
	.align 4,0x90
L299:
	leal	(%rcx,%rax), %edx
	sarl	%edx
	movslq	%edx, %r8
	cmpl	(%rsi,%r8,4), %edi
	jl	L300
	movl	%ecx, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	movl	%edx, %eax
	jne	L299
	ret
	.align 4,0x90
L300:
	movl	%edx, %ecx
	subl	%eax, %ecx
	cmpl	$1, %ecx
	je	L305
	movl	%edx, %ecx
	jmp	L299
	.align 4,0x90
L305:
	ret
LFE48:
	.cstring
lC5:
	.ascii " {0x%08x, 0x%08x}\0"
	.align 3
lC6:
	.ascii "\12    combined CRCs: stored = 0x%08x, computed = 0x%08x\0"
	.text
	.align 4,0x90
	.globl _BZ2_bzDecompress
_BZ2_bzDecompress:
LFB50:
	pushq	%r15
LCFI67:
	pushq	%r14
LCFI68:
	pushq	%r13
LCFI69:
	pushq	%r12
LCFI70:
	pushq	%rbp
LCFI71:
	pushq	%rbx
LCFI72:
	subq	$24, %rsp
LCFI73:
	testq	%rdi, %rdi
	je	L413
	movq	48(%rdi), %rbx
	movl	$-2, %r12d
	testq	%rbx, %rbx
	je	L306
	cmpq	%rdi, (%rbx)
	jne	L306
	movl	8(%rbx), %eax
	cmpl	$1, %eax
	je	L416
	leaq	1096(%rbx), %rbp
	cmpl	$2, %eax
	je	L308
	.align 4,0x90
L479:
	cmpl	$9, %eax
	jg	L309
	cmpl	$2, %eax
	jne	L479
L308:
	movq	(%rbx), %rax
	cmpb	$0, 44(%rbx)
	movzbl	20(%rbx), %ecx
	movl	32(%rax), %edx
	je	L311
L482:
	testb	%cl, %cl
	je	L313
	.align 4,0x90
L312:
	testl	%edx, %edx
	je	L474
L314:
	movl	16(%rbx), %edi
	testl	%edi, %edi
	je	L316
	movq	24(%rax), %rax
	movzbl	12(%rbx), %edx
	movq	_BZ2_crc32Table@GOTPCREL(%rip), %rcx
	movb	%dl, (%rax)
	movl	3184(%rbx), %eax
	movl	%eax, %edx
	sall	$8, %eax
	shrl	$24, %edx
	xorb	12(%rbx), %dl
	movzbl	%dl, %edx
	xorl	(%rcx,%rdx,4), %eax
	subl	$1, 16(%rbx)
	movl	%eax, 3184(%rbx)
	movq	(%rbx), %rax
	movl	32(%rax), %edx
	addq	$1, 24(%rax)
	subl	$1, %edx
	addl	$1, 36(%rax)
	movl	%edx, 32(%rax)
	jne	L312
	addl	$1, 40(%rax)
	testl	%edx, %edx
	jne	L314
	.align 4,0x90
L474:
	movl	1092(%rbx), %r8d
L315:
	movl	64080(%rbx), %eax
	addl	$1, %eax
	cmpl	%r8d, %eax
	jne	L444
	movl	16(%rbx), %eax
	testl	%eax, %eax
	jne	L444
L412:
	movl	3184(%rbx), %ecx
	movl	52(%rbx), %eax
	notl	%ecx
	cmpl	$2, %eax
	movl	%ecx, 3184(%rbx)
	jg	L480
L407:
	cmpl	$1, %eax
	jle	L408
	movq	___stderrp@GOTPCREL(%rip), %rax
	movl	$93, %edi
	movq	(%rax), %rsi
	call	_fputc
L408:
	movl	3184(%rbx), %edx
	cmpl	3176(%rbx), %edx
	jne	L356
	movl	3188(%rbx), %eax
	movl	$14, 8(%rbx)
	roll	%eax
	xorl	%edx, %eax
	movl	%eax, 3188(%rbx)
L309:
	movq	%rbx, %rdi
	call	_BZ2_decompress
	cmpl	$4, %eax
	movl	%eax, %r12d
	je	L481
	cmpl	$2, 8(%rbx)
	jne	L306
	movq	(%rbx), %rax
	cmpb	$0, 44(%rbx)
	movzbl	20(%rbx), %ecx
	movl	32(%rax), %edx
	jne	L482
	.align 4,0x90
L311:
	testb	%cl, %cl
	jne	L380
	movq	3152(%rbx), %rsi
	movl	3184(%rbx), %ecx
	movzbl	12(%rbx), %r10d
	movl	16(%rbx), %edi
	movq	%rsi, (%rsp)
	movl	64080(%rbx), %esi
	movl	1092(%rbx), %r8d
	movl	64(%rbx), %r15d
	movl	60(%rbx), %r12d
	movq	24(%rax), %rax
	addl	$1, %esi
	movl	%esi, 12(%rsp)
	movl	%edx, %esi
L398:
	testl	%edi, %edi
	jg	L483
L399:
	cmpl	%r8d, 12(%rsp)
	jl	L356
	je	L438
	movq	(%rsp), %rdi
	leal	1(%r8), %r9d
	movl	%r15d, %r10d
	movl	(%rdi,%r12,4), %edi
	movl	%edi, %r12d
	movzbl	%dil, %edi
	shrl	$8, %r12d
	cmpl	%edi, %r15d
	je	L484
L404:
	testl	%esi, %esi
	jne	L485
	movl	%edi, %r15d
	movl	%r9d, %r8d
	movl	$1, %edi
	.align 4,0x90
L400:
	movq	(%rbx), %r9
	movl	36(%r9), %r11d
	addl	%r11d, %edx
	subl	%esi, %edx
	cmpl	%edx, %r11d
	movl	%edx, 36(%r9)
	jbe	L406
	addl	$1, 40(%r9)
L406:
	movq	(%rsp), %rdx
	movl	%ecx, 3184(%rbx)
	movb	%r10b, 12(%rbx)
	movl	%edi, 16(%rbx)
	movl	%r8d, 1092(%rbx)
	movl	%r15d, 64(%rbx)
	movq	%rdx, 3152(%rbx)
	movl	%r12d, 60(%rbx)
	movq	%rax, 24(%r9)
	movl	%esi, 32(%r9)
	jmp	L315
	.align 4,0x90
L487:
	movl	%ecx, %esi
L360:
	movq	3168(%rbx), %r13
	movl	%r12d, %ecx
	shrl	%ecx
	movq	3160(%rbx), %r8
	movzbl	0(%r13,%rcx), %edi
	leal	0(,%r12,4), %ecx
	andl	$4, %ecx
	shrl	%cl, %edi
	movzwl	(%r8,%r12,2), %ecx
	sall	$16, %edi
	andl	$983040, %edi
	orl	%ecx, %edi
	leal	1(%r10), %ecx
	movl	%edi, 60(%rbx)
	cmpl	%ecx, %r9d
	movl	%ecx, 1092(%rbx)
	je	L313
	movzbl	%sil, %esi
	cmpl	%esi, %r11d
	je	L361
L469:
	movl	%esi, 64(%rbx)
L313:
	testl	%edx, %edx
	je	L474
	movl	16(%rbx), %esi
	testl	%esi, %esi
	je	L354
L486:
	movq	24(%rax), %rax
	movzbl	12(%rbx), %edx
	movq	_BZ2_crc32Table@GOTPCREL(%rip), %rcx
	movb	%dl, (%rax)
	movl	3184(%rbx), %eax
	movl	%eax, %edx
	sall	$8, %eax
	shrl	$24, %edx
	xorb	12(%rbx), %dl
	movzbl	%dl, %edx
	xorl	(%rcx,%rdx,4), %eax
	subl	$1, 16(%rbx)
	movl	%eax, 3184(%rbx)
	movq	(%rbx), %rax
	movl	32(%rax), %edx
	addq	$1, 24(%rax)
	subl	$1, %edx
	addl	$1, 36(%rax)
	movl	%edx, 32(%rax)
	jne	L313
	addl	$1, 40(%rax)
	testl	%edx, %edx
	je	L474
	movl	16(%rbx), %esi
	testl	%esi, %esi
	jne	L486
L354:
	movl	64080(%rbx), %edi
	movl	1092(%rbx), %r10d
	leal	1(%rdi), %r9d
	cmpl	%r9d, %r10d
	je	L412
	jg	L356
	movl	64(%rbx), %r11d
	movl	$1, 16(%rbx)
	movl	$256, %edi
	xorl	%ecx, %ecx
	movl	60(%rbx), %r12d
	movb	%r11b, 12(%rbx)
L357:
	leal	(%rdi,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r8
	cmpl	0(%rbp,%r8,4), %r12d
	jge	L358
L488:
	movl	%esi, %edi
	subl	%ecx, %edi
	cmpl	$1, %edi
	je	L487
	movl	%esi, %edi
	leal	(%rdi,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r8
	cmpl	0(%rbp,%r8,4), %r12d
	jl	L488
L358:
	movl	%edi, %ecx
	subl	%esi, %ecx
	cmpl	$1, %ecx
	je	L360
	movl	%esi, %ecx
	jmp	L357
	.align 4,0x90
L316:
	movl	64080(%rbx), %edi
	movl	1092(%rbx), %r11d
	leal	1(%rdi), %r10d
	cmpl	%r10d, %r11d
	je	L412
	jg	L356
	movl	64(%rbx), %r12d
	movl	$1, 16(%rbx)
	movl	$256, %edi
	xorl	%ecx, %ecx
	movl	60(%rbx), %r9d
	movb	%r12b, 12(%rbx)
L320:
	leal	(%rdi,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r8
	cmpl	0(%rbp,%r8,4), %r9d
	jge	L321
L490:
	movl	%esi, %edi
	subl	%ecx, %edi
	cmpl	$1, %edi
	je	L489
	movl	%esi, %edi
	leal	(%rdi,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r8
	cmpl	0(%rbp,%r8,4), %r9d
	jl	L490
L321:
	movl	%edi, %ecx
	subl	%esi, %ecx
	cmpl	$1, %ecx
	je	L323
	movl	%esi, %ecx
	jmp	L320
	.align 4,0x90
L489:
	movl	%ecx, %esi
L323:
	movq	3168(%rbx), %r13
	movl	%r9d, %ecx
	shrl	%ecx
	movq	3160(%rbx), %r8
	movzbl	0(%r13,%rcx), %edi
	leal	0(,%r9,4), %ecx
	andl	$4, %ecx
	shrl	%cl, %edi
	movzwl	(%r8,%r9,2), %ecx
	movl	24(%rbx), %r9d
	sall	$16, %edi
	andl	$983040, %edi
	orl	%ecx, %edi
	testl	%r9d, %r9d
	movl	%edi, 60(%rbx)
	jne	L324
	movslq	28(%rbx), %r14
	movl	$0, %r15d
	movq	_BZ2_rNums@GOTPCREL(%rip), %r9
	movq	%r14, %rcx
	movl	(%r9,%r14,4), %r9d
	addl	$1, %ecx
	cmpl	$512, %ecx
	cmove	%r15d, %ecx
	movl	%r9d, 24(%rbx)
	movl	%ecx, 28(%rbx)
L324:
	subl	$1, %r9d
	cmpl	$1, %r9d
	movl	%r9d, 24(%rbx)
	sete	%cl
	xorl	%ecx, %esi
	leal	1(%r11), %ecx
	cmpl	%ecx, %r10d
	movl	%ecx, 1092(%rbx)
	je	L312
	movzbl	%sil, %esi
	cmpl	%esi, %r12d
	je	L326
L468:
	movl	%esi, 64(%rbx)
	jmp	L312
	.align 4,0x90
L470:
	movl	%esi, 64(%rbx)
L380:
	testl	%edx, %edx
	je	L474
	movl	16(%rbx), %ecx
	testl	%ecx, %ecx
	je	L383
L491:
	movq	24(%rax), %rax
	movzbl	12(%rbx), %edx
	movq	_BZ2_crc32Table@GOTPCREL(%rip), %rcx
	movb	%dl, (%rax)
	movl	3184(%rbx), %eax
	movl	%eax, %edx
	sall	$8, %eax
	shrl	$24, %edx
	xorb	12(%rbx), %dl
	movzbl	%dl, %edx
	xorl	(%rcx,%rdx,4), %eax
	subl	$1, 16(%rbx)
	movl	%eax, 3184(%rbx)
	movq	(%rbx), %rax
	movl	32(%rax), %edx
	addq	$1, 24(%rax)
	subl	$1, %edx
	addl	$1, 36(%rax)
	movl	%edx, 32(%rax)
	jne	L380
	addl	$1, 40(%rax)
	testl	%edx, %edx
	je	L474
	movl	16(%rbx), %ecx
	testl	%ecx, %ecx
	jne	L491
L383:
	movl	64080(%rbx), %edi
	movl	1092(%rbx), %r8d
	addl	$1, %edi
	cmpl	%edi, %r8d
	je	L412
	jg	L356
	movl	60(%rbx), %ecx
	movl	$1, 16(%rbx)
	movl	64(%rbx), %r10d
	movq	3152(%rbx), %r12
	movb	%r10b, 12(%rbx)
	movl	(%r12,%rcx,4), %r13d
	movl	24(%rbx), %ecx
	movl	%r13d, %r11d
	shrl	$8, %r11d
	testl	%ecx, %ecx
	movl	%r11d, 60(%rbx)
	jne	L385
	movslq	28(%rbx), %rsi
	movq	_BZ2_rNums@GOTPCREL(%rip), %rcx
	movq	%rsi, %r9
	movl	(%rcx,%rsi,4), %ecx
	addl	$1, %r9d
	movl	$0, %esi
	cmpl	$512, %r9d
	cmove	%esi, %r9d
	movl	%ecx, 24(%rbx)
	movl	%r9d, 28(%rbx)
L385:
	leal	1(%r8), %r9d
	subl	$1, %ecx
	cmpl	$1, %ecx
	movl	%ecx, 24(%rbx)
	sete	%sil
	movl	%r9d, 1092(%rbx)
	xorl	%r13d, %esi
	cmpl	%r9d, %edi
	je	L380
	movzbl	%sil, %esi
	cmpl	%esi, %r10d
	jne	L470
	movl	$2, 16(%rbx)
	movl	(%r12,%r11,4), %r13d
	movl	%r13d, %r11d
	shrl	$8, %r11d
	testl	%ecx, %ecx
	movl	%r11d, 60(%rbx)
	jne	L388
	movslq	28(%rbx), %rsi
	movq	_BZ2_rNums@GOTPCREL(%rip), %rcx
	movq	%rsi, %r9
	movl	(%rcx,%rsi,4), %ecx
	addl	$1, %r9d
	movl	$0, %esi
	cmpl	$512, %r9d
	cmove	%esi, %r9d
	movl	%ecx, 24(%rbx)
	movl	%r9d, 28(%rbx)
L388:
	leal	2(%r8), %r9d
	subl	$1, %ecx
	cmpl	$1, %ecx
	movl	%ecx, 24(%rbx)
	sete	%sil
	movl	%r9d, 1092(%rbx)
	xorl	%r13d, %esi
	cmpl	%r9d, %edi
	je	L380
	movzbl	%sil, %esi
	cmpl	%esi, %r10d
	jne	L470
	movl	$3, 16(%rbx)
	movl	(%r12,%r11,4), %r13d
	movl	%r13d, %r11d
	shrl	$8, %r11d
	testl	%ecx, %ecx
	movl	%r11d, 60(%rbx)
	jne	L391
	movslq	28(%rbx), %rsi
	movq	_BZ2_rNums@GOTPCREL(%rip), %rcx
	movq	%rsi, %r9
	movl	(%rcx,%rsi,4), %ecx
	addl	$1, %r9d
	movl	$0, %esi
	cmpl	$512, %r9d
	cmove	%esi, %r9d
	movl	%ecx, 24(%rbx)
	movl	%r9d, 28(%rbx)
L391:
	leal	3(%r8), %r9d
	subl	$1, %ecx
	cmpl	$1, %ecx
	movl	%ecx, 24(%rbx)
	sete	%sil
	movl	%r9d, 1092(%rbx)
	xorl	%r13d, %esi
	cmpl	%r9d, %edi
	je	L380
	movzbl	%sil, %esi
	cmpl	%esi, %r10d
	jne	L470
	movl	(%r12,%r11,4), %r10d
	movl	%r10d, %edi
	shrl	$8, %edi
	testl	%ecx, %ecx
	movl	%edi, 60(%rbx)
	jne	L394
	movslq	28(%rbx), %rsi
	movq	_BZ2_rNums@GOTPCREL(%rip), %rcx
	movq	%rsi, %r9
	movl	(%rcx,%rsi,4), %ecx
	addl	$1, %r9d
	movl	$0, %esi
	cmpl	$512, %r9d
	cmove	%esi, %r9d
	movl	%ecx, 24(%rbx)
	movl	%r9d, 28(%rbx)
L394:
	leal	4(%r8), %esi
	subl	$1, %ecx
	cmpl	$1, %ecx
	movl	%esi, 1092(%rbx)
	sete	%sil
	movl	%ecx, 24(%rbx)
	xorl	%r10d, %esi
	movzbl	%sil, %esi
	addl	$4, %esi
	movl	%esi, 16(%rbx)
	movl	(%r12,%rdi,4), %esi
	movzbl	%sil, %edi
	shrl	$8, %esi
	testl	%ecx, %ecx
	movl	%edi, 64(%rbx)
	movl	%esi, 60(%rbx)
	jne	L396
	movslq	28(%rbx), %r9
	movl	$0, %r15d
	movq	_BZ2_rNums@GOTPCREL(%rip), %rcx
	movq	%r9, %rsi
	movl	(%rcx,%r9,4), %ecx
	addl	$1, %esi
	cmpl	$512, %esi
	cmove	%r15d, %esi
	movl	%ecx, 24(%rbx)
	movl	%esi, 28(%rbx)
L396:
	subl	$1, %ecx
	cmpl	$1, %ecx
	movl	%ecx, 24(%rbx)
	sete	%cl
	movzbl	%cl, %ecx
	xorl	%edi, %ecx
	movl	%ecx, 64(%rbx)
	leal	5(%r8), %ecx
	movl	%ecx, 1092(%rbx)
	jmp	L380
	.align 4,0x90
L480:
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC5(%rip), %rsi
	movl	3176(%rbx), %edx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	movl	52(%rbx), %eax
	jmp	L407
	.align 4,0x90
L326:
	movl	$2, 16(%rbx)
	movl	$256, %r14d
	xorl	%ecx, %ecx
L327:
	leal	(%r14,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r15
	cmpl	0(%rbp,%r15,4), %edi
	jge	L328
L493:
	movl	%esi, %r14d
	subl	%ecx, %r14d
	cmpl	$1, %r14d
	je	L492
	movl	%esi, %r14d
	leal	(%r14,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r15
	cmpl	0(%rbp,%r15,4), %edi
	jl	L493
L328:
	movl	%r14d, %ecx
	subl	%esi, %ecx
	cmpl	$1, %ecx
	je	L330
	movl	%esi, %ecx
	jmp	L327
	.align 4,0x90
L361:
	movl	$2, 16(%rbx)
	movl	$256, %r12d
	xorl	%ecx, %ecx
L362:
	leal	(%r12,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r14
	cmpl	0(%rbp,%r14,4), %edi
	jge	L363
L495:
	movl	%esi, %r12d
	subl	%ecx, %r12d
	cmpl	$1, %r12d
	je	L494
	movl	%esi, %r12d
	leal	(%r12,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r14
	cmpl	0(%rbp,%r14,4), %edi
	jl	L495
L363:
	movl	%r12d, %ecx
	subl	%esi, %ecx
	cmpl	$1, %ecx
	je	L365
	movl	%esi, %ecx
	jmp	L362
	.align 4,0x90
L492:
	movl	%ecx, %esi
L330:
	movl	%edi, %ecx
	shrl	%ecx
	movzbl	0(%r13,%rcx), %r14d
	leal	0(,%rdi,4), %ecx
	andl	$4, %ecx
	movzwl	(%r8,%rdi,2), %edi
	shrl	%cl, %r14d
	sall	$16, %r14d
	andl	$983040, %r14d
	orl	%r14d, %edi
	testl	%r9d, %r9d
	movl	%edi, 60(%rbx)
	je	L496
L331:
	subl	$1, %r9d
	cmpl	$1, %r9d
	movl	%r9d, 24(%rbx)
	sete	%cl
	xorl	%ecx, %esi
	leal	2(%r11), %ecx
	cmpl	%ecx, %r10d
	movl	%ecx, 1092(%rbx)
	je	L312
	movzbl	%sil, %esi
	cmpl	%esi, %r12d
	jne	L468
	movl	$3, 16(%rbx)
	movl	$256, %r14d
	xorl	%ecx, %ecx
L334:
	leal	(%r14,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r15
	cmpl	0(%rbp,%r15,4), %edi
	jge	L335
L498:
	movl	%esi, %r14d
	subl	%ecx, %r14d
	cmpl	$1, %r14d
	je	L497
	movl	%esi, %r14d
	leal	(%r14,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r15
	cmpl	0(%rbp,%r15,4), %edi
	jl	L498
L335:
	movl	%r14d, %ecx
	subl	%esi, %ecx
	cmpl	$1, %ecx
	je	L337
	movl	%esi, %ecx
	jmp	L334
	.align 4,0x90
L494:
	movl	%ecx, %esi
L365:
	movl	%edi, %ecx
	shrl	%ecx
	movzbl	0(%r13,%rcx), %r12d
	leal	0(,%rdi,4), %ecx
	andl	$4, %ecx
	movzwl	(%r8,%rdi,2), %edi
	shrl	%cl, %r12d
	leal	2(%r10), %ecx
	sall	$16, %r12d
	andl	$983040, %r12d
	movl	%ecx, 1092(%rbx)
	orl	%r12d, %edi
	cmpl	%ecx, %r9d
	movl	%edi, 60(%rbx)
	je	L313
	movzbl	%sil, %esi
	cmpl	%esi, %r11d
	jne	L469
	movl	$3, 16(%rbx)
	movl	$256, %r12d
	xorl	%ecx, %ecx
L367:
	leal	(%r12,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r14
	cmpl	0(%rbp,%r14,4), %edi
	jge	L368
L500:
	movl	%esi, %r12d
	subl	%ecx, %r12d
	cmpl	$1, %r12d
	je	L499
	movl	%esi, %r12d
	leal	(%r12,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r14
	cmpl	0(%rbp,%r14,4), %edi
	jl	L500
L368:
	movl	%r12d, %ecx
	subl	%esi, %ecx
	cmpl	$1, %ecx
	je	L370
	movl	%esi, %ecx
	jmp	L367
L481:
	cmpl	$2, 52(%rbx)
	movl	3188(%rbx), %ecx
	movl	3180(%rbx), %edx
	jle	L410
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC6(%rip), %rsi
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	movl	3188(%rbx), %ecx
	movl	3180(%rbx), %edx
L410:
	cmpl	%edx, %ecx
	je	L306
	.align 4,0x90
L356:
	movl	$-4, %r12d
L306:
	addq	$24, %rsp
LCFI74:
	movl	%r12d, %eax
	popq	%rbx
LCFI75:
	popq	%rbp
LCFI76:
	popq	%r12
LCFI77:
	popq	%r13
LCFI78:
	popq	%r14
LCFI79:
	popq	%r15
LCFI80:
	ret
	.align 4,0x90
L483:
LCFI81:
	testl	%esi, %esi
	je	L400
	cmpl	$1, %edi
	movzbl	%r10b, %r13d
	je	L473
	leal	-2(%rdi), %r9d
	movq	_BZ2_crc32Table@GOTPCREL(%rip), %r11
	leaq	1(%rax,%r9), %r14
	jmp	L402
	.align 4,0x90
L459:
	cmpq	%r14, %rax
	je	L401
L402:
	movl	%ecx, %r9d
	shrl	$24, %ecx
	movb	%r10b, (%rax)
	subl	$1, %edi
	xorl	%r13d, %ecx
	sall	$8, %r9d
	addq	$1, %rax
	xorl	(%r11,%rcx,4), %r9d
	subl	$1, %esi
	movl	%r9d, %ecx
	jne	L459
	jmp	L400
	.align 4,0x90
L496:
	movslq	28(%rbx), %r14
	movl	$0, %r15d
	movq	_BZ2_rNums@GOTPCREL(%rip), %r9
	movq	%r14, %rcx
	movl	(%r9,%r14,4), %r9d
	addl	$1, %ecx
	cmpl	$512, %ecx
	cmove	%r15d, %ecx
	movl	%r9d, 24(%rbx)
	movl	%ecx, 28(%rbx)
	jmp	L331
	.align 4,0x90
L484:
	movl	12(%rsp), %r14d
	cmpl	%r9d, %r14d
	je	L404
	movq	(%rsp), %r11
	leal	2(%r8), %r9d
	movl	(%r11,%r12,4), %edi
	movl	%edi, %r12d
	shrl	$8, %r12d
	cmpl	%r9d, %r14d
	je	L472
	movzbl	%dil, %edi
	cmpl	%edi, %r15d
	jne	L440
	movl	(%r11,%r12,4), %edi
	leal	3(%r8), %r9d
	movl	%edi, %r12d
	shrl	$8, %r12d
	cmpl	%r9d, %r14d
	je	L471
	movzbl	%dil, %edi
	cmpl	%edi, %r15d
	jne	L442
	movl	(%r11,%r12,4), %r9d
	movzbl	%r9b, %edi
	shrl	$8, %r9d
	movl	(%r11,%r9,4), %r12d
	leal	5(%r8), %r9d
	addl	$4, %edi
	movzbl	%r12b, %r15d
	shrl	$8, %r12d
	jmp	L405
	.align 4,0x90
L499:
	movl	%ecx, %esi
L370:
	movl	%edi, %ecx
	shrl	%ecx
	movzbl	0(%r13,%rcx), %r12d
	leal	0(,%rdi,4), %ecx
	andl	$4, %ecx
	movzwl	(%r8,%rdi,2), %edi
	shrl	%cl, %r12d
	leal	3(%r10), %ecx
	sall	$16, %r12d
	andl	$983040, %r12d
	movl	%ecx, 1092(%rbx)
	orl	%r12d, %edi
	cmpl	%ecx, %r9d
	movl	%edi, 60(%rbx)
	je	L313
	movzbl	%sil, %esi
	cmpl	%esi, %r11d
	jne	L469
	movl	$256, %r9d
	xorl	%ecx, %ecx
L372:
	leal	(%r9,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r11
	cmpl	0(%rbp,%r11,4), %edi
	jge	L373
L502:
	movl	%esi, %r9d
	subl	%ecx, %r9d
	cmpl	$1, %r9d
	je	L501
	movl	%esi, %r9d
	leal	(%r9,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r11
	cmpl	0(%rbp,%r11,4), %edi
	jl	L502
L373:
	movl	%r9d, %ecx
	subl	%esi, %ecx
	cmpl	$1, %ecx
	je	L375
	movl	%esi, %ecx
	jmp	L372
	.align 4,0x90
L497:
	movl	%ecx, %esi
L337:
	movl	%edi, %ecx
	shrl	%ecx
	movzbl	0(%r13,%rcx), %r14d
	leal	0(,%rdi,4), %ecx
	andl	$4, %ecx
	movzwl	(%r8,%rdi,2), %edi
	shrl	%cl, %r14d
	sall	$16, %r14d
	andl	$983040, %r14d
	orl	%r14d, %edi
	testl	%r9d, %r9d
	movl	%edi, 60(%rbx)
	jne	L338
	movslq	28(%rbx), %r14
	movl	$0, %r15d
	movq	_BZ2_rNums@GOTPCREL(%rip), %r9
	movq	%r14, %rcx
	movl	(%r9,%r14,4), %r9d
	addl	$1, %ecx
	cmpl	$512, %ecx
	cmove	%r15d, %ecx
	movl	%r9d, 24(%rbx)
	movl	%ecx, 28(%rbx)
L338:
	subl	$1, %r9d
	cmpl	$1, %r9d
	movl	%r9d, 24(%rbx)
	sete	%cl
	xorl	%esi, %ecx
	leal	3(%r11), %esi
	cmpl	%esi, %r10d
	movl	%esi, 1092(%rbx)
	je	L312
	movzbl	%cl, %ecx
	cmpl	%ecx, %r12d
	je	L340
	movl	%ecx, 64(%rbx)
	jmp	L312
L485:
	movzbl	%r15b, %r13d
	movl	%r9d, %r8d
	movl	%edi, %r15d
L473:
	movq	_BZ2_crc32Table@GOTPCREL(%rip), %r11
	.align 4,0x90
L401:
	movl	%ecx, %edi
	shrl	$24, %ecx
	movb	%r10b, (%rax)
	subl	$1, %esi
	xorl	%ecx, %r13d
	sall	$8, %edi
	addq	$1, %rax
	movl	%r13d, %ecx
	xorl	(%r11,%rcx,4), %edi
	movl	%edi, %ecx
	jmp	L399
	.align 4,0x90
L444:
	xorl	%r12d, %r12d
	jmp	L306
L440:
	movl	%edi, %r15d
L472:
	movl	$2, %edi
L405:
	movl	%r9d, %r8d
	jmp	L398
L340:
	movl	$256, %r10d
	xorl	%ecx, %ecx
L341:
	leal	(%r10,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r12
	cmpl	0(%rbp,%r12,4), %edi
	jge	L342
L504:
	movl	%esi, %r10d
	subl	%ecx, %r10d
	cmpl	$1, %r10d
	je	L503
	movl	%esi, %r10d
	leal	(%r10,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r12
	cmpl	0(%rbp,%r12,4), %edi
	jl	L504
L342:
	movl	%r10d, %ecx
	subl	%esi, %ecx
	cmpl	$1, %ecx
	je	L344
	movl	%esi, %ecx
	jmp	L341
L501:
	movl	%ecx, %esi
L375:
	movl	%edi, %ecx
	shrl	%ecx
	movzbl	0(%r13,%rcx), %r9d
	leal	0(,%rdi,4), %ecx
	andl	$4, %ecx
	movzwl	(%r8,%rdi,2), %edi
	shrl	%cl, %r9d
	movl	%r9d, %ecx
	movl	$256, %r9d
	sall	$16, %ecx
	andl	$983040, %ecx
	orl	%ecx, %edi
	leal	4(%r10), %ecx
	movl	%edi, 60(%rbx)
	movl	%ecx, 1092(%rbx)
	movzbl	%sil, %ecx
	xorl	%esi, %esi
	addl	$4, %ecx
	movl	%ecx, 16(%rbx)
L376:
	leal	(%r9,%rsi), %ecx
	sarl	%ecx
	movslq	%ecx, %r11
	cmpl	0(%rbp,%r11,4), %edi
	jge	L377
L506:
	movl	%ecx, %r9d
	subl	%esi, %r9d
	cmpl	$1, %r9d
	je	L505
	movl	%ecx, %r9d
	leal	(%r9,%rsi), %ecx
	sarl	%ecx
	movslq	%ecx, %r11
	cmpl	0(%rbp,%r11,4), %edi
	jl	L506
L377:
	movl	%r9d, %esi
	subl	%ecx, %esi
	cmpl	$1, %esi
	je	L379
	movl	%ecx, %esi
	jmp	L376
L503:
	movl	%ecx, %esi
L344:
	movl	%edi, %ecx
	shrl	%ecx
	movzbl	0(%r13,%rcx), %r10d
	leal	0(,%rdi,4), %ecx
	andl	$4, %ecx
	shrl	%cl, %r10d
	movl	%edi, %ecx
	movzwl	(%r8,%rcx,2), %edi
	sall	$16, %r10d
	andl	$983040, %r10d
	orl	%r10d, %edi
	testl	%r9d, %r9d
	movl	%edi, 60(%rbx)
	je	L507
L345:
	leal	4(%r11), %ecx
	subl	$1, %r9d
	movl	$256, %r10d
	cmpl	$1, %r9d
	movl	%ecx, 1092(%rbx)
	sete	%cl
	movl	%r9d, 24(%rbx)
	xorl	%ecx, %esi
	movzbl	%sil, %ecx
	addl	$4, %ecx
	movl	%ecx, 16(%rbx)
	xorl	%ecx, %ecx
L347:
	leal	(%r10,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r12
	cmpl	0(%rbp,%r12,4), %edi
	jge	L348
L509:
	movl	%esi, %r10d
	subl	%ecx, %r10d
	cmpl	$1, %r10d
	je	L508
	movl	%esi, %r10d
	leal	(%r10,%rcx), %esi
	sarl	%esi
	movslq	%esi, %r12
	cmpl	0(%rbp,%r12,4), %edi
	jl	L509
L348:
	movl	%r10d, %ecx
	subl	%esi, %ecx
	cmpl	$1, %ecx
	je	L350
	movl	%esi, %ecx
	jmp	L347
L505:
	movl	%esi, %ecx
L379:
	movl	%ecx, 64(%rbx)
	movl	%edi, %ecx
	addl	$5, %r10d
	shrl	%ecx
	movzbl	0(%r13,%rcx), %esi
	leal	0(,%rdi,4), %ecx
	andl	$4, %ecx
	shrl	%cl, %esi
	movl	%esi, %ecx
	movzwl	(%r8,%rdi,2), %esi
	movl	%r10d, 1092(%rbx)
	sall	$16, %ecx
	andl	$983040, %ecx
	orl	%esi, %ecx
	movl	%ecx, 60(%rbx)
	jmp	L313
L508:
	movl	%ecx, %esi
L350:
	movl	%edi, %ecx
	movl	%esi, 64(%rbx)
	shrl	%ecx
	movzbl	0(%r13,%rcx), %r10d
	leal	0(,%rdi,4), %ecx
	andl	$4, %ecx
	movzwl	(%r8,%rdi,2), %edi
	shrl	%cl, %r10d
	movl	%r10d, %ecx
	sall	$16, %ecx
	andl	$983040, %ecx
	orl	%edi, %ecx
	testl	%r9d, %r9d
	movl	%ecx, 60(%rbx)
	jne	L351
	movslq	28(%rbx), %r8
	movq	_BZ2_rNums@GOTPCREL(%rip), %rdi
	movq	%r8, %rcx
	movl	(%rdi,%r8,4), %r9d
	addl	$1, %ecx
	movl	$0, %edi
	cmpl	$512, %ecx
	cmove	%edi, %ecx
	movl	%r9d, 24(%rbx)
	movl	%ecx, 28(%rbx)
L351:
	subl	$1, %r9d
	xorl	%ecx, %ecx
	cmpl	$1, %r9d
	movl	%r9d, 24(%rbx)
	sete	%cl
	addl	$5, %r11d
	xorl	%ecx, %esi
	movl	%r11d, 1092(%rbx)
	movl	%esi, 64(%rbx)
	jmp	L312
L507:
	movslq	28(%rbx), %r10
	movl	$0, %r15d
	movq	_BZ2_rNums@GOTPCREL(%rip), %r9
	movq	%r10, %rcx
	movl	(%r9,%r10,4), %r9d
	addl	$1, %ecx
	cmpl	$512, %ecx
	cmove	%r15d, %ecx
	movl	%r9d, 24(%rbx)
	movl	%ecx, 28(%rbx)
	jmp	L345
L442:
	movl	%edi, %r15d
L471:
	movl	$3, %edi
	jmp	L405
L416:
	movl	$-1, %r12d
	jmp	L306
L438:
	xorl	%edi, %edi
	jmp	L400
L413:
	movl	$-2, %r12d
	jmp	L306
LFE50:
	.align 4,0x90
	.globl _BZ2_bzDecompressEnd
_BZ2_bzDecompressEnd:
LFB51:
	testq	%rdi, %rdi
	je	L515
	pushq	%rbp
LCFI82:
	movl	$-2, %eax
	pushq	%rbx
LCFI83:
	subq	$8, %rsp
LCFI84:
	movq	48(%rdi), %rbp
	testq	%rbp, %rbp
	je	L510
	cmpq	%rdi, 0(%rbp)
	jne	L510
	movq	3152(%rbp), %rsi
	movq	%rdi, %rbx
	movq	64(%rdi), %rax
	movq	72(%rdi), %rdi
	testq	%rsi, %rsi
	je	L512
	call	*%rax
	movq	64(%rbx), %rax
	movq	72(%rbx), %rdi
L512:
	movq	3160(%rbp), %rsi
	testq	%rsi, %rsi
	je	L513
	call	*%rax
	movq	64(%rbx), %rax
	movq	72(%rbx), %rdi
L513:
	movq	3168(%rbp), %rsi
	testq	%rsi, %rsi
	je	L514
	call	*%rax
	movq	64(%rbx), %rax
	movq	72(%rbx), %rdi
L514:
	movq	48(%rbx), %rsi
	call	*%rax
	movq	$0, 48(%rbx)
	xorl	%eax, %eax
L510:
	addq	$8, %rsp
LCFI85:
	popq	%rbx
LCFI86:
	popq	%rbp
LCFI87:
	ret
L515:
LCFI88:
	movl	$-2, %eax
	ret
LFE51:
	.align 4,0x90
	.globl _BZ2_bzWriteOpen
_BZ2_bzWriteOpen:
LFB53:
	pushq	%r13
LCFI89:
	movl	%ecx, %r13d
	pushq	%r12
LCFI90:
	movl	%edx, %r12d
	pushq	%rbp
LCFI91:
	pushq	%rbx
LCFI92:
	movq	%rdi, %rbx
	subq	$24, %rsp
LCFI93:
	testq	%rdi, %rdi
	je	L532
	testl	%esi, %esi
	movl	$0, (%rdi)
	jne	L533
L541:
	movl	$-2, (%rbx)
	xorl	%ebp, %ebp
L531:
	addq	$24, %rsp
LCFI94:
	movq	%rbp, %rax
	popq	%rbx
LCFI95:
	popq	%rbp
LCFI96:
	popq	%r12
LCFI97:
	popq	%r13
LCFI98:
	ret
	.align 4,0x90
L532:
LCFI99:
	testl	%esi, %esi
	je	L561
	leal	-1(%rdx), %eax
	cmpl	$8, %eax
	jbe	L562
L561:
	xorl	%ebp, %ebp
L565:
	addq	$24, %rsp
LCFI100:
	movq	%rbp, %rax
	popq	%rbx
LCFI101:
	popq	%rbp
LCFI102:
	popq	%r12
LCFI103:
	popq	%r13
LCFI104:
	ret
	.align 4,0x90
L533:
LCFI105:
	leal	-1(%rdx), %eax
	cmpl	$8, %eax
	ja	L541
	cmpl	$4, %ecx
	movl	%esi, 8(%rsp)
	ja	L541
	cmpl	$250, %r8d
	movl	%r8d, 12(%rsp)
	ja	L541
	movl	$5104, %edi
	call	_malloc
	movl	12(%rsp), %r8d
	testq	%rax, %rax
	movq	%rax, %rbp
	movl	8(%rsp), %esi
	je	L563
	movl	$0, (%rbx)
L536:
	testl	%r8d, %r8d
	movl	$30, %eax
	movl	%esi, 0(%rbp)
	movl	%r13d, %edx
	cmove	%eax, %r8d
	movl	%r12d, %esi
	movl	$0, 5096(%rbp)
	movb	$0, 5100(%rbp)
	movl	$0, 5004(%rbp)
	movl	%r8d, %ecx
	movb	$1, 5008(%rbp)
	leaq	5016(%rbp), %rdi
	movq	$0, 5072(%rbp)
	movq	$0, 5080(%rbp)
	movq	$0, 5088(%rbp)
	call	_BZ2_bzCompressInit
	testl	%eax, %eax
	jne	L564
	movl	$0, 5024(%rbp)
	movb	$1, 5100(%rbp)
	jmp	L531
	.align 4,0x90
L562:
	cmpl	$250, %r8d
	ja	L561
	cmpl	$4, %ecx
	ja	L561
	movl	$5104, %edi
	movl	%r8d, 12(%rsp)
	movl	%esi, 8(%rsp)
	call	_malloc
	movl	8(%rsp), %esi
	testq	%rax, %rax
	movq	%rax, %rbp
	movl	12(%rsp), %r8d
	jne	L536
	xorl	%ebp, %ebp
	jmp	L565
	.align 4,0x90
L563:
	movl	$-3, (%rbx)
	jmp	L531
L564:
	testq	%rbx, %rbx
	je	L539
	movl	%eax, (%rbx)
L539:
	movq	%rbp, %rdi
	xorl	%ebp, %ebp
	call	_free
	jmp	L565
LFE53:
	.align 4,0x90
	.globl _BZ2_bzWrite
_BZ2_bzWrite:
LFB54:
	testq	%rdi, %rdi
	je	L567
	testq	%rsi, %rsi
	movl	$0, (%rdi)
	je	L568
	movl	$0, 5096(%rsi)
	testq	%rdx, %rdx
	je	L569
	testl	%ecx, %ecx
	js	L569
	cmpb	$0, 5008(%rsi)
	je	L615
L572:
	testl	%ecx, %ecx
	pushq	%r14
LCFI106:
	pushq	%r13
LCFI107:
	pushq	%r12
LCFI108:
	pushq	%rbp
LCFI109:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI110:
	movq	%rsi, %rbx
	je	L613
	movl	%ecx, 5024(%rsi)
	leaq	4(%rsi), %r13
	movq	%rdx, 5016(%rsi)
	leaq	5016(%rsi), %r14
	.align 4,0x90
L587:
	movq	5064(%rbx), %rdi
	movq	%r13, 5040(%rbx)
	movl	$5000, 5048(%rbx)
	testq	%rdi, %rdi
	je	L579
	cmpq	%r14, (%rdi)
	jne	L579
	movl	8(%rdi), %eax
	cmpl	$2, %eax
	je	L581
	jg	L582
	cmpl	$1, %eax
	jne	L580
L593:
	movl	$-1, %eax
L578:
	testq	%rbp, %rbp
	je	L585
	movl	%eax, 0(%rbp)
L585:
	movl	%eax, 5096(%rbx)
	jmp	L566
	.align 4,0x90
L568:
LCFI111:
	movl	$-2, (%rdi)
	ret
	.align 4,0x90
L569:
	testq	%rdi, %rdi
	je	L590
	movl	$-2, (%rdi)
L590:
	movl	$-2, 5096(%rsi)
	ret
	.align 4,0x90
L567:
	testq	%rsi, %rsi
	je	L616
	movl	$0, 5096(%rsi)
	testq	%rdx, %rdx
	je	L590
	testl	%ecx, %ecx
	js	L590
	cmpb	$0, 5008(%rsi)
	jne	L572
L615:
	testq	%rdi, %rdi
	je	L573
	movl	$-1, (%rdi)
L573:
	movl	$-1, 5096(%rsi)
	ret
	.align 4,0x90
L582:
LCFI112:
	cmpl	$4, %eax
	jle	L593
L580:
	xorl	%eax, %eax
	jmp	L578
	.align 4,0x90
L581:
	call	_handle_compress.isra.2
	testb	%al, %al
	je	L579
	movl	5048(%rbx), %eax
	cmpl	$4999, %eax
	jbe	L617
L584:
	movl	5024(%rbx), %eax
	testl	%eax, %eax
	jne	L587
L613:
	testq	%rbp, %rbp
	je	L576
	movl	$0, 0(%rbp)
L576:
	movl	$0, 5096(%rbx)
L566:
	popq	%rbx
LCFI113:
	popq	%rbp
LCFI114:
	popq	%r12
LCFI115:
	popq	%r13
LCFI116:
	popq	%r14
LCFI117:
	ret
	.align 4,0x90
L617:
LCFI118:
	movl	(%rbx), %ecx
	movl	$5000, %r12d
	movl	$1, %esi
	movq	%r13, %rdi
	subl	%eax, %r12d
	movl	%r12d, %edx
	call	_spec_fwrite
	cmpl	%eax, %r12d
	je	L584
	testq	%rbp, %rbp
	je	L586
	movl	$-6, 0(%rbp)
L586:
	movl	$-6, 5096(%rbx)
	jmp	L566
	.align 4,0x90
L579:
	movl	$-2, %eax
	jmp	L578
L616:
LCFI119:
	ret
LFE54:
	.align 4,0x90
	.globl _BZ2_bzWriteClose
_BZ2_bzWriteClose:
LFB55:
	pushq	%r15
LCFI120:
	pushq	%r14
LCFI121:
	pushq	%r13
LCFI122:
	pushq	%r12
LCFI123:
	movq	%rdi, %r12
	pushq	%rbp
LCFI124:
	pushq	%rbx
LCFI125:
	subq	$24, %rsp
LCFI126:
	testq	%rsi, %rsi
	je	L684
	cmpb	$0, 5008(%rsi)
	movq	%rsi, %rbx
	je	L685
	testq	%rcx, %rcx
	movl	%edx, %r14d
	movq	%rcx, %r13
	je	L623
	movl	$0, (%rcx)
L623:
	testq	%r8, %r8
	je	L624
	movl	$0, (%r8)
L624:
	leaq	5016(%rbx), %r15
	testl	%r14d, %r14d
	jne	L628
	movl	5096(%rbx), %esi
	testl	%esi, %esi
	jne	L628
	leaq	4(%rbx), %r9
L629:
	movq	5064(%rbx), %rbp
	movq	%r9, 5040(%rbx)
	movl	$5000, 5048(%rbx)
	testq	%rbp, %rbp
	je	L648
	cmpq	0(%rbp), %r15
	jne	L648
	movl	8(%rbp), %eax
	cmpl	$2, %eax
	je	L632
	jle	L686
	cmpl	$3, %eax
	jne	L687
L649:
	movl	$-1, %r14d
L630:
	testq	%r12, %r12
	je	L640
	movl	%r14d, (%r12)
L640:
	movl	%r14d, 5096(%rbx)
	jmp	L618
	.align 4,0x90
L685:
	testq	%rdi, %rdi
	je	L622
	movl	$-1, (%rdi)
L622:
	movl	$-1, 5096(%rbx)
L618:
	addq	$24, %rsp
LCFI127:
	popq	%rbx
LCFI128:
	popq	%rbp
LCFI129:
	popq	%r12
LCFI130:
	popq	%r13
LCFI131:
	popq	%r14
LCFI132:
	popq	%r15
LCFI133:
	ret
	.align 4,0x90
L628:
LCFI134:
	testq	%r13, %r13
	je	L627
	movl	5028(%rbx), %eax
	movl	%eax, 0(%r13)
L627:
	testq	%r8, %r8
	je	L642
	movl	5052(%rbx), %eax
	movl	%eax, (%r8)
L642:
	testq	%r12, %r12
	je	L643
	movl	$0, (%r12)
L643:
	movl	$0, 5096(%rbx)
	movq	%r15, %rdi
	call	_BZ2_bzCompressEnd
	addq	$24, %rsp
LCFI135:
	movq	%rbx, %rdi
	popq	%rbx
LCFI136:
	popq	%rbp
LCFI137:
	popq	%r12
LCFI138:
	popq	%r13
LCFI139:
	popq	%r14
LCFI140:
	popq	%r15
LCFI141:
	jmp	_free
	.align 4,0x90
L684:
LCFI142:
	testq	%rdi, %rdi
	je	L618
	movl	$0, (%rdi)
	addq	$24, %rsp
LCFI143:
	popq	%rbx
LCFI144:
	popq	%rbp
LCFI145:
	popq	%r12
LCFI146:
	popq	%r13
LCFI147:
	popq	%r14
LCFI148:
	popq	%r15
LCFI149:
	ret
	.align 4,0x90
L686:
LCFI150:
	cmpl	$1, %eax
	je	L649
	jmp	L630
	.align 4,0x90
L632:
	movl	5024(%rbx), %eax
	movl	$4, 8(%rbp)
	movl	%eax, 16(%rbp)
L635:
	movq	%rbp, %rdi
	movq	%r8, 8(%rsp)
	movq	%r9, (%rsp)
	call	_handle_compress.isra.2
	testb	%al, %al
	je	L649
	movl	16(%rbp), %ecx
	movl	5048(%rbx), %eax
	movq	(%rsp), %r9
	movq	8(%rsp), %r8
	testl	%ecx, %ecx
	jne	L637
	cmpl	$255, 92(%rbp)
	ja	L638
	movl	96(%rbp), %edx
	testl	%edx, %edx
	jg	L637
L638:
	movl	116(%rbp), %edx
	cmpl	%edx, 120(%rbp)
	jl	L637
	cmpl	$4999, %eax
	movl	$1, 8(%rbp)
	ja	L628
	movl	(%rbx), %ecx
	movl	$5000, %ebp
	movl	$1, %esi
	movq	%r9, %rdi
	subl	%eax, %ebp
	movq	%r8, (%rsp)
	movl	%ebp, %edx
	call	_spec_fwrite
	movq	(%rsp), %r8
	cmpl	%eax, %ebp
	je	L628
L646:
	testq	%r12, %r12
	je	L641
	movl	$-6, (%r12)
L641:
	movl	$-6, 5096(%rbx)
	jmp	L618
	.align 4,0x90
L637:
	cmpl	$4999, %eax
	ja	L629
	movl	(%rbx), %ecx
	movl	$5000, %ebp
	movq	%r9, %rdi
	movl	$1, %esi
	subl	%eax, %ebp
	movq	%r8, 8(%rsp)
	movl	%ebp, %edx
	movq	%r9, (%rsp)
	call	_spec_fwrite
	movq	(%rsp), %r9
	cmpl	%ebp, %eax
	movq	8(%rsp), %r8
	je	L629
	jmp	L646
	.align 4,0x90
L687:
	cmpl	$4, %eax
	jne	L630
	movl	5024(%rbx), %eax
	cmpl	%eax, 16(%rbp)
	jne	L649
	jmp	L635
	.align 4,0x90
L648:
	movl	$-2, %r14d
	jmp	L630
LFE55:
	.align 4,0x90
	.globl _BZ2_bzWriteClose64
_BZ2_bzWriteClose64:
LFB56:
	pushq	%r15
LCFI151:
	pushq	%r14
LCFI152:
	pushq	%r13
LCFI153:
	pushq	%r12
LCFI154:
	movq	%rdi, %r12
	pushq	%rbp
LCFI155:
	pushq	%rbx
LCFI156:
	subq	$40, %rsp
LCFI157:
	testq	%rsi, %rsi
	movq	96(%rsp), %r14
	je	L769
	cmpb	$0, 5008(%rsi)
	movq	%rsi, %rbx
	je	L770
	testq	%rcx, %rcx
	movl	%edx, %r15d
	movq	%rcx, %r13
	je	L693
	movl	$0, (%rcx)
L693:
	testq	%r8, %r8
	je	L694
	movl	$0, (%r8)
L694:
	testq	%r9, %r9
	je	L695
	movl	$0, (%r9)
L695:
	testq	%r14, %r14
	je	L696
	movl	$0, (%r14)
L696:
	leaq	5016(%rbx), %r10
	testl	%r15d, %r15d
	je	L697
L700:
	testq	%r13, %r13
	je	L699
	movl	5028(%rbx), %eax
	movl	%eax, 0(%r13)
L699:
	testq	%r8, %r8
	je	L714
	movl	5032(%rbx), %eax
	movl	%eax, (%r8)
L714:
	testq	%r9, %r9
	je	L715
	movl	5052(%rbx), %eax
	movl	%eax, (%r9)
L715:
	testq	%r14, %r14
	je	L716
	movl	5056(%rbx), %eax
	movl	%eax, (%r14)
L716:
	testq	%r12, %r12
	je	L717
	movl	$0, (%r12)
L717:
	movl	$0, 5096(%rbx)
	movq	%r10, %rdi
	call	_BZ2_bzCompressEnd
	addq	$40, %rsp
LCFI158:
	movq	%rbx, %rdi
	popq	%rbx
LCFI159:
	popq	%rbp
LCFI160:
	popq	%r12
LCFI161:
	popq	%r13
LCFI162:
	popq	%r14
LCFI163:
	popq	%r15
LCFI164:
	jmp	_free
	.align 4,0x90
L770:
LCFI165:
	testq	%rdi, %rdi
	je	L692
	movl	$-1, (%rdi)
L692:
	movl	$-1, 5096(%rbx)
L688:
	addq	$40, %rsp
LCFI166:
	popq	%rbx
LCFI167:
	popq	%rbp
LCFI168:
	popq	%r12
LCFI169:
	popq	%r13
LCFI170:
	popq	%r14
LCFI171:
	popq	%r15
LCFI172:
	ret
	.align 4,0x90
L769:
LCFI173:
	testq	%rdi, %rdi
	je	L688
	movl	$0, (%rdi)
	addq	$40, %rsp
LCFI174:
	popq	%rbx
LCFI175:
	popq	%rbp
LCFI176:
	popq	%r12
LCFI177:
	popq	%r13
LCFI178:
	popq	%r14
LCFI179:
	popq	%r15
LCFI180:
	ret
	.align 4,0x90
L697:
LCFI181:
	movl	5096(%rbx), %esi
	testl	%esi, %esi
	jne	L700
	leaq	4(%rbx), %r11
L701:
	movq	5064(%rbx), %rbp
	movq	%r11, 5040(%rbx)
	movl	$5000, 5048(%rbx)
	testq	%rbp, %rbp
	je	L721
	cmpq	0(%rbp), %r10
	jne	L721
	movl	8(%rbp), %eax
	cmpl	$2, %eax
	je	L704
	jle	L771
	cmpl	$3, %eax
	jne	L772
L722:
	movl	$-1, %r15d
L702:
	testq	%r12, %r12
	je	L712
	movl	%r15d, (%r12)
L712:
	movl	%r15d, 5096(%rbx)
	jmp	L688
	.align 4,0x90
L771:
	cmpl	$1, %eax
	je	L722
	jmp	L702
	.align 4,0x90
L704:
	movl	5024(%rbx), %eax
	movl	$4, 8(%rbp)
	movl	%eax, 16(%rbp)
L707:
	movq	%rbp, %rdi
	movq	%r9, 24(%rsp)
	movq	%r8, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	call	_handle_compress.isra.2
	testb	%al, %al
	je	L722
	movl	16(%rbp), %ecx
	movl	5048(%rbx), %eax
	movq	(%rsp), %r10
	movq	8(%rsp), %r11
	testl	%ecx, %ecx
	movq	16(%rsp), %r8
	movq	24(%rsp), %r9
	jne	L709
	cmpl	$255, 92(%rbp)
	ja	L710
	movl	96(%rbp), %edx
	testl	%edx, %edx
	jg	L709
L710:
	movl	116(%rbp), %edx
	cmpl	%edx, 120(%rbp)
	jl	L709
	cmpl	$4999, %eax
	movl	$1, 8(%rbp)
	ja	L700
	movl	(%rbx), %ecx
	movl	$5000, %ebp
	movl	$1, %esi
	movq	%r11, %rdi
	subl	%eax, %ebp
	movq	%r9, 16(%rsp)
	movl	%ebp, %edx
	movq	%r8, 8(%rsp)
	movq	%r10, (%rsp)
	call	_spec_fwrite
	cmpl	%ebp, %eax
	je	L773
L719:
	testq	%r12, %r12
	je	L713
	movl	$-6, (%r12)
L713:
	movl	$-6, 5096(%rbx)
	jmp	L688
	.align 4,0x90
L709:
	cmpl	$4999, %eax
	ja	L701
	movl	(%rbx), %ecx
	movl	$5000, %ebp
	movq	%r11, %rdi
	movl	$1, %esi
	subl	%eax, %ebp
	movq	%r9, 24(%rsp)
	movl	%ebp, %edx
	movq	%r8, 16(%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, (%rsp)
	call	_spec_fwrite
	movq	(%rsp), %r11
	cmpl	%eax, %ebp
	movq	8(%rsp), %r10
	movq	16(%rsp), %r8
	movq	24(%rsp), %r9
	je	L701
	jmp	L719
	.align 4,0x90
L772:
	cmpl	$4, %eax
	jne	L702
	movl	5024(%rbx), %eax
	cmpl	%eax, 16(%rbp)
	jne	L722
	jmp	L707
	.align 4,0x90
L721:
	movl	$-2, %r15d
	jmp	L702
L773:
	movq	(%rsp), %r10
	movq	8(%rsp), %r8
	movq	16(%rsp), %r9
	jmp	L700
LFE56:
	.align 4,0x90
	.globl _BZ2_bzReadOpen
_BZ2_bzReadOpen:
LFB57:
	pushq	%r14
LCFI182:
	pushq	%r13
LCFI183:
	pushq	%r12
LCFI184:
	movl	%edx, %r12d
	pushq	%rbp
LCFI185:
	pushq	%rbx
LCFI186:
	movq	%rdi, %rbx
	subq	$32, %rsp
LCFI187:
	testl	%esi, %esi
	sete	%al
	cmpl	$1, %ecx
	seta	%dl
	orl	%edx, %eax
	testq	%rdi, %rdi
	je	L775
	testb	%al, %al
	movl	$0, (%rdi)
	je	L776
L792:
	movl	$-2, (%rbx)
	xorl	%ebp, %ebp
L774:
	addq	$32, %rsp
LCFI188:
	movq	%rbp, %rax
	popq	%rbx
LCFI189:
	popq	%rbp
LCFI190:
	popq	%r12
LCFI191:
	popq	%r13
LCFI192:
	popq	%r14
LCFI193:
	ret
	.align 4,0x90
L775:
LCFI194:
	testb	%al, %al
	jne	L840
	cmpl	$4, %r12d
	ja	L840
	testl	%r9d, %r9d
	je	L795
	testq	%r8, %r8
	jne	L795
L840:
	xorl	%ebp, %ebp
L844:
	addq	$32, %rsp
LCFI195:
	movq	%rbp, %rax
	popq	%rbx
LCFI196:
	popq	%rbp
LCFI197:
	popq	%r12
LCFI198:
	popq	%r13
LCFI199:
	popq	%r14
LCFI200:
	ret
	.align 4,0x90
L776:
LCFI201:
	cmpl	$4, %r12d
	ja	L792
	testl	%r9d, %r9d
	je	L797
	testq	%r8, %r8
	je	L792
L797:
	testq	%r8, %r8
	je	L799
	cmpl	$5000, %r9d
	ja	L792
L799:
	movl	$5104, %edi
	movl	%r9d, 28(%rsp)
	movq	%r8, 16(%rsp)
	movl	%ecx, 24(%rsp)
	movl	%esi, 12(%rsp)
	call	_malloc
	movl	12(%rsp), %esi
	testq	%rax, %rax
	movq	%rax, %rbp
	movl	24(%rsp), %ecx
	movq	16(%rsp), %r8
	movl	28(%rsp), %r9d
	je	L842
	testq	%rbx, %rbx
	je	L780
	movl	$0, (%rbx)
L780:
	testl	%r9d, %r9d
	movb	$0, 5100(%rbp)
	movl	$0, 5096(%rbp)
	movl	%esi, 0(%rbp)
	movl	$0, 5004(%rbp)
	movb	$0, 5008(%rbp)
	movq	$0, 5072(%rbp)
	movq	$0, 5080(%rbp)
	movq	$0, 5088(%rbp)
	jle	L781
	leal	-1(%r9), %edi
	movq	%r8, %rax
	negq	%rax
	andl	$15, %eax
	leal	15(%rax), %edx
	cmpl	%edx, %edi
	jb	L801
	testl	%eax, %eax
	je	L802
	movzbl	(%r8), %edx
	leaq	1(%r8), %r13
	cmpl	$1, %eax
	movb	%dl, 4(%rbp)
	je	L803
	movzbl	1(%r8), %edx
	leaq	2(%r8), %r13
	cmpl	$2, %eax
	leal	-2(%r9), %edi
	movb	%dl, 5(%rbp)
	je	L804
	movzbl	2(%r8), %edx
	leaq	3(%r8), %r13
	cmpl	$3, %eax
	leal	-3(%r9), %edi
	movb	%dl, 6(%rbp)
	je	L805
	movzbl	3(%r8), %edx
	leaq	4(%r8), %r13
	cmpl	$4, %eax
	leal	-4(%r9), %edi
	movb	%dl, 7(%rbp)
	je	L806
	movzbl	4(%r8), %edx
	leaq	5(%r8), %r13
	cmpl	$5, %eax
	leal	-5(%r9), %edi
	movb	%dl, 8(%rbp)
	je	L807
	movzbl	5(%r8), %edx
	leaq	6(%r8), %r13
	cmpl	$6, %eax
	leal	-6(%r9), %edi
	movb	%dl, 9(%rbp)
	je	L808
	movzbl	6(%r8), %edx
	leaq	7(%r8), %r13
	cmpl	$7, %eax
	leal	-7(%r9), %edi
	movb	%dl, 10(%rbp)
	je	L809
	movzbl	7(%r8), %edx
	leaq	8(%r8), %r13
	cmpl	$8, %eax
	leal	-8(%r9), %edi
	movb	%dl, 11(%rbp)
	je	L810
	movzbl	8(%r8), %edx
	leaq	9(%r8), %r13
	cmpl	$9, %eax
	leal	-9(%r9), %edi
	movb	%dl, 12(%rbp)
	je	L811
	movzbl	9(%r8), %edx
	leaq	10(%r8), %r13
	cmpl	$10, %eax
	leal	-10(%r9), %edi
	movb	%dl, 13(%rbp)
	je	L812
	movzbl	10(%r8), %edx
	leaq	11(%r8), %r13
	cmpl	$11, %eax
	leal	-11(%r9), %edi
	movb	%dl, 14(%rbp)
	je	L813
	movzbl	11(%r8), %edx
	leaq	12(%r8), %r13
	cmpl	$12, %eax
	leal	-12(%r9), %edi
	movb	%dl, 15(%rbp)
	je	L814
	movzbl	12(%r8), %edx
	leaq	13(%r8), %r13
	cmpl	$13, %eax
	leal	-13(%r9), %edi
	movb	%dl, 16(%rbp)
	je	L815
	movzbl	13(%r8), %edx
	leaq	14(%r8), %r13
	cmpl	$15, %eax
	leal	-14(%r9), %edi
	movb	%dl, 17(%rbp)
	jne	L816
	movzbl	14(%r8), %edx
	leaq	15(%r8), %r13
	movl	$15, %esi
	leal	-15(%r9), %edi
	movb	%dl, 18(%rbp)
	.align 4,0x90
L783:
	movl	%r9d, %r11d
	movl	%eax, %edx
	leaq	4(%rbp,%rdx), %r10
	subl	%eax, %r11d
	addq	%rdx, %r8
	movl	%r11d, %r14d
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrl	$4, %r14d
	.align 4,0x90
L785:
	movdqa	(%r8,%rax), %xmm0
	addl	$1, %edx
	movups	%xmm0, (%r10,%rax)
	addq	$16, %rax
	cmpl	%edx, %r14d
	ja	L785
	movl	%r11d, %eax
	andl	$-16, %eax
	leal	(%rsi,%rax), %edx
	movl	%eax, %r8d
	subl	%eax, %edi
	addq	%r13, %r8
	cmpl	%eax, %r11d
	je	L786
L782:
	movslq	%edx, %rdx
	xorl	%eax, %eax
	addq	%rbp, %rdx
	.align 4,0x90
L787:
	movzbl	(%r8,%rax), %esi
	movb	%sil, 4(%rdx,%rax)
	addq	$1, %rax
	movl	%edi, %esi
	subl	%eax, %esi
	testl	%esi, %esi
	jg	L787
L786:
	movl	%r9d, 5004(%rbp)
L781:
	xorl	%edi, %edi
	movl	$1, %edx
	movl	$64144, %esi
	movl	%ecx, 12(%rsp)
	leaq	_default_bzalloc(%rip), %rax
	movq	%rax, 5072(%rbp)
	leaq	_default_bzfree(%rip), %rax
	movq	%rax, 5080(%rbp)
	leaq	5016(%rbp), %r13
	call	_default_bzalloc
	movl	12(%rsp), %ecx
	testq	%rax, %rax
	je	L843
	movq	%r13, (%rax)
	movq	%rax, 5064(%rbp)
	movl	$10, 8(%rax)
	movq	$0, 32(%rax)
	movl	$0, 3188(%rax)
	movq	$0, 5028(%rbp)
	movq	$0, 5052(%rbp)
	movb	%cl, 44(%rax)
	movq	$0, 3168(%rax)
	movq	$0, 3160(%rax)
	movq	$0, 3152(%rax)
	movl	$0, 48(%rax)
	movl	%r12d, 52(%rax)
	movl	5004(%rbp), %eax
	movb	$1, 5100(%rbp)
	movl	%eax, 5024(%rbp)
	leaq	4(%rbp), %rax
	movq	%rax, 5016(%rbp)
	jmp	L774
	.align 4,0x90
L795:
	testq	%r8, %r8
	je	L799
	cmpl	$5000, %r9d
	jbe	L799
	xorl	%ebp, %ebp
	jmp	L844
	.align 4,0x90
L842:
	testq	%rbx, %rbx
	je	L840
	movl	$-3, (%rbx)
	jmp	L774
L803:
	movl	$1, %esi
	jmp	L783
L843:
	testq	%rbx, %rbx
	je	L790
	movl	$-3, (%rbx)
L790:
	movq	%rbp, %rdi
	xorl	%ebp, %ebp
	call	_free
	jmp	L844
L804:
	movl	$2, %esi
	jmp	L783
L801:
	movl	%r9d, %edi
	xorl	%edx, %edx
	jmp	L782
L805:
	movl	$3, %esi
	jmp	L783
L806:
	movl	$4, %esi
	jmp	L783
L807:
	movl	$5, %esi
	jmp	L783
L802:
	movl	%r9d, %edi
	movq	%r8, %r13
	xorl	%esi, %esi
	jmp	L783
L808:
	movl	$6, %esi
	jmp	L783
L809:
	movl	$7, %esi
	jmp	L783
L810:
	movl	$8, %esi
	jmp	L783
L811:
	movl	$9, %esi
	jmp	L783
L812:
	movl	$10, %esi
	jmp	L783
L813:
	movl	$11, %esi
	jmp	L783
L814:
	movl	$12, %esi
	jmp	L783
L816:
	movl	$14, %esi
	jmp	L783
L815:
	movl	$13, %esi
	jmp	L783
LFE57:
	.align 4,0x90
	.globl _BZ2_bzReadClose
_BZ2_bzReadClose:
LFB58:
	testq	%rdi, %rdi
	je	L846
	testq	%rsi, %rsi
	movl	$0, (%rdi)
	je	L857
	cmpb	$0, 5008(%rsi)
	movl	$0, 5096(%rsi)
	je	L853
	movl	$-1, (%rdi)
L854:
	movl	$-1, 5096(%rsi)
	ret
	.align 4,0x90
L857:
	ret
	.align 4,0x90
L846:
	testq	%rsi, %rsi
	je	L858
	cmpb	$0, 5008(%rsi)
	movl	$0, 5096(%rsi)
	jne	L854
L853:
	cmpb	$0, 5100(%rsi)
	pushq	%rbx
LCFI202:
	movq	%rsi, %rbx
	jne	L859
	movq	%rbx, %rdi
	popq	%rbx
LCFI203:
	jmp	_free
	.align 4,0x90
L859:
LCFI204:
	leaq	5016(%rsi), %rdi
	call	_BZ2_bzDecompressEnd
	movq	%rbx, %rdi
	popq	%rbx
LCFI205:
	jmp	_free
	.align 4,0x90
L858:
	ret
LFE58:
	.align 4,0x90
	.globl _BZ2_bzRead
_BZ2_bzRead:
LFB59:
	testq	%rdi, %rdi
	je	L861
	testq	%rsi, %rsi
	movl	$0, (%rdi)
	je	L862
	movl	$0, 5096(%rsi)
	testq	%rdx, %rdx
	je	L863
	testl	%ecx, %ecx
	js	L863
	cmpb	$0, 5008(%rsi)
	jne	L915
L866:
	testl	%ecx, %ecx
	jne	L868
	testq	%rdi, %rdi
	je	L869
	movl	$0, (%rdi)
L869:
	movl	$0, 5096(%rsi)
	jmp	L913
	.align 4,0x90
L862:
	movl	$-2, (%rdi)
L913:
	xorl	%eax, %eax
	ret
	.align 4,0x90
L863:
	testq	%rdi, %rdi
	je	L885
	movl	$-2, (%rdi)
L885:
	movl	$-2, 5096(%rsi)
	xorl	%eax, %eax
	ret
	.align 4,0x90
L861:
	testq	%rsi, %rsi
	je	L913
	movl	$0, 5096(%rsi)
	testq	%rdx, %rdx
	je	L885
	testl	%ecx, %ecx
	js	L885
	cmpb	$0, 5008(%rsi)
	je	L866
L915:
	testq	%rdi, %rdi
	je	L867
	movl	$-1, (%rdi)
L867:
	movl	$-1, 5096(%rsi)
	xorl	%eax, %eax
	ret
	.align 4,0x90
L868:
	pushq	%r15
LCFI206:
	pushq	%r14
LCFI207:
	leaq	4(%rsi), %r14
	pushq	%r13
LCFI208:
	leaq	5016(%rsi), %r13
	pushq	%r12
LCFI209:
	movl	%ecx, %r12d
	pushq	%rbp
LCFI210:
	movq	%rdi, %rbp
	pushq	%rbx
LCFI211:
	movq	%rsi, %rbx
	subq	$8, %rsp
LCFI212:
	movl	%ecx, 5048(%rbx)
	movq	%rdx, 5040(%rsi)
	jmp	L882
	.align 4,0x90
L871:
	movq	%r13, %rdi
	call	_BZ2_bzDecompress
	testl	$-5, %eax
	jne	L916
	testl	%eax, %eax
	je	L917
	cmpl	$4, %eax
	je	L918
L877:
	movl	5048(%rbx), %eax
	testl	%eax, %eax
	je	L879
L882:
	movl	5024(%rbx), %esi
	testl	%esi, %esi
	jne	L871
	movl	(%rbx), %r15d
	movl	%r15d, %edi
	call	_spec_getc
	cmpl	$-1, %eax
	je	L871
	movzbl	%al, %edi
	movl	%r15d, %esi
	call	_spec_ungetc
	movl	(%rbx), %ecx
	movl	$5000, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	call	_spec_fread
	movq	%r14, 5016(%rbx)
	movl	%eax, 5004(%rbx)
	movl	%eax, 5024(%rbx)
	jmp	L871
	.align 4,0x90
L917:
	movl	(%rbx), %r15d
	movl	%r15d, %edi
	call	_spec_getc
	cmpl	$-1, %eax
	je	L876
	movzbl	%al, %edi
	movl	%r15d, %esi
	call	_spec_ungetc
	jmp	L877
	.align 4,0x90
L876:
	movl	5024(%rbx), %ecx
	testl	%ecx, %ecx
	jne	L877
	movl	5048(%rbx), %edx
	testl	%edx, %edx
	jne	L919
L879:
	testq	%rbp, %rbp
	je	L883
	movl	$0, 0(%rbp)
L883:
	movl	$0, 5096(%rbx)
	movl	%r12d, %eax
L860:
	addq	$8, %rsp
LCFI213:
	popq	%rbx
LCFI214:
	popq	%rbp
LCFI215:
	popq	%r12
LCFI216:
	popq	%r13
LCFI217:
	popq	%r14
LCFI218:
	popq	%r15
LCFI219:
	ret
	.align 4,0x90
L916:
LCFI220:
	testq	%rbp, %rbp
	je	L874
	movl	%eax, 0(%rbp)
L874:
	movl	%eax, 5096(%rbx)
	xorl	%eax, %eax
	jmp	L860
	.align 4,0x90
L918:
	testq	%rbp, %rbp
	je	L881
	movl	$4, 0(%rbp)
L881:
	movl	$4, 5096(%rbx)
	movl	%r12d, %eax
	subl	5048(%rbx), %eax
	jmp	L860
L919:
	testq	%rbp, %rbp
	je	L880
	movl	$-7, 0(%rbp)
L880:
	movl	$-7, 5096(%rbx)
	xorl	%eax, %eax
	jmp	L860
LFE59:
	.align 4,0x90
	.globl _BZ2_bzReadGetUnused
_BZ2_bzReadGetUnused:
LFB60:
	testq	%rsi, %rsi
	je	L942
	cmpl	$4, 5096(%rsi)
	je	L923
	testq	%rdi, %rdi
	je	L924
	movl	$-1, (%rdi)
L924:
	movl	$-1, 5096(%rsi)
	ret
	.align 4,0x90
L923:
	testq	%rdx, %rdx
	je	L929
	testq	%rcx, %rcx
	je	L929
	testq	%rdi, %rdi
	je	L928
	movl	$0, (%rdi)
L928:
	movl	$0, 5096(%rsi)
	movl	5024(%rsi), %eax
	movl	%eax, (%rcx)
	movq	5016(%rsi), %rax
	movq	%rax, (%rdx)
L920:
	ret
	.align 4,0x90
L942:
	testq	%rdi, %rdi
	je	L920
	movl	$-2, (%rdi)
	ret
	.align 4,0x90
L929:
	testq	%rdi, %rdi
	je	L927
	movl	$-2, (%rdi)
L927:
	movl	$-2, 5096(%rsi)
	ret
LFE60:
	.align 4,0x90
	.globl _BZ2_bzBuffToBuffCompress
_BZ2_bzBuffToBuffCompress:
LFB61:
	pushq	%r15
LCFI221:
	pushq	%r14
LCFI222:
	pushq	%r13
LCFI223:
	pushq	%r12
LCFI224:
	pushq	%rbp
LCFI225:
	pushq	%rbx
LCFI226:
	subq	$88, %rsp
LCFI227:
	testq	%rdi, %rdi
	movl	144(%rsp), %eax
	je	L947
	testq	%rsi, %rsi
	je	L947
	leal	-1(%r8), %r10d
	cmpl	$8, %r10d
	ja	L947
	testq	%rdx, %rdx
	je	L947
	cmpl	$250, %eax
	ja	L947
	cmpl	$4, %r9d
	ja	L947
	testl	%eax, %eax
	movq	%rdx, %r12
	movl	$30, %edx
	movq	$0, 56(%rsp)
	cmove	%edx, %eax
	movq	%rsp, %r15
	movl	%ecx, %r13d
	movq	$0, 64(%rsp)
	movq	$0, 72(%rsp)
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movl	%eax, %ecx
	movl	%r9d, %edx
	movl	%r8d, %esi
	movq	%r15, %rdi
	call	_BZ2_bzCompressInit
	testl	%eax, %eax
	movl	%eax, %r14d
	je	L1006
L943:
	addq	$88, %rsp
LCFI228:
	movl	%r14d, %eax
	popq	%rbx
LCFI229:
	popq	%rbp
LCFI230:
	popq	%r12
LCFI231:
	popq	%r13
LCFI232:
	popq	%r14
LCFI233:
	popq	%r15
LCFI234:
	ret
	.align 4,0x90
L1006:
LCFI235:
	movq	%rbp, 24(%rsp)
	movq	48(%rsp), %rbp
	movl	(%rbx), %eax
	movq	%r12, (%rsp)
	movl	%r13d, 8(%rsp)
	testq	%rbp, %rbp
	movl	%eax, 32(%rsp)
	je	L947
	movq	0(%rbp), %rax
	cmpq	%r15, %rax
	jne	L967
	movl	8(%rbp), %edx
	cmpl	$2, %edx
	je	L951
	jle	L1007
	cmpl	$3, %edx
	jne	L1008
L969:
	movl	$-1, %r14d
L965:
	cmpq	%r15, %rax
	jne	L943
	movq	24(%rbp), %rsi
	movq	64(%rsp), %rax
	movq	72(%rsp), %rdi
	testq	%rsi, %rsi
	je	L961
	call	*%rax
	movq	64(%rsp), %rax
	movq	72(%rsp), %rdi
L961:
	movq	32(%rbp), %rsi
	testq	%rsi, %rsi
	je	L962
	call	*%rax
	movq	64(%rsp), %rax
	movq	72(%rsp), %rdi
L962:
	movq	40(%rbp), %rsi
	testq	%rsi, %rsi
	je	L963
L1005:
	call	*%rax
	movq	64(%rsp), %rax
	movq	72(%rsp), %rdi
L963:
	movq	48(%rsp), %rsi
	call	*%rax
	jmp	L943
	.align 4,0x90
L1007:
	cmpl	$1, %edx
	je	L969
L950:
	testq	%rbp, %rbp
	je	L943
	movq	0(%rbp), %rax
	jmp	L965
	.align 4,0x90
L947:
	movl	$-2, %r14d
	jmp	L943
	.align 4,0x90
L951:
	movl	%r13d, 16(%rbp)
	movl	$4, 8(%rbp)
L954:
	movq	%rbp, %rdi
	call	_handle_compress.isra.2
	testb	%al, %al
	je	L1009
	movl	16(%rbp), %edx
	testl	%edx, %edx
	jne	L956
	cmpl	$255, 92(%rbp)
	ja	L957
	movl	96(%rbp), %eax
	testl	%eax, %eax
	jg	L956
L957:
	movl	116(%rbp), %eax
	cmpl	%eax, 120(%rbp)
	jl	L956
	movl	$1, 8(%rbp)
	movl	32(%rsp), %eax
	subl	%eax, (%rbx)
	movq	48(%rsp), %rbx
	testq	%rbx, %rbx
	je	L943
	cmpq	%r15, (%rbx)
	jne	L943
	movq	24(%rbx), %rsi
	movq	64(%rsp), %rax
	movq	72(%rsp), %rdi
	testq	%rsi, %rsi
	je	L958
	call	*%rax
	movq	64(%rsp), %rax
	movq	72(%rsp), %rdi
L958:
	movq	32(%rbx), %rsi
	testq	%rsi, %rsi
	je	L959
	call	*%rax
	movq	64(%rsp), %rax
	movq	72(%rsp), %rdi
L959:
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	jne	L1005
	jmp	L963
	.align 4,0x90
L1008:
	cmpl	$4, %edx
	jne	L950
	cmpl	16(%rbp), %r13d
	jne	L969
	jmp	L954
	.align 4,0x90
L956:
	movq	%r15, %rdi
	movl	$-8, %r14d
	call	_BZ2_bzCompressEnd
	jmp	L943
	.align 4,0x90
L967:
	movl	$-2, %r14d
	jmp	L965
L1009:
	movq	48(%rsp), %rbp
	movl	$-1, %r14d
	jmp	L950
LFE61:
	.align 4,0x90
	.globl _BZ2_bzBuffToBuffDecompress
_BZ2_bzBuffToBuffDecompress:
LFB62:
	testq	%rdi, %rdi
	je	L1029
	testq	%rsi, %rsi
	je	L1029
	testq	%rdx, %rdx
	je	L1029
	cmpl	$1, %r8d
	ja	L1029
	cmpl	$4, %r9d
	ja	L1029
	pushq	%r15
LCFI236:
	leaq	_default_bzalloc(%rip), %rax
	movl	%ecx, %r15d
	pushq	%r14
LCFI237:
	movl	%r9d, %r14d
	pushq	%r13
LCFI238:
	movl	%r8d, %r13d
	pushq	%r12
LCFI239:
	movq	%rdx, %r12
	movl	$1, %edx
	pushq	%rbp
LCFI240:
	movq	%rdi, %rbp
	xorl	%edi, %edi
	pushq	%rbx
LCFI241:
	movq	%rsi, %rbx
	movl	$64144, %esi
	subq	$104, %rsp
LCFI242:
	movq	%rax, 72(%rsp)
	leaq	_default_bzfree(%rip), %rax
	movq	$0, 88(%rsp)
	movq	%rax, 80(%rsp)
	call	_default_bzalloc
	testq	%rax, %rax
	je	L1030
	movl	$0, 3188(%rax)
	leaq	16(%rsp), %rdx
	movq	%rdx, (%rax)
	movq	%rdx, %rdi
	movq	%rax, 64(%rsp)
	movq	$0, 3168(%rax)
	movl	$10, 8(%rax)
	movq	$0, 32(%rax)
	movb	%r13b, 44(%rax)
	movq	$0, 3160(%rax)
	movq	$0, 3152(%rax)
	movl	$0, 48(%rax)
	movl	%r14d, 52(%rax)
	movl	(%rbx), %eax
	movq	%rdx, 8(%rsp)
	movq	$0, 28(%rsp)
	movq	$0, 52(%rsp)
	movq	%r12, 16(%rsp)
	movq	%rbp, 40(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%eax, 48(%rsp)
	call	_BZ2_bzDecompress
	movq	8(%rsp), %rdx
	testl	%eax, %eax
	je	L1012
	cmpl	$4, %eax
	movq	64(%rsp), %rbp
	je	L1080
L1013:
	testq	%rbp, %rbp
	je	L1010
	cmpq	%rdx, 0(%rbp)
	jne	L1010
	movq	3152(%rbp), %rsi
	movq	80(%rsp), %rdx
	movq	88(%rsp), %rdi
	testq	%rsi, %rsi
	je	L1024
	movl	%eax, 8(%rsp)
	call	*%rdx
	movq	80(%rsp), %rdx
	movq	88(%rsp), %rdi
	movl	8(%rsp), %eax
L1024:
	movq	3160(%rbp), %rsi
	testq	%rsi, %rsi
	je	L1025
	movl	%eax, 8(%rsp)
	call	*%rdx
	movq	80(%rsp), %rdx
	movq	88(%rsp), %rdi
	movl	8(%rsp), %eax
L1025:
	movq	3168(%rbp), %rsi
	testq	%rsi, %rsi
	je	L1026
	movl	%eax, 8(%rsp)
	call	*%rdx
	movq	80(%rsp), %rdx
	movq	88(%rsp), %rdi
	movl	8(%rsp), %eax
L1026:
	movl	%eax, 8(%rsp)
	movq	64(%rsp), %rsi
	call	*%rdx
	movl	8(%rsp), %eax
L1010:
	addq	$104, %rsp
LCFI243:
	popq	%rbx
LCFI244:
	popq	%rbp
LCFI245:
	popq	%r12
LCFI246:
	popq	%r13
LCFI247:
	popq	%r14
LCFI248:
	popq	%r15
LCFI249:
	ret
	.align 4,0x90
L1012:
LCFI250:
	movl	48(%rsp), %eax
	movq	64(%rsp), %rbx
	testl	%eax, %eax
	je	L1017
	testq	%rbx, %rbx
	movl	$-7, %eax
	je	L1010
	cmpq	%rdx, (%rbx)
	jne	L1010
	movq	3152(%rbx), %rsi
	testq	%rsi, %rsi
	je	L1018
	movq	88(%rsp), %rdi
	call	*80(%rsp)
L1018:
	movq	3160(%rbx), %rsi
	testq	%rsi, %rsi
	je	L1019
	movq	88(%rsp), %rdi
	call	*80(%rsp)
L1019:
	movq	3168(%rbx), %rsi
	testq	%rsi, %rsi
	je	L1020
	movq	88(%rsp), %rdi
	call	*80(%rsp)
L1020:
	movq	64(%rsp), %rsi
	movq	88(%rsp), %rdi
	call	*80(%rsp)
	movl	$-7, %eax
	jmp	L1010
	.align 4,0x90
L1017:
	testq	%rbx, %rbx
	movl	$-8, %eax
	je	L1010
	cmpq	%rdx, (%rbx)
	jne	L1010
	movq	3152(%rbx), %rsi
	testq	%rsi, %rsi
	je	L1021
	movq	88(%rsp), %rdi
	call	*80(%rsp)
L1021:
	movq	3160(%rbx), %rsi
	testq	%rsi, %rsi
	je	L1022
	movq	88(%rsp), %rdi
	call	*80(%rsp)
L1022:
	movq	3168(%rbx), %rsi
	testq	%rsi, %rsi
	je	L1023
	movq	88(%rsp), %rdi
	call	*80(%rsp)
L1023:
	movq	64(%rsp), %rsi
	movq	88(%rsp), %rdi
	call	*80(%rsp)
	movl	$-8, %eax
	jmp	L1010
	.align 4,0x90
L1029:
LCFI251:
	movl	$-2, %eax
	ret
	.align 4,0x90
L1080:
LCFI252:
	movl	48(%rsp), %eax
	subl	%eax, (%rbx)
	testq	%rbp, %rbp
	je	L1032
	cmpq	%rdx, 0(%rbp)
	jne	L1032
	movq	3152(%rbp), %rsi
	movq	80(%rsp), %rax
	movq	88(%rsp), %rdi
	testq	%rsi, %rsi
	je	L1014
	call	*%rax
	movq	80(%rsp), %rax
	movq	88(%rsp), %rdi
L1014:
	movq	3160(%rbp), %rsi
	testq	%rsi, %rsi
	je	L1015
	call	*%rax
	movq	80(%rsp), %rax
	movq	88(%rsp), %rdi
L1015:
	movq	3168(%rbp), %rsi
	testq	%rsi, %rsi
	je	L1016
	call	*%rax
	movq	80(%rsp), %rax
	movq	88(%rsp), %rdi
L1016:
	movq	64(%rsp), %rsi
	call	*%rax
	xorl	%eax, %eax
	jmp	L1010
L1032:
	xorl	%eax, %eax
	jmp	L1010
L1030:
	movl	$-3, %eax
	jmp	L1010
LFE62:
	.align 4,0x90
	.globl _BZ2_bzlibVersion
_BZ2_bzlibVersion:
LFB63:
	leaq	lC0(%rip), %rax
	ret
LFE63:
	.align 4,0x90
	.globl _BZ2_bzopen
_BZ2_bzopen:
LFB65:
	xorl	%edx, %edx
	jmp	_bzopen_or_bzdopen.isra.7
LFE65:
	.align 4,0x90
	.globl _BZ2_bzdopen
_BZ2_bzdopen:
LFB66:
	movq	%rsi, %rdi
	jmp	_bzopen_or_bzdopen.isra.7.constprop.10
LFE66:
	.align 4,0x90
	.globl _BZ2_bzread
_BZ2_bzread:
LFB67:
	cmpl	$4, 5096(%rdi)
	je	L1090
	movl	$0, 5096(%rdi)
	testq	%rsi, %rsi
	je	L1101
	testl	%edx, %edx
	jns	L1087
L1101:
	movl	$-2, 5096(%rdi)
	movl	$-1, %eax
	ret
	.align 4,0x90
L1089:
	testl	%edx, %edx
	jne	L1113
L1090:
	xorl	%eax, %eax
	ret
	.align 4,0x90
L1087:
	cmpb	$0, 5008(%rdi)
	je	L1089
	movl	$-1, 5096(%rdi)
	movl	$-1, %eax
	ret
	.align 4,0x90
L1113:
	pushq	%r14
LCFI253:
	pushq	%r13
LCFI254:
	leaq	4(%rdi), %r13
	pushq	%r12
LCFI255:
	leaq	5016(%rdi), %r12
	pushq	%rbp
LCFI256:
	movl	%edx, %ebp
	pushq	%rbx
LCFI257:
	movq	%rdi, %rbx
	movl	%edx, 5048(%rbx)
	movq	%rsi, 5040(%rdi)
	jmp	L1100
	.align 4,0x90
L1092:
	movq	%r12, %rdi
	call	_BZ2_bzDecompress
	testl	$-5, %eax
	jne	L1114
	testl	%eax, %eax
	je	L1115
	cmpl	$4, %eax
	je	L1116
L1097:
	movl	5048(%rbx), %eax
	testl	%eax, %eax
	je	L1099
L1100:
	movl	5024(%rbx), %esi
	testl	%esi, %esi
	jne	L1092
	movl	(%rbx), %r14d
	movl	%r14d, %edi
	call	_spec_getc
	cmpl	$-1, %eax
	je	L1092
	movzbl	%al, %edi
	movl	%r14d, %esi
	call	_spec_ungetc
	movl	(%rbx), %ecx
	movl	$5000, %edx
	movq	%r13, %rdi
	movl	$1, %esi
	call	_spec_fread
	movq	%r13, 5016(%rbx)
	movl	%eax, 5004(%rbx)
	movl	%eax, 5024(%rbx)
	jmp	L1092
	.align 4,0x90
L1115:
	movl	(%rbx), %r14d
	movl	%r14d, %edi
	call	_spec_getc
	cmpl	$-1, %eax
	je	L1096
	movzbl	%al, %edi
	movl	%r14d, %esi
	call	_spec_ungetc
	jmp	L1097
	.align 4,0x90
L1096:
	movl	5024(%rbx), %ecx
	testl	%ecx, %ecx
	jne	L1097
	movl	5048(%rbx), %edx
	testl	%edx, %edx
	jne	L1117
L1099:
	movl	$0, 5096(%rbx)
	movl	%ebp, %eax
L1084:
	popq	%rbx
LCFI258:
	popq	%rbp
LCFI259:
	popq	%r12
LCFI260:
	popq	%r13
LCFI261:
	popq	%r14
LCFI262:
	ret
	.align 4,0x90
L1114:
LCFI263:
	movl	%eax, 5096(%rbx)
	movl	$-1, %eax
	jmp	L1084
	.align 4,0x90
L1116:
	movl	$4, 5096(%rbx)
	movl	%ebp, %eax
	subl	5048(%rbx), %eax
	jmp	L1084
L1117:
	movl	$-7, 5096(%rbx)
	jmp	L1084
LFE67:
	.align 4,0x90
	.globl _BZ2_bzwrite
_BZ2_bzwrite:
LFB68:
	testq	%rdi, %rdi
	je	L1149
	movl	$0, 5096(%rdi)
	testl	%edx, %edx
	js	L1133
	testq	%rsi, %rsi
	je	L1133
	cmpb	$0, 5008(%rdi)
	je	L1154
	xorl	%eax, %eax
	testl	%edx, %edx
	je	L1150
	pushq	%r14
LCFI264:
	leaq	5016(%rdi), %r14
	pushq	%r13
LCFI265:
	leaq	4(%rdi), %r13
	pushq	%r12
LCFI266:
	pushq	%rbp
LCFI267:
	movl	%edx, %ebp
	pushq	%rbx
LCFI268:
	movq	%rdi, %rbx
	movl	%edx, 5024(%rbx)
	movq	%rsi, 5016(%rdi)
	.align 4,0x90
L1131:
	movq	5064(%rbx), %rdi
	movq	%r13, 5040(%rbx)
	movl	$5000, 5048(%rbx)
	testq	%rdi, %rdi
	je	L1124
	cmpq	%r14, (%rdi)
	jne	L1124
	movl	8(%rdi), %eax
	cmpl	$2, %eax
	je	L1126
	jg	L1127
	cmpl	$1, %eax
	jne	L1153
L1128:
	movl	$-1, 5096(%rbx)
L1119:
	movl	$-1, %eax
L1118:
	popq	%rbx
LCFI269:
	popq	%rbp
LCFI270:
	popq	%r12
LCFI271:
	popq	%r13
LCFI272:
	popq	%r14
LCFI273:
	ret
	.align 4,0x90
L1133:
LCFI274:
	movl	$-2, 5096(%rdi)
	movl	$-1, %eax
	ret
	.align 4,0x90
L1154:
	movl	$-1, 5096(%rdi)
	movl	$-1, %eax
	ret
	.align 4,0x90
L1149:
	movl	$-1, %eax
L1150:
	ret
	.align 4,0x90
L1127:
LCFI275:
	cmpl	$4, %eax
	jle	L1128
L1153:
	movl	$0, 5096(%rbx)
	movl	%ebp, %eax
	jmp	L1118
	.align 4,0x90
L1126:
	call	_handle_compress.isra.2
	testb	%al, %al
	je	L1124
	movl	5048(%rbx), %eax
	cmpl	$4999, %eax
	jbe	L1155
L1130:
	movl	5024(%rbx), %eax
	testl	%eax, %eax
	jne	L1131
	jmp	L1153
	.align 4,0x90
L1155:
	movl	(%rbx), %ecx
	movl	$5000, %r12d
	movl	$1, %esi
	movq	%r13, %rdi
	subl	%eax, %r12d
	movl	%r12d, %edx
	call	_spec_fwrite
	cmpl	%eax, %r12d
	je	L1130
	movl	$-6, 5096(%rbx)
	movl	$-1, %eax
	jmp	L1118
	.align 4,0x90
L1124:
	movl	$-2, 5096(%rbx)
	jmp	L1119
LFE68:
	.align 4,0x90
	.globl _BZ2_bzflush
_BZ2_bzflush:
LFB69:
	xorl	%eax, %eax
	ret
LFE69:
	.align 4,0x90
	.globl _BZ2_bzclose
_BZ2_bzclose:
LFB70:
	pushq	%r13
LCFI276:
	pushq	%r12
LCFI277:
	pushq	%rbp
LCFI278:
	pushq	%rbx
LCFI279:
	movq	%rdi, %rbx
	subq	$8, %rsp
LCFI280:
	cmpb	$0, 5008(%rdi)
	je	L1158
	movl	5096(%rdi), %esi
	leaq	5016(%rdi), %r12
	testl	%esi, %esi
	jne	L1192
	leaq	4(%rdi), %r13
L1160:
	movq	5064(%rbx), %rbp
	movq	%r13, 5040(%rbx)
	movl	$5000, 5048(%rbx)
	testq	%rbp, %rbp
	je	L1182
	cmpq	%r12, 0(%rbp)
	jne	L1182
	movl	8(%rbp), %eax
	cmpl	$2, %eax
	je	L1163
	jle	L1194
	cmpl	$3, %eax
	jne	L1195
L1165:
	movl	$-1, 5096(%rbx)
L1173:
	cmpb	$0, 5008(%rbx)
	jne	L1192
	movl	$-1, 5096(%rbx)
L1157:
	addq	$8, %rsp
LCFI281:
	popq	%rbx
LCFI282:
	popq	%rbp
LCFI283:
	popq	%r12
LCFI284:
	popq	%r13
LCFI285:
	ret
	.align 4,0x90
L1158:
LCFI286:
	cmpb	$0, 5100(%rdi)
	movl	$0, 5096(%rdi)
	jne	L1196
L1175:
	addq	$8, %rsp
LCFI287:
	movq	%rbx, %rdi
	popq	%rbx
LCFI288:
	popq	%rbp
LCFI289:
	popq	%r12
LCFI290:
	popq	%r13
LCFI291:
	jmp	_free
	.align 4,0x90
L1196:
LCFI292:
	leaq	5016(%rdi), %rdi
	call	_BZ2_bzDecompressEnd
	jmp	L1175
	.align 4,0x90
L1192:
	movl	$0, 5096(%rbx)
	movq	%r12, %rdi
	call	_BZ2_bzCompressEnd
	jmp	L1175
	.align 4,0x90
L1194:
	cmpl	$1, %eax
	je	L1165
L1162:
	movl	$0, 5096(%rbx)
	jmp	L1157
	.align 4,0x90
L1163:
	movl	5024(%rbx), %eax
	movl	$4, 8(%rbp)
	movl	%eax, 16(%rbp)
L1167:
	movq	%rbp, %rdi
	call	_handle_compress.isra.2
	testb	%al, %al
	je	L1168
	movl	16(%rbp), %ecx
	movl	5048(%rbx), %eax
	testl	%ecx, %ecx
	jne	L1169
	cmpl	$255, 92(%rbp)
	ja	L1170
	movl	96(%rbp), %edx
	testl	%edx, %edx
	jg	L1169
L1170:
	movl	116(%rbp), %edx
	cmpl	%edx, 120(%rbp)
	jl	L1169
	cmpl	$4999, %eax
	movl	$1, 8(%rbp)
	ja	L1192
	movl	(%rbx), %ecx
	movl	$5000, %ebp
	movl	$1, %esi
	movq	%r13, %rdi
	subl	%eax, %ebp
	movl	%ebp, %edx
	call	_spec_fwrite
	cmpl	%eax, %ebp
	je	L1192
L1180:
	movl	$-6, 5096(%rbx)
	jmp	L1173
	.align 4,0x90
L1169:
	cmpl	$4999, %eax
	ja	L1160
	movl	(%rbx), %ecx
	movl	$5000, %ebp
	movl	$1, %esi
	movq	%r13, %rdi
	subl	%eax, %ebp
	movl	%ebp, %edx
	call	_spec_fwrite
	cmpl	%eax, %ebp
	je	L1160
	jmp	L1180
	.align 4,0x90
L1195:
	cmpl	$4, %eax
	jne	L1162
	movl	5024(%rbx), %eax
	cmpl	%eax, 16(%rbp)
	je	L1167
L1168:
	movl	$-1, %eax
L1161:
	movl	%eax, 5096(%rbx)
	jmp	L1173
	.align 4,0x90
L1182:
	movl	$-2, %eax
	jmp	L1161
LFE70:
	.align 4,0x90
	.globl _BZ2_bzerror
_BZ2_bzerror:
LFB71:
	movl	5096(%rdi), %eax
	movl	$0, %edx
	testl	%eax, %eax
	cmovg	%edx, %eax
	movl	%eax, (%rsi)
	leaq	_bzerrorstrings(%rip), %rdx
	negl	%eax
	cltq
	movq	(%rdx,%rax,8), %rax
	ret
LFE71:
	.cstring
lC7:
	.ascii "OK\0"
lC8:
	.ascii "SEQUENCE_ERROR\0"
lC9:
	.ascii "PARAM_ERROR\0"
lC10:
	.ascii "MEM_ERROR\0"
lC11:
	.ascii "DATA_ERROR\0"
lC12:
	.ascii "DATA_ERROR_MAGIC\0"
lC13:
	.ascii "IO_ERROR\0"
lC14:
	.ascii "UNEXPECTED_EOF\0"
lC15:
	.ascii "OUTBUFF_FULL\0"
lC16:
	.ascii "CONFIG_ERROR\0"
lC17:
	.ascii "???\0"
	.const_data
	.align 5
_bzerrorstrings:
	.quad	lC7
	.quad	lC8
	.quad	lC9
	.quad	lC10
	.quad	lC11
	.quad	lC12
	.quad	lC13
	.quad	lC14
	.quad	lC15
	.quad	lC16
	.quad	lC17
	.quad	lC17
	.quad	lC17
	.quad	lC17
	.quad	lC17
	.quad	lC17
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
	.quad	LFB39-.
	.set L$set$2,LFE39-LFB39
	.quad L$set$2
	.byte	0
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$3,LEFDE3-LASFDE3
	.long L$set$3
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB34-.
	.set L$set$4,LFE34-LFB34
	.quad L$set$4
	.byte	0
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$5,LEFDE5-LASFDE5
	.long L$set$5
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB33-.
	.set L$set$6,LFE33-LFB33
	.quad L$set$6
	.byte	0
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$7,LEFDE7-LASFDE7
	.long L$set$7
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB74-.
	.set L$set$8,LFE74-LFB74
	.quad L$set$8
	.byte	0
	.byte	0x4
	.set L$set$9,LCFI0-LFB74
	.long L$set$9
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$10,LCFI1-LCFI0
	.long L$set$10
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$11,LCFI2-LCFI1
	.long L$set$11
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$12,LCFI3-LCFI2
	.long L$set$12
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$13,LCFI4-LCFI3
	.long L$set$13
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$14,LCFI5-LCFI4
	.long L$set$14
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$15,LCFI6-LCFI5
	.long L$set$15
	.byte	0xb
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$16,LEFDE9-LASFDE9
	.long L$set$16
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB83-.
	.set L$set$17,LFE83-LFB83
	.quad L$set$17
	.byte	0
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$18,LEFDE11-LASFDE11
	.long L$set$18
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB31-.
	.set L$set$19,LFE31-LFB31
	.quad L$set$19
	.byte	0
	.byte	0x4
	.set L$set$20,LCFI7-LFB31
	.long L$set$20
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$21,LCFI8-LCFI7
	.long L$set$21
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$22,LCFI9-LCFI8
	.long L$set$22
	.byte	0xe
	.byte	0x20
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$23,LEFDE13-LASFDE13
	.long L$set$23
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB38-.
	.set L$set$24,LFE38-LFB38
	.quad L$set$24
	.byte	0
	.byte	0x4
	.set L$set$25,LCFI10-LFB38
	.long L$set$25
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$26,LCFI11-LCFI10
	.long L$set$26
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$27,LCFI12-LCFI11
	.long L$set$27
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$28,LCFI13-LCFI12
	.long L$set$28
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$29,LCFI14-LCFI13
	.long L$set$29
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$30,LCFI15-LCFI14
	.long L$set$30
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$31,LCFI16-LCFI15
	.long L$set$31
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$32,LCFI17-LCFI16
	.long L$set$32
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$33,LCFI18-LCFI17
	.long L$set$33
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$34,LCFI19-LCFI18
	.long L$set$34
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$35,LCFI20-LCFI19
	.long L$set$35
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$36,LCFI21-LCFI20
	.long L$set$36
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$37,LCFI22-LCFI21
	.long L$set$37
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$38,LCFI23-LCFI22
	.long L$set$38
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$39,LCFI24-LCFI23
	.long L$set$39
	.byte	0xb
	.byte	0x4
	.set L$set$40,LCFI25-LCFI24
	.long L$set$40
	.byte	0xe
	.byte	0x8
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0xcf
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$41,LEFDE15-LASFDE15
	.long L$set$41
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB79-.
	.set L$set$42,LFE79-LFB79
	.quad L$set$42
	.byte	0
	.byte	0x4
	.set L$set$43,LCFI26-LFB79
	.long L$set$43
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$44,LCFI27-LCFI26
	.long L$set$44
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$45,LCFI28-LCFI27
	.long L$set$45
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$46,LCFI29-LCFI28
	.long L$set$46
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$47,LCFI30-LCFI29
	.long L$set$47
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$48,LCFI31-LCFI30
	.long L$set$48
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$49,LCFI32-LCFI31
	.long L$set$49
	.byte	0xb
	.byte	0x4
	.set L$set$50,LCFI33-LCFI32
	.long L$set$50
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$51,LCFI34-LCFI33
	.long L$set$51
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$52,LCFI35-LCFI34
	.long L$set$52
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$53,LCFI36-LCFI35
	.long L$set$53
	.byte	0xb
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$54,LEFDE17-LASFDE17
	.long L$set$54
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB44-.
	.set L$set$55,LFE44-LFB44
	.quad L$set$55
	.byte	0
	.byte	0x4
	.set L$set$56,LCFI37-LFB44
	.long L$set$56
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$57,LCFI38-LCFI37
	.long L$set$57
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$58,LCFI39-LCFI38
	.long L$set$58
	.byte	0xb
	.byte	0x4
	.set L$set$59,LCFI40-LCFI39
	.long L$set$59
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$60,LCFI41-LCFI40
	.long L$set$60
	.byte	0xb
	.byte	0x4
	.set L$set$61,LCFI42-LCFI41
	.long L$set$61
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$62,LCFI43-LCFI42
	.long L$set$62
	.byte	0xb
	.byte	0x4
	.set L$set$63,LCFI44-LCFI43
	.long L$set$63
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$64,LCFI45-LCFI44
	.long L$set$64
	.byte	0xb
	.byte	0x4
	.set L$set$65,LCFI46-LCFI45
	.long L$set$65
	.byte	0xa
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$66,LCFI47-LCFI46
	.long L$set$66
	.byte	0xb
	.byte	0x4
	.set L$set$67,LCFI48-LCFI47
	.long L$set$67
	.byte	0xe
	.byte	0x8
	.byte	0xc3
	.byte	0x4
	.set L$set$68,LCFI49-LCFI48
	.long L$set$68
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$69,LCFI50-LCFI49
	.long L$set$69
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$70,LEFDE19-LASFDE19
	.long L$set$70
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB45-.
	.set L$set$71,LFE45-LFB45
	.quad L$set$71
	.byte	0
	.byte	0x4
	.set L$set$72,LCFI51-LFB45
	.long L$set$72
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$73,LCFI52-LCFI51
	.long L$set$73
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$74,LCFI53-LCFI52
	.long L$set$74
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$75,LCFI54-LCFI53
	.long L$set$75
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$76,LCFI55-LCFI54
	.long L$set$76
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$77,LCFI56-LCFI55
	.long L$set$77
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$78,LCFI57-LCFI56
	.long L$set$78
	.byte	0xc3
	.byte	0xc6
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$79,LEFDE21-LASFDE21
	.long L$set$79
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB46-.
	.set L$set$80,LFE46-LFB46
	.quad L$set$80
	.byte	0
	.byte	0x4
	.set L$set$81,LCFI58-LFB46
	.long L$set$81
	.byte	0xe
	.byte	0x10
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.set L$set$82,LCFI59-LCFI58
	.long L$set$82
	.byte	0xe
	.byte	0x18
	.byte	0x86
	.byte	0x3
	.byte	0x4
	.set L$set$83,LCFI60-LCFI59
	.long L$set$83
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x4
	.set L$set$84,LCFI61-LCFI60
	.long L$set$84
	.byte	0xa
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$85,LCFI62-LCFI61
	.long L$set$85
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$86,LCFI63-LCFI62
	.long L$set$86
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$87,LCFI64-LCFI63
	.long L$set$87
	.byte	0xb
	.byte	0x4
	.set L$set$88,LCFI65-LCFI64
	.long L$set$88
	.byte	0xe
	.byte	0x8
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0x4
	.set L$set$89,LCFI66-LCFI65
	.long L$set$89
	.byte	0xe
	.byte	0x20
	.byte	0x83
	.byte	0x4
	.byte	0x86
	.byte	0x3
	.byte	0x8c
	.byte	0x2
	.align 3
LEFDE21:
LSFDE23:
	.set L$set$90,LEFDE23-LASFDE23
	.long L$set$90
LASFDE23:
	.long	LASFDE23-EH_frame1
	.quad	LFB48-.
	.set L$set$91,LFE48-LFB48
	.quad L$set$91
	.byte	0
	.align 3
LEFDE23:
LSFDE25:
	.set L$set$92,LEFDE25-LASFDE25
	.long L$set$92
LASFDE25:
	.long	LASFDE25-EH_frame1
	.quad	LFB50-.
	.set L$set$93,LFE50-LFB50
	.quad L$set$93
	.byte	0
	.byte	0x4
	.set L$set$94,LCFI67-LFB50
	.long L$set$94
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$95,LCFI68-LCFI67
	.long L$set$95
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$96,LCFI69-LCFI68
	.long L$set$96
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$97,LCFI70-LCFI69
	.long L$set$97
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$98,LCFI71-LCFI70
	.long L$set$98
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$99,LCFI72-LCFI71
	.long L$set$99
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$100,LCFI73-LCFI72
	.long L$set$100
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$101,LCFI74-LCFI73
	.long L$set$101
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$102,LCFI75-LCFI74
	.long L$set$102
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$103,LCFI76-LCFI75
	.long L$set$103
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$104,LCFI77-LCFI76
	.long L$set$104
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$105,LCFI78-LCFI77
	.long L$set$105
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$106,LCFI79-LCFI78
	.long L$set$106
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$107,LCFI80-LCFI79
	.long L$set$107
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$108,LCFI81-LCFI80
	.long L$set$108
	.byte	0xb
	.align 3
LEFDE25:
LSFDE27:
	.set L$set$109,LEFDE27-LASFDE27
	.long L$set$109
LASFDE27:
	.long	LASFDE27-EH_frame1
	.quad	LFB51-.
	.set L$set$110,LFE51-LFB51
	.quad L$set$110
	.byte	0
	.byte	0x4
	.set L$set$111,LCFI82-LFB51
	.long L$set$111
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$112,LCFI83-LCFI82
	.long L$set$112
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$113,LCFI84-LCFI83
	.long L$set$113
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$114,LCFI85-LCFI84
	.long L$set$114
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$115,LCFI86-LCFI85
	.long L$set$115
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$116,LCFI87-LCFI86
	.long L$set$116
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$117,LCFI88-LCFI87
	.long L$set$117
	.byte	0xc3
	.byte	0xc6
	.align 3
LEFDE27:
LSFDE29:
	.set L$set$118,LEFDE29-LASFDE29
	.long L$set$118
LASFDE29:
	.long	LASFDE29-EH_frame1
	.quad	LFB53-.
	.set L$set$119,LFE53-LFB53
	.quad L$set$119
	.byte	0
	.byte	0x4
	.set L$set$120,LCFI89-LFB53
	.long L$set$120
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$121,LCFI90-LCFI89
	.long L$set$121
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$122,LCFI91-LCFI90
	.long L$set$122
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$123,LCFI92-LCFI91
	.long L$set$123
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$124,LCFI93-LCFI92
	.long L$set$124
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$125,LCFI94-LCFI93
	.long L$set$125
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$126,LCFI95-LCFI94
	.long L$set$126
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$127,LCFI96-LCFI95
	.long L$set$127
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$128,LCFI97-LCFI96
	.long L$set$128
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$129,LCFI98-LCFI97
	.long L$set$129
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$130,LCFI99-LCFI98
	.long L$set$130
	.byte	0xb
	.byte	0x4
	.set L$set$131,LCFI100-LCFI99
	.long L$set$131
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$132,LCFI101-LCFI100
	.long L$set$132
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$133,LCFI102-LCFI101
	.long L$set$133
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$134,LCFI103-LCFI102
	.long L$set$134
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$135,LCFI104-LCFI103
	.long L$set$135
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$136,LCFI105-LCFI104
	.long L$set$136
	.byte	0xb
	.align 3
LEFDE29:
LSFDE31:
	.set L$set$137,LEFDE31-LASFDE31
	.long L$set$137
LASFDE31:
	.long	LASFDE31-EH_frame1
	.quad	LFB54-.
	.set L$set$138,LFE54-LFB54
	.quad L$set$138
	.byte	0
	.byte	0x4
	.set L$set$139,LCFI106-LFB54
	.long L$set$139
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$140,LCFI107-LCFI106
	.long L$set$140
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$141,LCFI108-LCFI107
	.long L$set$141
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$142,LCFI109-LCFI108
	.long L$set$142
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$143,LCFI110-LCFI109
	.long L$set$143
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$144,LCFI111-LCFI110
	.long L$set$144
	.byte	0xe
	.byte	0x8
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0x4
	.set L$set$145,LCFI112-LCFI111
	.long L$set$145
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x86
	.byte	0x5
	.byte	0x8c
	.byte	0x4
	.byte	0x8d
	.byte	0x3
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$146,LCFI113-LCFI112
	.long L$set$146
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$147,LCFI114-LCFI113
	.long L$set$147
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$148,LCFI115-LCFI114
	.long L$set$148
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$149,LCFI116-LCFI115
	.long L$set$149
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$150,LCFI117-LCFI116
	.long L$set$150
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$151,LCFI118-LCFI117
	.long L$set$151
	.byte	0xb
	.byte	0x4
	.set L$set$152,LCFI119-LCFI118
	.long L$set$152
	.byte	0xe
	.byte	0x8
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.align 3
LEFDE31:
LSFDE33:
	.set L$set$153,LEFDE33-LASFDE33
	.long L$set$153
LASFDE33:
	.long	LASFDE33-EH_frame1
	.quad	LFB55-.
	.set L$set$154,LFE55-LFB55
	.quad L$set$154
	.byte	0
	.byte	0x4
	.set L$set$155,LCFI120-LFB55
	.long L$set$155
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$156,LCFI121-LCFI120
	.long L$set$156
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$157,LCFI122-LCFI121
	.long L$set$157
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$158,LCFI123-LCFI122
	.long L$set$158
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$159,LCFI124-LCFI123
	.long L$set$159
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$160,LCFI125-LCFI124
	.long L$set$160
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$161,LCFI126-LCFI125
	.long L$set$161
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$162,LCFI127-LCFI126
	.long L$set$162
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$163,LCFI128-LCFI127
	.long L$set$163
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$164,LCFI129-LCFI128
	.long L$set$164
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$165,LCFI130-LCFI129
	.long L$set$165
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$166,LCFI131-LCFI130
	.long L$set$166
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$167,LCFI132-LCFI131
	.long L$set$167
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$168,LCFI133-LCFI132
	.long L$set$168
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$169,LCFI134-LCFI133
	.long L$set$169
	.byte	0xb
	.byte	0x4
	.set L$set$170,LCFI135-LCFI134
	.long L$set$170
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$171,LCFI136-LCFI135
	.long L$set$171
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$172,LCFI137-LCFI136
	.long L$set$172
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$173,LCFI138-LCFI137
	.long L$set$173
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$174,LCFI139-LCFI138
	.long L$set$174
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$175,LCFI140-LCFI139
	.long L$set$175
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$176,LCFI141-LCFI140
	.long L$set$176
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$177,LCFI142-LCFI141
	.long L$set$177
	.byte	0xb
	.byte	0x4
	.set L$set$178,LCFI143-LCFI142
	.long L$set$178
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$179,LCFI144-LCFI143
	.long L$set$179
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$180,LCFI145-LCFI144
	.long L$set$180
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$181,LCFI146-LCFI145
	.long L$set$181
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$182,LCFI147-LCFI146
	.long L$set$182
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$183,LCFI148-LCFI147
	.long L$set$183
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$184,LCFI149-LCFI148
	.long L$set$184
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$185,LCFI150-LCFI149
	.long L$set$185
	.byte	0xb
	.align 3
LEFDE33:
LSFDE35:
	.set L$set$186,LEFDE35-LASFDE35
	.long L$set$186
LASFDE35:
	.long	LASFDE35-EH_frame1
	.quad	LFB56-.
	.set L$set$187,LFE56-LFB56
	.quad L$set$187
	.byte	0
	.byte	0x4
	.set L$set$188,LCFI151-LFB56
	.long L$set$188
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$189,LCFI152-LCFI151
	.long L$set$189
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$190,LCFI153-LCFI152
	.long L$set$190
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$191,LCFI154-LCFI153
	.long L$set$191
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$192,LCFI155-LCFI154
	.long L$set$192
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$193,LCFI156-LCFI155
	.long L$set$193
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$194,LCFI157-LCFI156
	.long L$set$194
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.set L$set$195,LCFI158-LCFI157
	.long L$set$195
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$196,LCFI159-LCFI158
	.long L$set$196
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$197,LCFI160-LCFI159
	.long L$set$197
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$198,LCFI161-LCFI160
	.long L$set$198
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$199,LCFI162-LCFI161
	.long L$set$199
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$200,LCFI163-LCFI162
	.long L$set$200
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$201,LCFI164-LCFI163
	.long L$set$201
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$202,LCFI165-LCFI164
	.long L$set$202
	.byte	0xb
	.byte	0x4
	.set L$set$203,LCFI166-LCFI165
	.long L$set$203
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$204,LCFI167-LCFI166
	.long L$set$204
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$205,LCFI168-LCFI167
	.long L$set$205
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$206,LCFI169-LCFI168
	.long L$set$206
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$207,LCFI170-LCFI169
	.long L$set$207
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$208,LCFI171-LCFI170
	.long L$set$208
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$209,LCFI172-LCFI171
	.long L$set$209
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$210,LCFI173-LCFI172
	.long L$set$210
	.byte	0xb
	.byte	0x4
	.set L$set$211,LCFI174-LCFI173
	.long L$set$211
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$212,LCFI175-LCFI174
	.long L$set$212
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$213,LCFI176-LCFI175
	.long L$set$213
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$214,LCFI177-LCFI176
	.long L$set$214
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$215,LCFI178-LCFI177
	.long L$set$215
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$216,LCFI179-LCFI178
	.long L$set$216
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$217,LCFI180-LCFI179
	.long L$set$217
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$218,LCFI181-LCFI180
	.long L$set$218
	.byte	0xb
	.align 3
LEFDE35:
LSFDE37:
	.set L$set$219,LEFDE37-LASFDE37
	.long L$set$219
LASFDE37:
	.long	LASFDE37-EH_frame1
	.quad	LFB57-.
	.set L$set$220,LFE57-LFB57
	.quad L$set$220
	.byte	0
	.byte	0x4
	.set L$set$221,LCFI182-LFB57
	.long L$set$221
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$222,LCFI183-LCFI182
	.long L$set$222
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$223,LCFI184-LCFI183
	.long L$set$223
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$224,LCFI185-LCFI184
	.long L$set$224
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$225,LCFI186-LCFI185
	.long L$set$225
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$226,LCFI187-LCFI186
	.long L$set$226
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.set L$set$227,LCFI188-LCFI187
	.long L$set$227
	.byte	0xa
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$228,LCFI189-LCFI188
	.long L$set$228
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$229,LCFI190-LCFI189
	.long L$set$229
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$230,LCFI191-LCFI190
	.long L$set$230
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$231,LCFI192-LCFI191
	.long L$set$231
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$232,LCFI193-LCFI192
	.long L$set$232
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$233,LCFI194-LCFI193
	.long L$set$233
	.byte	0xb
	.byte	0x4
	.set L$set$234,LCFI195-LCFI194
	.long L$set$234
	.byte	0xa
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$235,LCFI196-LCFI195
	.long L$set$235
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$236,LCFI197-LCFI196
	.long L$set$236
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$237,LCFI198-LCFI197
	.long L$set$237
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$238,LCFI199-LCFI198
	.long L$set$238
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$239,LCFI200-LCFI199
	.long L$set$239
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$240,LCFI201-LCFI200
	.long L$set$240
	.byte	0xb
	.align 3
LEFDE37:
LSFDE39:
	.set L$set$241,LEFDE39-LASFDE39
	.long L$set$241
LASFDE39:
	.long	LASFDE39-EH_frame1
	.quad	LFB58-.
	.set L$set$242,LFE58-LFB58
	.quad L$set$242
	.byte	0
	.byte	0x4
	.set L$set$243,LCFI202-LFB58
	.long L$set$243
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$244,LCFI203-LCFI202
	.long L$set$244
	.byte	0xa
	.byte	0xc3
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$245,LCFI204-LCFI203
	.long L$set$245
	.byte	0xb
	.byte	0x4
	.set L$set$246,LCFI205-LCFI204
	.long L$set$246
	.byte	0xc3
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE39:
LSFDE41:
	.set L$set$247,LEFDE41-LASFDE41
	.long L$set$247
LASFDE41:
	.long	LASFDE41-EH_frame1
	.quad	LFB59-.
	.set L$set$248,LFE59-LFB59
	.quad L$set$248
	.byte	0
	.byte	0x4
	.set L$set$249,LCFI206-LFB59
	.long L$set$249
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$250,LCFI207-LCFI206
	.long L$set$250
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$251,LCFI208-LCFI207
	.long L$set$251
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$252,LCFI209-LCFI208
	.long L$set$252
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$253,LCFI210-LCFI209
	.long L$set$253
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$254,LCFI211-LCFI210
	.long L$set$254
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$255,LCFI212-LCFI211
	.long L$set$255
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.set L$set$256,LCFI213-LCFI212
	.long L$set$256
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$257,LCFI214-LCFI213
	.long L$set$257
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$258,LCFI215-LCFI214
	.long L$set$258
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$259,LCFI216-LCFI215
	.long L$set$259
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$260,LCFI217-LCFI216
	.long L$set$260
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$261,LCFI218-LCFI217
	.long L$set$261
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$262,LCFI219-LCFI218
	.long L$set$262
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$263,LCFI220-LCFI219
	.long L$set$263
	.byte	0xb
	.align 3
LEFDE41:
LSFDE43:
	.set L$set$264,LEFDE43-LASFDE43
	.long L$set$264
LASFDE43:
	.long	LASFDE43-EH_frame1
	.quad	LFB60-.
	.set L$set$265,LFE60-LFB60
	.quad L$set$265
	.byte	0
	.align 3
LEFDE43:
LSFDE45:
	.set L$set$266,LEFDE45-LASFDE45
	.long L$set$266
LASFDE45:
	.long	LASFDE45-EH_frame1
	.quad	LFB61-.
	.set L$set$267,LFE61-LFB61
	.quad L$set$267
	.byte	0
	.byte	0x4
	.set L$set$268,LCFI221-LFB61
	.long L$set$268
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$269,LCFI222-LCFI221
	.long L$set$269
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$270,LCFI223-LCFI222
	.long L$set$270
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$271,LCFI224-LCFI223
	.long L$set$271
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$272,LCFI225-LCFI224
	.long L$set$272
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$273,LCFI226-LCFI225
	.long L$set$273
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$274,LCFI227-LCFI226
	.long L$set$274
	.byte	0xe
	.byte	0x90,0x1
	.byte	0x4
	.set L$set$275,LCFI228-LCFI227
	.long L$set$275
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$276,LCFI229-LCFI228
	.long L$set$276
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$277,LCFI230-LCFI229
	.long L$set$277
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$278,LCFI231-LCFI230
	.long L$set$278
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$279,LCFI232-LCFI231
	.long L$set$279
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$280,LCFI233-LCFI232
	.long L$set$280
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$281,LCFI234-LCFI233
	.long L$set$281
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$282,LCFI235-LCFI234
	.long L$set$282
	.byte	0xb
	.align 3
LEFDE45:
LSFDE47:
	.set L$set$283,LEFDE47-LASFDE47
	.long L$set$283
LASFDE47:
	.long	LASFDE47-EH_frame1
	.quad	LFB62-.
	.set L$set$284,LFE62-LFB62
	.quad L$set$284
	.byte	0
	.byte	0x4
	.set L$set$285,LCFI236-LFB62
	.long L$set$285
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$286,LCFI237-LCFI236
	.long L$set$286
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$287,LCFI238-LCFI237
	.long L$set$287
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$288,LCFI239-LCFI238
	.long L$set$288
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$289,LCFI240-LCFI239
	.long L$set$289
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$290,LCFI241-LCFI240
	.long L$set$290
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$291,LCFI242-LCFI241
	.long L$set$291
	.byte	0xe
	.byte	0xa0,0x1
	.byte	0x4
	.set L$set$292,LCFI243-LCFI242
	.long L$set$292
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$293,LCFI244-LCFI243
	.long L$set$293
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$294,LCFI245-LCFI244
	.long L$set$294
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$295,LCFI246-LCFI245
	.long L$set$295
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$296,LCFI247-LCFI246
	.long L$set$296
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$297,LCFI248-LCFI247
	.long L$set$297
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$298,LCFI249-LCFI248
	.long L$set$298
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$299,LCFI250-LCFI249
	.long L$set$299
	.byte	0xb
	.byte	0x4
	.set L$set$300,LCFI251-LCFI250
	.long L$set$300
	.byte	0xe
	.byte	0x8
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0xcf
	.byte	0x4
	.set L$set$301,LCFI252-LCFI251
	.long L$set$301
	.byte	0xe
	.byte	0xa0,0x1
	.byte	0x83
	.byte	0x7
	.byte	0x86
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.byte	0x8f
	.byte	0x2
	.align 3
LEFDE47:
LSFDE49:
	.set L$set$302,LEFDE49-LASFDE49
	.long L$set$302
LASFDE49:
	.long	LASFDE49-EH_frame1
	.quad	LFB63-.
	.set L$set$303,LFE63-LFB63
	.quad L$set$303
	.byte	0
	.align 3
LEFDE49:
LSFDE51:
	.set L$set$304,LEFDE51-LASFDE51
	.long L$set$304
LASFDE51:
	.long	LASFDE51-EH_frame1
	.quad	LFB65-.
	.set L$set$305,LFE65-LFB65
	.quad L$set$305
	.byte	0
	.align 3
LEFDE51:
LSFDE53:
	.set L$set$306,LEFDE53-LASFDE53
	.long L$set$306
LASFDE53:
	.long	LASFDE53-EH_frame1
	.quad	LFB66-.
	.set L$set$307,LFE66-LFB66
	.quad L$set$307
	.byte	0
	.align 3
LEFDE53:
LSFDE55:
	.set L$set$308,LEFDE55-LASFDE55
	.long L$set$308
LASFDE55:
	.long	LASFDE55-EH_frame1
	.quad	LFB67-.
	.set L$set$309,LFE67-LFB67
	.quad L$set$309
	.byte	0
	.byte	0x4
	.set L$set$310,LCFI253-LFB67
	.long L$set$310
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$311,LCFI254-LCFI253
	.long L$set$311
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$312,LCFI255-LCFI254
	.long L$set$312
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$313,LCFI256-LCFI255
	.long L$set$313
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$314,LCFI257-LCFI256
	.long L$set$314
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$315,LCFI258-LCFI257
	.long L$set$315
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$316,LCFI259-LCFI258
	.long L$set$316
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$317,LCFI260-LCFI259
	.long L$set$317
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$318,LCFI261-LCFI260
	.long L$set$318
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$319,LCFI262-LCFI261
	.long L$set$319
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$320,LCFI263-LCFI262
	.long L$set$320
	.byte	0xb
	.align 3
LEFDE55:
LSFDE57:
	.set L$set$321,LEFDE57-LASFDE57
	.long L$set$321
LASFDE57:
	.long	LASFDE57-EH_frame1
	.quad	LFB68-.
	.set L$set$322,LFE68-LFB68
	.quad L$set$322
	.byte	0
	.byte	0x4
	.set L$set$323,LCFI264-LFB68
	.long L$set$323
	.byte	0xe
	.byte	0x10
	.byte	0x8e
	.byte	0x2
	.byte	0x4
	.set L$set$324,LCFI265-LCFI264
	.long L$set$324
	.byte	0xe
	.byte	0x18
	.byte	0x8d
	.byte	0x3
	.byte	0x4
	.set L$set$325,LCFI266-LCFI265
	.long L$set$325
	.byte	0xe
	.byte	0x20
	.byte	0x8c
	.byte	0x4
	.byte	0x4
	.set L$set$326,LCFI267-LCFI266
	.long L$set$326
	.byte	0xe
	.byte	0x28
	.byte	0x86
	.byte	0x5
	.byte	0x4
	.set L$set$327,LCFI268-LCFI267
	.long L$set$327
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x4
	.set L$set$328,LCFI269-LCFI268
	.long L$set$328
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$329,LCFI270-LCFI269
	.long L$set$329
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$330,LCFI271-LCFI270
	.long L$set$330
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$331,LCFI272-LCFI271
	.long L$set$331
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$332,LCFI273-LCFI272
	.long L$set$332
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$333,LCFI274-LCFI273
	.long L$set$333
	.byte	0xc3
	.byte	0xc6
	.byte	0xcc
	.byte	0xcd
	.byte	0xce
	.byte	0x4
	.set L$set$334,LCFI275-LCFI274
	.long L$set$334
	.byte	0xe
	.byte	0x30
	.byte	0x83
	.byte	0x6
	.byte	0x86
	.byte	0x5
	.byte	0x8c
	.byte	0x4
	.byte	0x8d
	.byte	0x3
	.byte	0x8e
	.byte	0x2
	.align 3
LEFDE57:
LSFDE59:
	.set L$set$335,LEFDE59-LASFDE59
	.long L$set$335
LASFDE59:
	.long	LASFDE59-EH_frame1
	.quad	LFB69-.
	.set L$set$336,LFE69-LFB69
	.quad L$set$336
	.byte	0
	.align 3
LEFDE59:
LSFDE61:
	.set L$set$337,LEFDE61-LASFDE61
	.long L$set$337
LASFDE61:
	.long	LASFDE61-EH_frame1
	.quad	LFB70-.
	.set L$set$338,LFE70-LFB70
	.quad L$set$338
	.byte	0
	.byte	0x4
	.set L$set$339,LCFI276-LFB70
	.long L$set$339
	.byte	0xe
	.byte	0x10
	.byte	0x8d
	.byte	0x2
	.byte	0x4
	.set L$set$340,LCFI277-LCFI276
	.long L$set$340
	.byte	0xe
	.byte	0x18
	.byte	0x8c
	.byte	0x3
	.byte	0x4
	.set L$set$341,LCFI278-LCFI277
	.long L$set$341
	.byte	0xe
	.byte	0x20
	.byte	0x86
	.byte	0x4
	.byte	0x4
	.set L$set$342,LCFI279-LCFI278
	.long L$set$342
	.byte	0xe
	.byte	0x28
	.byte	0x83
	.byte	0x5
	.byte	0x4
	.set L$set$343,LCFI280-LCFI279
	.long L$set$343
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$344,LCFI281-LCFI280
	.long L$set$344
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$345,LCFI282-LCFI281
	.long L$set$345
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$346,LCFI283-LCFI282
	.long L$set$346
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$347,LCFI284-LCFI283
	.long L$set$347
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$348,LCFI285-LCFI284
	.long L$set$348
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$349,LCFI286-LCFI285
	.long L$set$349
	.byte	0xb
	.byte	0x4
	.set L$set$350,LCFI287-LCFI286
	.long L$set$350
	.byte	0xa
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$351,LCFI288-LCFI287
	.long L$set$351
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$352,LCFI289-LCFI288
	.long L$set$352
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$353,LCFI290-LCFI289
	.long L$set$353
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$354,LCFI291-LCFI290
	.long L$set$354
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$355,LCFI292-LCFI291
	.long L$set$355
	.byte	0xb
	.align 3
LEFDE61:
LSFDE63:
	.set L$set$356,LEFDE63-LASFDE63
	.long L$set$356
LASFDE63:
	.long	LASFDE63-EH_frame1
	.quad	LFB71-.
	.set L$set$357,LFE71-LFB71
	.quad L$set$357
	.byte	0
	.align 3
LEFDE63:
	.subsections_via_symbols
