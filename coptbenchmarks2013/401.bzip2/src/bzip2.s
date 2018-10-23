	.cstring
	.align 3
lC0:
	.ascii "bzip2: I'm not configured correctly for this platform!\12\11I require Int32, Int16 and Char to have sizes\12\11of 4, 2 and 1 bytes to run properly, and they don't.\12\11Probably you can fix this by defining them correctly,\12\11and recompiling.  Bye!\12\0"
	.text
	.align 4,0x90
_configError:
LFB71:
	subq	$8, %rsp
LCFI0:
	movl	$235, %edx
	movl	$1, %esi
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC0(%rip), %rdi
	movq	(%rax), %rcx
	call	_fwrite
	movq	_exitValue@GOTPCREL(%rip), %rax
	xorl	%edi, %edi
	movl	$0, (%rax)
	call	_exit
LFE71:
	.cstring
	.align 3
lC1:
	.ascii "\12It is possible that the compressed file(s) have become corrupted.\12You can use the -tvv option to test integrity of such files.\12\12You can use the `bzip2recover' program to attempt to recover\12data from undamaged sections of corrupted files.\12\12\0"
	.section __TEXT,__text_cold,regular,pure_instructions
_cadvise.part.1:
LFB73:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movl	$240, %edx
	movl	$1, %esi
	leaq	lC1(%rip), %rdi
	movq	(%rax), %rcx
	jmp	_fwrite
LFE73:
	.cstring
	.align 3
lC2:
	.ascii "\11Input file = %s, output file = %s\12\0"
	.text
	.align 4,0x90
_showFileNames.part.2:
LFB74:
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC2(%rip), %rsi
	movq	_outName@GOTPCREL(%rip), %rcx
	movq	_inName@GOTPCREL(%rip), %rdx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	jmp	_fprintf
LFE74:
	.align 4,0x90
_cleanUpAndFail.isra.3:
LFB75:
	subq	$8, %rsp
LCFI1:
	movq	_exitValue@GOTPCREL(%rip), %rax
	xorl	%edi, %edi
	movl	$0, (%rax)
	call	_exit
LFE75:
	.cstring
	.align 3
lC3:
	.ascii "\12%s: couldn't allocate enough memory\12\0"
	.text
	.align 4,0x90
_outOfMemory:
LFB70:
	leaq	lC3(%rip), %rsi
	subq	$8, %rsp
LCFI2:
	movq	_progName@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	movq	_noisy@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	L11
L9:
	call	_cleanUpAndFail.isra.3
L11:
	call	_showFileNames.part.2
	jmp	L9
LFE70:
	.cstring
	.align 3
lC4:
	.ascii "\12%s: PANIC -- internal consistency error:\12\11%s\12\11This is probably a BUG, but it may be in your COMPILER.  Please do not bother\12\11the original author.\12\0"
	.text
	.align 4,0x90
_panic:
LFB64:
	leaq	lC4(%rip), %rsi
	subq	$8, %rsp
LCFI3:
	movq	%rdi, %rcx
	movq	_progName@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	movq	_noisy@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	L15
L13:
	call	_cleanUpAndFail.isra.3
L15:
	call	_showFileNames.part.2
	jmp	L13
LFE64:
	.cstring
	.align 3
lC5:
	.ascii "\12%s: I/O or other error, bailing out.  Possible reason follows.\12\0"
	.text
	.align 4,0x90
_ioError:
LFB67:
	pushq	%rbx
LCFI4:
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC5(%rip), %rsi
	movq	_progName@GOTPCREL(%rip), %rbx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	movq	(%rbx), %rdx
	call	_fprintf
	movq	(%rbx), %rdi
	call	_perror
	movq	_noisy@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	L19
L17:
	call	_cleanUpAndFail.isra.3
L19:
	call	_showFileNames.part.2
	jmp	L17
LFE67:
	.cstring
lC6:
	.ascii " no data compressed.\12\0"
	.align 3
lC18:
	.ascii "%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\12\0"
lC19:
	.ascii "compress:unexpected error\0"
	.text
	.align 4,0x90
	.globl _compressStream
_compressStream:
LFB57:
	pushq	%r15
LCFI5:
	pushq	%r14
LCFI6:
	pushq	%r13
LCFI7:
	pushq	%r12
LCFI8:
	pushq	%rbp
LCFI9:
	pushq	%rbx
LCFI10:
	movl	%edi, %ebx
	subq	$5224, %rsp
LCFI11:
	movq	_workFactor@GOTPCREL(%rip), %rax
	leaq	108(%rsp), %r13
	movq	%r13, %rdi
	movl	(%rax), %r8d
	movq	_verbosity@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	movq	_blockSize100k@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	call	_BZ2_bzWriteOpen
	movl	108(%rsp), %r11d
	movq	%rax, %r12
	testl	%r11d, %r11d
	jne	L50
	movq	_verbosity@GOTPCREL(%rip), %rax
	cmpl	$1, (%rax)
	jg	L51
L22:
	leaq	208(%rsp), %rbp
	.align 4,0x90
L23:
	movl	%ebx, %edi
	call	_spec_getc
	cmpl	$-1, %eax
	je	L52
	movzbl	%al, %edi
	movl	%ebx, %esi
	call	_spec_ungetc
	movl	%ebx, %ecx
	movl	$5000, %edx
	movq	%rbp, %rdi
	movl	$1, %esi
	call	_spec_fread
	testl	%eax, %eax
	jg	L53
	movl	108(%rsp), %esi
	testl	%esi, %esi
	je	L23
L50:
	leaq	100(%rsp), %r15
	leaq	96(%rsp), %rbp
	leaq	92(%rsp), %rbx
	leaq	104(%rsp), %r14
L21:
	leaq	176(%rsp), %rdi
	subq	$8, %rsp
LCFI12:
	movl	$1, %edx
	pushq	%r14
LCFI13:
	movq	%r15, %r9
	movq	%rbp, %r8
	movq	%rbx, %rcx
	movq	%r12, %rsi
	call	_BZ2_bzWriteClose64
	popq	%rax
LCFI14:
	popq	%rdx
LCFI15:
	movl	108(%rsp), %eax
	cmpl	$-6, %eax
	je	L35
	cmpl	$-3, %eax
	je	L36
	cmpl	$-9, %eax
	je	L54
	leaq	lC19(%rip), %rdi
	call	_panic
	.align 4,0x90
L52:
	leaq	100(%rsp), %r15
	xorl	%edx, %edx
	movq	%r12, %rsi
	leaq	96(%rsp), %rbp
	movq	%r15, %r9
	movq	%r13, %rdi
	leaq	92(%rsp), %rbx
	subq	$8, %rsp
LCFI16:
	movq	%rbp, %r8
	leaq	112(%rsp), %r14
	movq	%rbx, %rcx
	pushq	%r14
LCFI17:
	call	_BZ2_bzWriteClose64
	popq	%r8
LCFI18:
	popq	%r9
LCFI19:
	movl	108(%rsp), %r10d
	testl	%r10d, %r10d
	jne	L21
	movq	_outputHandleJustInCase@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	movq	_verbosity@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	jle	L20
	movq	___stderrp@GOTPCREL(%rip), %rax
	movl	92(%rsp), %ecx
	movl	96(%rsp), %edx
	movq	(%rax), %rax
	testl	%ecx, %ecx
	movq	%rax, 56(%rsp)
	jne	L29
	testl	%edx, %edx
	je	L55
L29:
	movl	%ecx, %ebx
	pxor	%xmm3, %xmm3
	movl	%ecx, %edi
	movl	%ecx, %r8d
	shrl	$8, %ebx
	movb	%cl, 16(%rsp)
	movzbl	%cl, %ecx
	pxor	%xmm0, %xmm0
	movl	%ebx, %esi
	movsd	lC8(%rip), %xmm1
	shrl	$24, %edi
	movl	%edx, %r11d
	movzbl	%sil, %esi
	pxor	%xmm2, %xmm2
	shrl	$16, %r8d
	movl	%edi, 48(%rsp)
	cvtsi2sd	%esi, %xmm3
	movl	%edx, %r13d
	movb	%dl, 71(%rsp)
	movl	104(%rsp), %r10d
	cvtsi2sd	%ecx, %xmm0
	movl	%edx, %r12d
	movl	100(%rsp), %r9d
	movb	%bl, 8(%rsp)
	movzbl	%r8b, %ecx
	movzbl	%dl, %edx
	shrl	$8, %r12d
	movb	%dil, 38(%rsp)
	movsd	lC11(%rip), %xmm7
	shrl	$16, %r13d
	shrl	$24, %r11d
	movb	%r12b, 24(%rsp)
	mulsd	%xmm1, %xmm3
	movl	%r10d, %ebx
	movl	%r10d, %ebp
	movb	%r10b, 69(%rsp)
	addsd	%xmm2, %xmm0
	shrl	$16, %ebx
	movl	%r9d, %edi
	movb	%r9b, 37(%rsp)
	movsd	lC9(%rip), %xmm9
	movl	%ebx, 64(%rsp)
	shrl	$24, %edi
	shrl	$24, %ebp
	movsd	lC12(%rip), %xmm6
	movb	%bl, 68(%rsp)
	movl	%r10d, %ebx
	movzbl	%r10b, %r10d
	movsd	lC10(%rip), %xmm8
	shrl	$8, %ebx
	movb	%dil, 70(%rsp)
	movzbl	%r13b, %r14d
	addsd	%xmm0, %xmm3
	pxor	%xmm0, %xmm0
	movsd	lC13(%rip), %xmm5
	movl	%ebx, 72(%rsp)
	cvtsi2sd	%ecx, %xmm0
	movsd	lC14(%rip), %xmm4
	movb	%bl, 34(%rsp)
	movl	%edi, %ebx
	leaq	176(%rsp), %rax
	movl	%r9d, %edi
	movb	%r11b, 40(%rsp)
	shrl	$16, %edi
	movb	%r8b, 39(%rsp)
	movl	%edi, 76(%rsp)
	mulsd	%xmm9, %xmm0
	movb	%dil, 35(%rsp)
	movl	%r9d, %edi
	movzbl	%r9b, %r9d
	shrl	$8, %edi
	movb	%dil, 36(%rsp)
	addsd	%xmm0, %xmm3
	pxor	%xmm0, %xmm0
	cvtsi2sd	48(%rsp), %xmm0
	movq	%rax, 48(%rsp)
	movl	%r11d, %eax
	mulsd	%xmm8, %xmm0
	addsd	%xmm3, %xmm0
	pxor	%xmm3, %xmm3
	cvtsi2sd	%edx, %xmm3
	movzbl	%r12b, %edx
	leaq	175(%rsp), %r12
	mulsd	%xmm7, %xmm3
	addsd	%xmm0, %xmm3
	pxor	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
	movzbl	%r13b, %edx
	movl	$1, %r13d
	mulsd	%xmm6, %xmm0
	addsd	%xmm3, %xmm0
	pxor	%xmm3, %xmm3
	cvtsi2sd	%edx, %xmm3
	movzbl	%dil, %edx
	mulsd	%xmm5, %xmm3
	addsd	%xmm3, %xmm0
	pxor	%xmm3, %xmm3
	cvtsi2sd	%r11d, %xmm3
	mulsd	%xmm4, %xmm3
	addsd	%xmm0, %xmm3
	pxor	%xmm0, %xmm0
	cvtsi2sd	%r9d, %xmm0
	addsd	%xmm2, %xmm0
	pxor	%xmm2, %xmm2
	cvtsi2sd	%edx, %xmm2
	movzbl	76(%rsp), %edx
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	cvtsi2sd	%r10d, %xmm0
	movapd	%xmm2, %xmm1
	pxor	%xmm2, %xmm2
	cvtsi2sd	%edx, %xmm2
	movzbl	72(%rsp), %edx
	mulsd	%xmm7, %xmm0
	mulsd	%xmm9, %xmm2
	addsd	%xmm1, %xmm2
	pxor	%xmm1, %xmm1
	cvtsi2sd	%ebx, %xmm1
	movl	$-858993459, %ebx
	mulsd	%xmm8, %xmm1
	addsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
	movzbl	64(%rsp), %edx
	movb	%bpl, 64(%rsp)
	movzbl	71(%rsp), %esi
	mulsd	%xmm6, %xmm0
	addsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
	mulsd	%xmm5, %xmm1
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	movq	%r12, %rbp
	mulsd	%xmm4, %xmm0
	addsd	%xmm1, %xmm0
L30:
	movzbl	%al, %edi
	movl	%edi, %eax
	mull	%ebx
	movl	%edx, %ecx
	shrl	$3, %ecx
	leal	(%rcx,%rcx,4), %eax
	addl	%eax, %eax
	subl	%eax, %edi
	sall	$8, %edi
	addl	%edi, %r14d
	movl	%r14d, %eax
	mull	%ebx
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%edx, %r15d
	addl	%eax, %eax
	subl	%eax, %r14d
	movzbl	24(%rsp), %eax
	sall	$8, %r14d
	addl	%eax, %r14d
	movl	%r14d, %eax
	mull	%ebx
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%edx, %r12d
	addl	%eax, %eax
	movb	%r12b, 24(%rsp)
	subl	%eax, %r14d
	movl	%r14d, %eax
	movzbl	%r15b, %r14d
	sall	$8, %eax
	addl	%eax, %esi
	movl	%esi, %eax
	mull	%ebx
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%edx, %r11d
	addl	%eax, %eax
	subl	%eax, %esi
	movl	%esi, %eax
	movzbl	38(%rsp), %esi
	sall	$8, %eax
	addl	%eax, %esi
	movl	%esi, %eax
	mull	%ebx
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%edx, %r10d
	addl	%eax, %eax
	movb	%r10b, 38(%rsp)
	subl	%eax, %esi
	movl	%esi, %eax
	movzbl	39(%rsp), %esi
	sall	$8, %eax
	addl	%eax, %esi
	movl	%esi, %eax
	mull	%ebx
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%edx, %r9d
	addl	%eax, %eax
	movb	%r9b, 39(%rsp)
	subl	%eax, %esi
	movl	%esi, %eax
	movzbl	8(%rsp), %esi
	sall	$8, %eax
	addl	%eax, %esi
	movl	%esi, %eax
	mull	%ebx
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%edx, %r8d
	addl	%eax, %eax
	movb	%r8b, 8(%rsp)
	subl	%eax, %esi
	movl	%esi, %eax
	movzbl	16(%rsp), %esi
	sall	$8, %eax
	addl	%eax, %esi
	movl	%esi, %eax
	mull	%ebx
	movl	%edx, %edi
	shrl	$3, %edi
	leal	(%rdi,%rdi,4), %eax
	movb	%dil, 16(%rsp)
	addl	%eax, %eax
	subl	%eax, %esi
	movl	%esi, %eax
	movzbl	%r11b, %esi
	addl	$48, %eax
	movb	%al, 0(%rbp,%r13)
	leaq	1(%r13), %rax
	movq	%rax, 40(%rsp)
	movl	%ecx, %eax
	orl	%r15d, %ecx
	orl	%r12d, %ecx
	orl	%r11d, %ecx
	orl	%r10d, %ecx
	orl	%r9d, %ecx
	orl	%r8d, %ecx
	orl	%edi, %ecx
	jne	L38
	movzbl	64(%rsp), %r15d
	leal	-1(%r13), %ecx
	movslq	%r13d, %rax
	movq	%rbp, %r12
	movb	$0, 112(%rsp,%rax)
	leaq	112(%rsp), %r14
	movq	%rax, %rbp
	movq	48(%rsp), %rax
	subl	$1, %ebp
	movq	%r14, %rdx
	movslq	%ebp, %rbp
	addq	%rbp, %rax
	addq	%r12, %rbp
	subq	%rcx, %rbp
L31:
	movzbl	(%rax), %ecx
	subq	$1, %rax
	addq	$1, %rdx
	movb	%cl, -1(%rdx)
	cmpq	%rax, %rbp
	jne	L31
	movq	%r14, 24(%rsp)
	movzbl	69(%rsp), %edi
	movl	$1, %ebp
	movl	$-858993459, %ebx
	movzbl	70(%rsp), %esi
	movq	%r12, 8(%rsp)
	movzbl	68(%rsp), %r14d
L32:
	movl	%r15d, %eax
	mull	%ebx
	movl	%edx, %ecx
	shrl	$3, %ecx
	leal	(%rcx,%rcx,4), %eax
	addl	%eax, %eax
	subl	%eax, %r15d
	sall	$8, %r15d
	addl	%r15d, %r14d
	movzbl	%cl, %r15d
	movl	%r14d, %eax
	mull	%ebx
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%edx, %r13d
	addl	%eax, %eax
	subl	%eax, %r14d
	movzbl	34(%rsp), %eax
	sall	$8, %r14d
	addl	%eax, %r14d
	movl	%r14d, %eax
	mull	%ebx
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%edx, %r12d
	addl	%eax, %eax
	movb	%r12b, 34(%rsp)
	subl	%eax, %r14d
	movl	%r14d, %eax
	movzbl	%r13b, %r14d
	sall	$8, %eax
	addl	%eax, %edi
	movl	%edi, %eax
	mull	%ebx
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%edx, %r11d
	addl	%eax, %eax
	subl	%eax, %edi
	movl	%edi, %eax
	movq	8(%rsp), %rdi
	sall	$8, %eax
	addl	%eax, %esi
	movl	%esi, %eax
	mull	%ebx
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%edx, %r10d
	addl	%eax, %eax
	subl	%eax, %esi
	movl	%esi, %eax
	movzbl	35(%rsp), %esi
	sall	$8, %eax
	addl	%eax, %esi
	movl	%esi, %eax
	mull	%ebx
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%edx, %r9d
	addl	%eax, %eax
	orl	%r13d, %ecx
	movb	%r9b, 35(%rsp)
	subl	%eax, %esi
	orl	%r12d, %ecx
	movl	%esi, %eax
	movzbl	36(%rsp), %esi
	orl	%r11d, %ecx
	sall	$8, %eax
	orl	%r10d, %ecx
	orl	%r9d, %ecx
	addl	%eax, %esi
	movl	%esi, %eax
	mull	%ebx
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%edx, %r8d
	addl	%eax, %eax
	orl	%r8d, %ecx
	movb	%r8b, 36(%rsp)
	subl	%eax, %esi
	movl	%esi, %eax
	movzbl	37(%rsp), %esi
	sall	$8, %eax
	addl	%eax, %esi
	movl	%esi, %eax
	mull	%ebx
	shrl	$3, %edx
	leal	(%rdx,%rdx,4), %eax
	movb	%dl, 37(%rsp)
	addl	%eax, %eax
	subl	%eax, %esi
	movl	%esi, %eax
	leaq	1(%rbp), %rsi
	addl	$48, %eax
	orl	%edx, %ecx
	movb	%al, (%rdi,%rbp)
	movl	%ebp, %eax
	movzbl	%r11b, %edi
	movq	%rsi, 16(%rsp)
	movzbl	%r10b, %esi
	jne	L39
	movslq	%ebp, %rdx
	movq	8(%rsp), %r12
	subl	$1, %eax
	movb	$0, 144(%rsp,%rdx)
	movq	48(%rsp), %rdx
	cltq
	movq	24(%rsp), %r14
	leaq	144(%rsp), %rcx
	movq	%rcx, %rsi
	addq	%rax, %r12
	addq	%rax, %rdx
	leal	-1(%rbp), %eax
	subq	%rax, %r12
L33:
	movzbl	(%rdx), %eax
	subq	$1, %rdx
	addq	$1, %rsi
	movb	%al, -1(%rsi)
	cmpq	%rdx, %r12
	jne	L33
	movapd	%xmm0, %xmm1
	movapd	%xmm3, %xmm4
	movq	56(%rsp), %rdi
	movq	%r14, %rdx
	divsd	%xmm3, %xmm1
	movsd	lC15(%rip), %xmm2
	movl	$3, %eax
	leaq	lC18(%rip), %rsi
	divsd	%xmm0, %xmm4
	subsd	%xmm1, %xmm2
	movsd	lC17(%rip), %xmm1
	mulsd	lC16(%rip), %xmm2
	mulsd	%xmm0, %xmm1
	divsd	%xmm3, %xmm1
	movapd	%xmm4, %xmm0
	call	_fprintf
L20:
	addq	$5224, %rsp
LCFI20:
	popq	%rbx
LCFI21:
	popq	%rbp
LCFI22:
	popq	%r12
LCFI23:
	popq	%r13
LCFI24:
	popq	%r14
LCFI25:
	popq	%r15
LCFI26:
	ret
	.align 4,0x90
L53:
LCFI27:
	movq	%r13, %rdi
	movl	%eax, %ecx
	movq	%rbp, %rdx
	movq	%r12, %rsi
	call	_BZ2_bzWrite
	movl	108(%rsp), %edi
	testl	%edi, %edi
	je	L23
	jmp	L50
	.align 4,0x90
L51:
	movq	___stderrp@GOTPCREL(%rip), %rax
	movl	$10, %edi
	movq	(%rax), %rsi
	call	_fputc
	jmp	L22
	.align 4,0x90
L54:
	call	_configError
	.align 4,0x90
L36:
	call	_outOfMemory
	.align 4,0x90
L35:
	call	_ioError
	.align 4,0x90
L39:
	movq	16(%rsp), %rbp
	jmp	L32
	.align 4,0x90
L38:
	movq	40(%rsp), %r13
	jmp	L30
L55:
	movq	%rax, %rcx
	movl	$21, %edx
	movl	$1, %esi
	leaq	lC6(%rip), %rdi
	call	_fwrite
	jmp	L20
LFE57:
	.cstring
lC20:
	.ascii "decompress:bzReadGetUnused\0"
lC21:
	.ascii "\12    \0"
	.align 3
lC22:
	.ascii "\12%s: Data integrity error when decompressing.\12\0"
	.align 3
lC23:
	.ascii "\12%s: Compressed file ends unexpectedly;\12\11perhaps it is corrupted?  *Possible* reason follows.\12\0"
	.align 3
lC24:
	.ascii "\12%s: %s: trailing garbage after EOF ignored\12\0"
lC25:
	.ascii "decompress:unexpected error\0"
	.text
	.align 4,0x90
	.globl _uncompressStream
_uncompressStream:
LFB58:
	pushq	%r15
LCFI28:
	xorl	%r9d, %r9d
	xorl	%r15d, %r15d
	pushq	%r14
LCFI29:
	pushq	%r13
LCFI30:
	movl	%edi, %r13d
	pushq	%r12
LCFI31:
	pushq	%rbp
LCFI32:
	pushq	%rbx
LCFI33:
	subq	$10088, %rsp
LCFI34:
	leaq	52(%rsp), %rax
	movl	%esi, 12(%rsp)
	movq	%rax, 16(%rsp)
	leaq	56(%rsp), %rax
	movl	$0, 52(%rsp)
	leaq	5072(%rsp), %r14
	leaq	44(%rsp), %r12
	movq	%rax, 24(%rsp)
	leaq	64(%rsp), %rbx
L57:
	movq	_smallMode@GOTPCREL(%rip), %rax
	movq	%r14, %r8
	movl	%r13d, %esi
	movq	%r12, %rdi
	movzbl	(%rax), %ecx
	movq	_verbosity@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	call	_BZ2_bzReadOpen
	testq	%rax, %rax
	movq	%rax, %rbp
	je	L58
	movl	44(%rsp), %ecx
	testl	%ecx, %ecx
	jne	L58
	addl	$1, %r15d
	.align 4,0x90
L105:
	testl	%ecx, %ecx
	jne	L120
L62:
	movl	$5000, %ecx
	movq	%rbx, %rdx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	_BZ2_bzRead
	movl	44(%rsp), %ecx
	cmpl	$-5, %ecx
	je	L60
	testl	$-5, %ecx
	jne	L105
	testl	%eax, %eax
	jle	L105
	movl	12(%rsp), %ecx
	movl	%eax, %edx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	_spec_fwrite
	movl	44(%rsp), %ecx
	testl	%ecx, %ecx
	je	L62
L120:
	cmpl	$4, %ecx
	jne	L58
	movq	24(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movq	16(%rsp), %rcx
	call	_BZ2_bzReadGetUnused
	movl	44(%rsp), %edx
	testl	%edx, %edx
	jne	L70
	movl	52(%rsp), %esi
	movq	56(%rsp), %rcx
	testl	%esi, %esi
	jle	L64
	leaq	16(%rcx), %rax
	cmpq	%rax, %r14
	leaq	16(%r14), %rax
	setnb	%dl
	cmpq	%rax, %rcx
	setnb	%al
	orb	%al, %dl
	je	L65
	cmpl	$15, %esi
	jbe	L65
	movl	%esi, %edi
	xorl	%eax, %eax
	xorl	%edx, %edx
	shrl	$4, %edi
	.align 4,0x90
L66:
	movdqu	(%rcx,%rax), %xmm0
	addl	$1, %edx
	movaps	%xmm0, (%r14,%rax)
	addq	$16, %rax
	cmpl	%edx, %edi
	ja	L66
	movl	%esi, %eax
	andl	$-16, %eax
	cmpl	%eax, %esi
	je	L64
	movslq	%eax, %rdx
	movzbl	(%rcx,%rdx), %edi
	movb	%dil, 5072(%rsp,%rdx)
	leal	1(%rax), %edx
	cmpl	%edx, %esi
	jle	L64
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edi
	movb	%dil, 5072(%rsp,%rdx)
	leal	2(%rax), %edx
	cmpl	%edx, %esi
	jle	L64
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edi
	movb	%dil, 5072(%rsp,%rdx)
	leal	3(%rax), %edx
	cmpl	%edx, %esi
	jle	L64
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edi
	movb	%dil, 5072(%rsp,%rdx)
	leal	4(%rax), %edx
	cmpl	%edx, %esi
	jle	L64
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edi
	movb	%dil, 5072(%rsp,%rdx)
	leal	5(%rax), %edx
	cmpl	%edx, %esi
	jle	L64
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edi
	movb	%dil, 5072(%rsp,%rdx)
	leal	6(%rax), %edx
	cmpl	%edx, %esi
	jle	L64
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edi
	movb	%dil, 5072(%rsp,%rdx)
	leal	7(%rax), %edx
	cmpl	%edx, %esi
	jle	L64
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edi
	movb	%dil, 5072(%rsp,%rdx)
	leal	8(%rax), %edx
	cmpl	%edx, %esi
	jle	L64
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edi
	movb	%dil, 5072(%rsp,%rdx)
	leal	9(%rax), %edx
	cmpl	%edx, %esi
	jle	L64
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edi
	movb	%dil, 5072(%rsp,%rdx)
	leal	10(%rax), %edx
	cmpl	%edx, %esi
	jle	L64
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edi
	movb	%dil, 5072(%rsp,%rdx)
	leal	11(%rax), %edx
	cmpl	%edx, %esi
	jle	L64
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edi
	movb	%dil, 5072(%rsp,%rdx)
	leal	12(%rax), %edx
	cmpl	%edx, %esi
	jle	L64
	movslq	%edx, %rdx
	movzbl	(%rcx,%rdx), %edi
	movb	%dil, 5072(%rsp,%rdx)
	leal	13(%rax), %edx
	cmpl	%edx, %esi
	jle	L64
	movslq	%edx, %rdx
	addl	$14, %eax
	movzbl	(%rcx,%rdx), %edi
	cmpl	%eax, %esi
	movb	%dil, 5072(%rsp,%rdx)
	jle	L64
	cltq
	movzbl	(%rcx,%rax), %edx
	movb	%dl, 5072(%rsp,%rax)
	.align 4,0x90
L64:
	movq	%rbp, %rsi
	movq	%r12, %rdi
	call	_BZ2_bzReadClose
	movl	44(%rsp), %eax
	testl	%eax, %eax
	jne	L70
	movl	52(%rsp), %r9d
	testl	%r9d, %r9d
	jne	L57
	movl	%r13d, %edi
	call	_spec_getc
	cmpl	$-1, %eax
	je	L72
	movzbl	%al, %edi
	movl	%r13d, %esi
	call	_spec_ungetc
	movl	52(%rsp), %r9d
	jmp	L57
	.align 4,0x90
L60:
	movq	_forceOverwrite@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	L121
L58:
	leaq	48(%rsp), %rdi
	movq	%rbp, %rsi
	call	_BZ2_bzReadClose
	movl	44(%rsp), %eax
	addl	$9, %eax
	cmpl	$6, %eax
	ja	L77
	leaq	L79(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.align 2,0x90
L79:
	.long	L78-L79
	.long	L77-L79
	.long	L80-L79
	.long	L81-L79
	.long	L82-L79
	.long	L83-L79
	.long	L84-L79
	.align 4,0x90
L82:
	xorl	%eax, %eax
	cmpl	$1, %r15d
	je	L56
	movq	_noisy@GOTPCREL(%rip), %rax
	cmpb	$0, (%rax)
	jne	L122
L73:
	movl	$1, %eax
L56:
	addq	$10088, %rsp
LCFI35:
	popq	%rbx
LCFI36:
	popq	%rbp
LCFI37:
	popq	%r12
LCFI38:
	popq	%r13
LCFI39:
	popq	%r14
LCFI40:
	popq	%r15
LCFI41:
	ret
	.align 4,0x90
L121:
LCFI42:
	movl	%r13d, %edi
	call	_spec_rewind
	jmp	L75
	.align 4,0x90
L124:
	movzbl	%al, %edi
	movl	%r13d, %esi
	call	_spec_ungetc
	movl	%r13d, %ecx
	movl	$5000, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	call	_spec_fread
	testl	%eax, %eax
	jg	L123
L75:
	movl	%r13d, %edi
	call	_spec_getc
	cmpl	$-1, %eax
	jne	L124
L72:
	movq	_outputHandleJustInCase@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	movq	_verbosity@GOTPCREL(%rip), %rax
	cmpl	$1, (%rax)
	jle	L73
	movq	___stderrp@GOTPCREL(%rip), %rax
	movl	$5, %edx
	movl	$1, %esi
	leaq	lC21(%rip), %rdi
	movq	(%rax), %rcx
	call	_fwrite
	movl	$1, %eax
	jmp	L56
	.align 4,0x90
L123:
	movl	12(%rsp), %ecx
	movl	%eax, %edx
	movl	$1, %esi
	movq	%rbx, %rdi
	call	_spec_fwrite
	jmp	L75
	.align 4,0x90
L65:
	subl	$1, %esi
	xorl	%eax, %eax
	addq	$1, %rsi
	.align 4,0x90
L68:
	movzbl	(%rcx,%rax), %edx
	movb	%dl, (%r14,%rax)
	addq	$1, %rax
	cmpq	%rsi, %rax
	jne	L68
	jmp	L64
	.align 4,0x90
L122:
	movq	_progName@GOTPCREL(%rip), %rax
	leaq	lC24(%rip), %rsi
	movq	_inName@GOTPCREL(%rip), %rcx
	movq	(%rax), %rdx
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	movl	$1, %eax
	jmp	L56
L78:
	call	_configError
L81:
	call	_ioError
L84:
	call	_outOfMemory
L77:
	leaq	lC25(%rip), %rdi
	call	_panic
L80:
	movq	_noisy@GOTPCREL(%rip), %rbx
	cmpb	$0, (%rbx)
	jne	L125
L86:
	call	_cleanUpAndFail.isra.3
L70:
	leaq	lC20(%rip), %rdi
	call	_panic
L83:
	movq	_progName@GOTPCREL(%rip), %rax
	leaq	lC22(%rip), %rsi
	movq	(%rax), %rdx
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	movq	_noisy@GOTPCREL(%rip), %rbx
	cmpb	$0, (%rbx)
	je	L86
L119:
	call	_showFileNames.part.2
	cmpb	$0, (%rbx)
	je	L86
	call	_cadvise.part.1
	jmp	L86
L125:
	movq	_progName@GOTPCREL(%rip), %rbp
	leaq	lC23(%rip), %rsi
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	0(%rbp), %rdx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	movq	0(%rbp), %rdi
	call	_perror
	cmpb	$0, (%rbx)
	je	L86
	jmp	L119
LFE58:
	.comm	_workFactor,4,2
	.comm	_outputHandleJustInCase,4,2
	.comm	_progNameReally,1034,5
	.comm	_progName,8,3
	.comm	_tmpName,1034,5
	.comm	_outName,1034,5
	.comm	_inName,1034,5
	.comm	_longestFileName,4,2
	.comm	_srcMode,4,2
	.comm	_opMode,4,2
	.comm	_exitValue,4,2
	.comm	_blockSize100k,4,2
	.comm	_numFilesProcessed,4,2
	.comm	_numFileNames,4,2
	.comm	_noisy,1
	.comm	_unzFailsExist,1
	.comm	_testFailsExist,1
	.comm	_forceOverwrite,1
	.comm	_deleteOutputOnInterrupt,1
	.comm	_smallMode,1
	.comm	_keepInputFiles,1
	.comm	_verbosity,4,2
	.literal8
	.align 3
lC8:
	.long	0
	.long	1081081856
	.align 3
lC9:
	.long	0
	.long	1089470464
	.align 3
lC10:
	.long	0
	.long	1097859072
	.align 3
lC11:
	.long	0
	.long	1106247680
	.align 3
lC12:
	.long	0
	.long	1114636288
	.align 3
lC13:
	.long	0
	.long	1123024896
	.align 3
lC14:
	.long	0
	.long	1131413504
	.align 3
lC15:
	.long	0
	.long	1072693248
	.align 3
lC16:
	.long	0
	.long	1079574528
	.align 3
lC17:
	.long	0
	.long	1075838976
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
	.quad	LFB71-.
	.set L$set$2,LFE71-LFB71
	.quad L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB71
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$4,LEFDE3-LASFDE3
	.long L$set$4
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB73-.
	.set L$set$5,LFE73-LFB73
	.quad L$set$5
	.byte	0
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$6,LEFDE5-LASFDE5
	.long L$set$6
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB74-.
	.set L$set$7,LFE74-LFB74
	.quad L$set$7
	.byte	0
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$8,LEFDE7-LASFDE7
	.long L$set$8
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB75-.
	.set L$set$9,LFE75-LFB75
	.quad L$set$9
	.byte	0
	.byte	0x4
	.set L$set$10,LCFI1-LFB75
	.long L$set$10
	.byte	0xe
	.byte	0x10
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$11,LEFDE9-LASFDE9
	.long L$set$11
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB70-.
	.set L$set$12,LFE70-LFB70
	.quad L$set$12
	.byte	0
	.byte	0x4
	.set L$set$13,LCFI2-LFB70
	.long L$set$13
	.byte	0xe
	.byte	0x10
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$14,LEFDE11-LASFDE11
	.long L$set$14
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB64-.
	.set L$set$15,LFE64-LFB64
	.quad L$set$15
	.byte	0
	.byte	0x4
	.set L$set$16,LCFI3-LFB64
	.long L$set$16
	.byte	0xe
	.byte	0x10
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$17,LEFDE13-LASFDE13
	.long L$set$17
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB67-.
	.set L$set$18,LFE67-LFB67
	.quad L$set$18
	.byte	0
	.byte	0x4
	.set L$set$19,LCFI4-LFB67
	.long L$set$19
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$20,LEFDE15-LASFDE15
	.long L$set$20
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB57-.
	.set L$set$21,LFE57-LFB57
	.quad L$set$21
	.byte	0
	.byte	0x4
	.set L$set$22,LCFI5-LFB57
	.long L$set$22
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$23,LCFI6-LCFI5
	.long L$set$23
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$24,LCFI7-LCFI6
	.long L$set$24
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$25,LCFI8-LCFI7
	.long L$set$25
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$26,LCFI9-LCFI8
	.long L$set$26
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$27,LCFI10-LCFI9
	.long L$set$27
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$28,LCFI11-LCFI10
	.long L$set$28
	.byte	0xe
	.byte	0xa0,0x29
	.byte	0x4
	.set L$set$29,LCFI12-LCFI11
	.long L$set$29
	.byte	0xe
	.byte	0xa8,0x29
	.byte	0x4
	.set L$set$30,LCFI13-LCFI12
	.long L$set$30
	.byte	0xe
	.byte	0xb0,0x29
	.byte	0x4
	.set L$set$31,LCFI14-LCFI13
	.long L$set$31
	.byte	0xe
	.byte	0xa8,0x29
	.byte	0x4
	.set L$set$32,LCFI15-LCFI14
	.long L$set$32
	.byte	0xe
	.byte	0xa0,0x29
	.byte	0x4
	.set L$set$33,LCFI16-LCFI15
	.long L$set$33
	.byte	0xe
	.byte	0xa8,0x29
	.byte	0x4
	.set L$set$34,LCFI17-LCFI16
	.long L$set$34
	.byte	0xe
	.byte	0xb0,0x29
	.byte	0x4
	.set L$set$35,LCFI18-LCFI17
	.long L$set$35
	.byte	0xe
	.byte	0xa8,0x29
	.byte	0x4
	.set L$set$36,LCFI19-LCFI18
	.long L$set$36
	.byte	0xe
	.byte	0xa0,0x29
	.byte	0x4
	.set L$set$37,LCFI20-LCFI19
	.long L$set$37
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$38,LCFI21-LCFI20
	.long L$set$38
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$39,LCFI22-LCFI21
	.long L$set$39
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$40,LCFI23-LCFI22
	.long L$set$40
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$41,LCFI24-LCFI23
	.long L$set$41
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$42,LCFI25-LCFI24
	.long L$set$42
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$43,LCFI26-LCFI25
	.long L$set$43
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$44,LCFI27-LCFI26
	.long L$set$44
	.byte	0xb
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$45,LEFDE17-LASFDE17
	.long L$set$45
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB58-.
	.set L$set$46,LFE58-LFB58
	.quad L$set$46
	.byte	0
	.byte	0x4
	.set L$set$47,LCFI28-LFB58
	.long L$set$47
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$48,LCFI29-LCFI28
	.long L$set$48
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$49,LCFI30-LCFI29
	.long L$set$49
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$50,LCFI31-LCFI30
	.long L$set$50
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$51,LCFI32-LCFI31
	.long L$set$51
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$52,LCFI33-LCFI32
	.long L$set$52
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$53,LCFI34-LCFI33
	.long L$set$53
	.byte	0xe
	.byte	0xa0,0x4f
	.byte	0x4
	.set L$set$54,LCFI35-LCFI34
	.long L$set$54
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$55,LCFI36-LCFI35
	.long L$set$55
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$56,LCFI37-LCFI36
	.long L$set$56
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$57,LCFI38-LCFI37
	.long L$set$57
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$58,LCFI39-LCFI38
	.long L$set$58
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$59,LCFI40-LCFI39
	.long L$set$59
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$60,LCFI41-LCFI40
	.long L$set$60
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$61,LCFI42-LCFI41
	.long L$set$61
	.byte	0xb
	.align 3
LEFDE17:
	.subsections_via_symbols
