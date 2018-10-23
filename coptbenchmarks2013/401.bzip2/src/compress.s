	.text
	.align 4,0x90
	.globl _BZ2_bsInitWrite
_BZ2_bsInitWrite:
LFB31:
	movq	$0, 640(%rdi)
	ret
LFE31:
	.cstring
	.align 3
lC0:
	.ascii "    block %d: crc = 0x%08x, combined CRC = 0x%08x, size = %d\12\0"
	.align 3
lC17:
	.ascii "      %d in block, %d after MTF & 1-2 coding, %d+2 syms in use\12\0"
	.align 3
lC19:
	.ascii "      initial group %d, [%d .. %d], has %d syms (%4.1f%%)\12\0"
	.align 3
lC27:
	.ascii "      pass %d: size is %d, grp uses are \0"
lC28:
	.ascii "%d \0"
lC29:
	.ascii "      bytes: mapping %d, \0"
lC30:
	.ascii "selectors %d, \0"
lC31:
	.ascii "code lengths %d, \0"
lC32:
	.ascii "codes %d\12\0"
	.align 3
lC33:
	.ascii "    final combined CRC = 0x%08x\12   \0"
	.text
	.align 4,0x90
	.globl _BZ2_compressBlock
_BZ2_compressBlock:
LFB39:
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
	subq	$488, %rsp
LCFI6:
	movl	108(%rdi), %r9d
	movl	%esi, 196(%rsp)
	movl	660(%rdi), %edx
	testl	%r9d, %r9d
	jle	L4
	movl	648(%rdi), %ecx
	movl	652(%rdi), %r8d
	notl	%ecx
	roll	%r8d
	movl	%ecx, 648(%rdi)
	xorl	%ecx, %r8d
	cmpl	$1, %edx
	movl	%r8d, 652(%rdi)
	jle	L5
	movl	$0, 116(%rdi)
L5:
	cmpl	$1, 656(%rbx)
	jg	L800
L6:
	movq	%rbx, %rdi
	call	_BZ2_blockSort
	movslq	108(%rbx), %rcx
	movq	%rcx, %rax
	addq	32(%rbx), %rcx
	cmpl	$1, 660(%rbx)
	movq	%rcx, 80(%rbx)
	je	L375
L7:
	testl	%eax, %eax
	jle	L14
	movl	644(%rbx), %eax
	movl	640(%rbx), %esi
	cmpl	$7, %eax
	jle	L15
	movl	116(%rbx), %edx
L16:
	movq	80(%rbx), %rax
	shrl	$24, %esi
	movslq	%edx, %rdx
	movb	%sil, (%rax,%rdx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %esi
	leal	1(%rax), %edx
	movl	644(%rbx), %eax
	sall	$8, %esi
	movl	%edx, 116(%rbx)
	movl	%esi, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L16
L15:
	movl	$24, %ecx
	movl	$49, %edx
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %edx
	movl	%eax, 644(%rbx)
	orl	%esi, %edx
	cmpl	$7, %eax
	movl	%edx, 640(%rbx)
	jle	L17
	movl	116(%rbx), %ecx
L18:
	movq	80(%rbx), %rax
	shrl	$24, %edx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edx
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %edx
	movl	%ecx, 116(%rbx)
	movl	%edx, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L18
L17:
	movl	$24, %ecx
	movl	$65, %esi
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %esi
	movl	%eax, 644(%rbx)
	orl	%esi, %edx
	cmpl	$7, %eax
	movl	%edx, 640(%rbx)
	jle	L19
	movl	116(%rbx), %ecx
L20:
	movq	80(%rbx), %rax
	shrl	$24, %edx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edx
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %edx
	movl	%ecx, 116(%rbx)
	movl	%edx, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L20
L19:
	movl	$24, %ecx
	movl	$89, %esi
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %esi
	movl	%eax, 644(%rbx)
	orl	%esi, %edx
	cmpl	$7, %eax
	movl	%edx, 640(%rbx)
	jle	L21
	movl	116(%rbx), %ecx
L22:
	movq	80(%rbx), %rax
	shrl	$24, %edx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edx
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %edx
	movl	%ecx, 116(%rbx)
	movl	%edx, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L22
L21:
	movl	$24, %ecx
	movl	$38, %esi
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %esi
	movl	%eax, 644(%rbx)
	orl	%esi, %edx
	cmpl	$7, %eax
	movl	%edx, 640(%rbx)
	jle	L23
	movl	116(%rbx), %ecx
L24:
	movq	80(%rbx), %rax
	shrl	$24, %edx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edx
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %edx
	movl	%ecx, 116(%rbx)
	movl	%edx, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L24
L23:
	movl	$24, %ecx
	movl	$83, %esi
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %esi
	movl	%eax, 644(%rbx)
	orl	%esi, %edx
	cmpl	$7, %eax
	movl	%edx, 640(%rbx)
	jle	L25
	movl	116(%rbx), %ecx
L26:
	movq	80(%rbx), %rax
	shrl	$24, %edx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edx
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %edx
	movl	%ecx, 116(%rbx)
	movl	%edx, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L26
L25:
	movl	$24, %ecx
	movl	$89, %esi
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %esi
	movl	%eax, 644(%rbx)
	orl	%edx, %esi
	movl	648(%rbx), %edx
	movl	%esi, 640(%rbx)
	movl	%edx, %edi
	shrl	$24, %edi
	cmpl	$7, %eax
	jle	L27
	movl	116(%rbx), %ecx
L28:
	movq	80(%rbx), %rax
	shrl	$24, %esi
	movslq	%ecx, %rcx
	movb	%sil, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %esi
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %esi
	movl	%ecx, 116(%rbx)
	movl	%esi, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L28
L27:
	movl	$24, %ecx
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %edi
	movl	%eax, 644(%rbx)
	orl	%edi, %esi
	movl	%edx, %edi
	shrl	$16, %edi
	cmpl	$7, %eax
	movl	%esi, 640(%rbx)
	movzbl	%dil, %edi
	jle	L29
	movl	116(%rbx), %ecx
L30:
	movq	80(%rbx), %rax
	shrl	$24, %esi
	movslq	%ecx, %rcx
	movb	%sil, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %esi
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %esi
	movl	%ecx, 116(%rbx)
	movl	%esi, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L30
L29:
	movl	$24, %ecx
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %edi
	movl	%eax, 644(%rbx)
	orl	%edi, %esi
	cmpl	$7, %eax
	movzbl	%dh, %edi
	movl	%esi, 640(%rbx)
	jle	L31
	movl	116(%rbx), %ecx
L32:
	movq	80(%rbx), %rax
	shrl	$24, %esi
	movslq	%ecx, %rcx
	movb	%sil, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %esi
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %esi
	movl	%ecx, 116(%rbx)
	movl	%esi, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L32
L31:
	movl	$24, %ecx
	movzbl	%dl, %edx
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %edi
	movl	%eax, 644(%rbx)
	orl	%edi, %esi
	cmpl	$7, %eax
	movl	%esi, 640(%rbx)
	jle	L33
	movl	116(%rbx), %ecx
L34:
	movq	80(%rbx), %rax
	shrl	$24, %esi
	movslq	%ecx, %rcx
	movb	%sil, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %esi
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %esi
	movl	%ecx, 116(%rbx)
	movl	%esi, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L34
L33:
	movl	$24, %ecx
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %edx
	movl	%eax, 644(%rbx)
	orl	%esi, %edx
	cmpl	$7, %eax
	movl	%edx, 640(%rbx)
	jle	L35
	movl	116(%rbx), %ecx
L36:
	movq	80(%rbx), %rax
	shrl	$24, %edx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edx
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %edx
	movl	%ecx, 116(%rbx)
	movl	%edx, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L36
L35:
	addl	$1, %eax
	movl	48(%rbx), %esi
	cmpl	$8, %eax
	movl	%eax, 644(%rbx)
	jne	L37
	movl	116(%rbx), %ecx
L38:
	movq	80(%rbx), %rax
	shrl	$24, %edx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edx
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %edx
	movl	%ecx, 116(%rbx)
	movl	%edx, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L38
L37:
	movl	$8, %ecx
	movq	56(%rbx), %r8
	xorl	%r13d, %r13d
	movl	$0, 124(%rbx)
	subl	%eax, %ecx
	movq	64(%rbx), %r11
	addl	$24, %eax
	movq	72(%rbx), %rbp
	sall	%cl, %esi
	movl	%eax, 644(%rbx)
	leaq	128(%rbx), %rax
	orl	%esi, %edx
	movl	%edx, 640(%rbx)
	leaq	384(%rbx), %rdx
	movq	%rax, %r12
	movq	%rax, 96(%rsp)
	.align 4,0x90
L40:
	cmpb	$0, (%rax)
	leal	1(%r13), %ecx
	je	L39
	leal	2(%r13), %esi
	movb	%r13b, 256(%rax)
	movl	%ecx, %r13d
	movl	%ecx, 124(%rbx)
	movl	%esi, %ecx
L39:
	addq	$1, %rax
	cmpq	%rax, %rdx
	jne	L40
	leaq	672(%rbx), %rdi
	movslq	%ecx, %rax
	xorl	%esi, %esi
	movl	%ecx, 8(%rsp)
	leaq	4(,%rax,4), %rdx
	movq	%r8, 32(%rsp)
	movq	%r11, 24(%rsp)
	movq	%rax, 16(%rsp)
	call	_memset
	testl	%r13d, %r13d
	movl	8(%rsp), %ecx
	movq	24(%rsp), %r11
	movq	32(%rsp), %r8
	je	L41
	leal	-1(%r13), %eax
	cmpl	$14, %eax
	jbe	L379
	movl	%r13d, %eax
	movdqa	lC1(%rip), %xmm0
	shrl	$4, %eax
	cmpl	$1, %eax
	movaps	%xmm0, 224(%rsp)
	je	L43
	movdqa	lC2(%rip), %xmm0
	cmpl	$2, %eax
	movaps	%xmm0, 240(%rsp)
	je	L43
	movdqa	lC3(%rip), %xmm0
	cmpl	$3, %eax
	movaps	%xmm0, 256(%rsp)
	je	L43
	movdqa	lC4(%rip), %xmm0
	cmpl	$4, %eax
	movaps	%xmm0, 272(%rsp)
	je	L43
	movdqa	lC5(%rip), %xmm0
	cmpl	$5, %eax
	movaps	%xmm0, 288(%rsp)
	je	L43
	movdqa	lC6(%rip), %xmm0
	cmpl	$6, %eax
	movaps	%xmm0, 304(%rsp)
	je	L43
	movdqa	lC7(%rip), %xmm0
	cmpl	$7, %eax
	movaps	%xmm0, 320(%rsp)
	je	L43
	movdqa	lC8(%rip), %xmm0
	cmpl	$8, %eax
	movaps	%xmm0, 336(%rsp)
	je	L43
	movdqa	lC9(%rip), %xmm0
	cmpl	$9, %eax
	movaps	%xmm0, 352(%rsp)
	je	L43
	movdqa	lC10(%rip), %xmm0
	cmpl	$10, %eax
	movaps	%xmm0, 368(%rsp)
	je	L43
	movdqa	lC11(%rip), %xmm0
	cmpl	$11, %eax
	movaps	%xmm0, 384(%rsp)
	je	L43
	movdqa	lC12(%rip), %xmm0
	cmpl	$12, %eax
	movaps	%xmm0, 400(%rsp)
	je	L43
	movdqa	lC13(%rip), %xmm0
	cmpl	$13, %eax
	movaps	%xmm0, 416(%rsp)
	je	L43
	movdqa	lC14(%rip), %xmm0
	cmpl	$14, %eax
	movaps	%xmm0, 432(%rsp)
	je	L43
	movdqa	lC15(%rip), %xmm0
	cmpl	$15, %eax
	movaps	%xmm0, 448(%rsp)
	je	L43
	movdqa	lC16(%rip), %xmm0
	movaps	%xmm0, 464(%rsp)
L43:
	movl	%r13d, %eax
	andl	$-16, %eax
	cmpl	%r13d, %eax
	je	L41
L42:
	movslq	%eax, %rdx
	movb	%al, 224(%rsp,%rdx)
	leal	1(%rax), %edx
	cmpl	%r13d, %edx
	jge	L41
	movslq	%edx, %rsi
	movb	%dl, 224(%rsp,%rsi)
	leal	2(%rax), %edx
	cmpl	%r13d, %edx
	jge	L41
	movslq	%edx, %rsi
	movb	%dl, 224(%rsp,%rsi)
	leal	3(%rax), %edx
	cmpl	%r13d, %edx
	jge	L41
	movslq	%edx, %rsi
	movb	%dl, 224(%rsp,%rsi)
	leal	4(%rax), %edx
	cmpl	%r13d, %edx
	jge	L41
	movslq	%edx, %rsi
	movb	%dl, 224(%rsp,%rsi)
	leal	5(%rax), %edx
	cmpl	%r13d, %edx
	jge	L41
	movslq	%edx, %rsi
	movb	%dl, 224(%rsp,%rsi)
	leal	6(%rax), %edx
	cmpl	%r13d, %edx
	jge	L41
	movslq	%edx, %rsi
	movb	%dl, 224(%rsp,%rsi)
	leal	7(%rax), %edx
	cmpl	%r13d, %edx
	jge	L41
	movslq	%edx, %rsi
	movb	%dl, 224(%rsp,%rsi)
	leal	8(%rax), %edx
	cmpl	%r13d, %edx
	jge	L41
	movslq	%edx, %rsi
	movb	%dl, 224(%rsp,%rsi)
	leal	9(%rax), %edx
	cmpl	%r13d, %edx
	jge	L41
	movslq	%edx, %rsi
	movb	%dl, 224(%rsp,%rsi)
	leal	10(%rax), %edx
	cmpl	%r13d, %edx
	jge	L41
	movslq	%edx, %rsi
	movb	%dl, 224(%rsp,%rsi)
	leal	11(%rax), %edx
	cmpl	%r13d, %edx
	jge	L41
	movslq	%edx, %rsi
	movb	%dl, 224(%rsp,%rsi)
	leal	12(%rax), %edx
	cmpl	%r13d, %edx
	jge	L41
	movslq	%edx, %rsi
	movb	%dl, 224(%rsp,%rsi)
	leal	13(%rax), %edx
	cmpl	%r13d, %edx
	jge	L41
	addl	$14, %eax
	movslq	%edx, %rsi
	cmpl	%r13d, %eax
	movb	%dl, 224(%rsp,%rsi)
	jge	L41
	movslq	%eax, %rdx
	movb	%al, 224(%rsp,%rdx)
L41:
	movl	108(%rbx), %r9d
	testl	%r9d, %r9d
	jle	L380
	leaq	224(%rsp), %rsi
	movl	$1, %edi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rsi, 168(%rsp)
	jmp	L56
L802:
	movl	%edi, %r10d
	addl	$1, %eax
	addq	$1, %rdi
	cmpl	%r10d, %r9d
	jle	L801
L56:
	movl	-4(%r8,%rdi,4), %r10d
	subl	$1, %r10d
	leal	(%r10,%r9), %r13d
	testl	%r10d, %r10d
	cmovs	%r13d, %r10d
	movzbl	224(%rsp), %r13d
	movslq	%r10d, %r10
	movzbl	(%r11,%r10), %r10d
	movzbl	384(%rbx,%r10), %r10d
	cmpb	%r13b, %r10b
	je	L802
	testl	%eax, %eax
	je	L49
	movslq	%edx, %r9
	subl	$1, %eax
	leaq	0(%rbp,%r9,2), %r9
	jmp	L53
L804:
	movl	$1, %r13d
	addq	$2, %r9
	movw	%r13w, -2(%r9)
	addl	$1, 676(%rbx)
	cmpl	$1, %eax
	jle	L803
L52:
	subl	$2, %eax
	sarl	%eax
L53:
	addl	$1, %edx
	testb	$1, %al
	jne	L804
	xorl	%r13d, %r13d
	addq	$2, %r9
	movw	%r13w, -2(%r9)
	addl	$1, 672(%rbx)
	cmpl	$1, %eax
	jg	L52
L803:
	movzbl	224(%rsp), %r13d
L49:
	movzbl	225(%rsp), %r9d
	movb	%r13b, 225(%rsp)
	cmpb	%r9b, %r10b
	je	L381
	leaq	1(%rsi), %rax
	.align 4,0x90
L55:
	addq	$1, %rax
	movzbl	(%rax), %r13d
	movb	%r9b, (%rax)
	cmpb	%r13b, %r10b
	movl	%r13d, %r9d
	jne	L55
L54:
	subq	%rsi, %rax
	movslq	%edx, %r9
	movb	%r13b, 224(%rsp)
	addl	$1, %edx
	leal	1(%rax), %r10d
	cltq
	movw	%r10w, 0(%rbp,%r9,2)
	movl	%edi, %r10d
	addq	$1, %rdi
	addl	$1, 676(%rbx,%rax,4)
	xorl	%eax, %eax
	movl	108(%rbx), %r9d
	cmpl	%r10d, %r9d
	jg	L56
L801:
	testl	%eax, %eax
	je	L805
	movslq	%edx, %rsi
	subl	$1, %eax
	leaq	0(%rbp,%rsi,2), %rdi
	jmp	L61
L807:
	movl	$1, %r9d
	addq	$2, %rdi
	movw	%r9w, -2(%rdi)
	addl	$1, 676(%rbx)
	cmpl	$1, %eax
	jle	L806
L60:
	subl	$2, %eax
	movl	%esi, %edx
	sarl	%eax
L61:
	leal	1(%rdx), %esi
	testb	$1, %al
	jne	L807
	xorl	%r8d, %r8d
	addq	$2, %rdi
	movw	%r8w, -2(%rdi)
	addl	$1, 672(%rbx)
	cmpl	$1, %eax
	jg	L60
L806:
	movl	124(%rbx), %r13d
	leal	2(%rdx), %edi
	movslq	%esi, %rsi
	leaq	0(%rbp,%rsi,2), %rax
	movq	72(%rbx), %rbp
	movl	%edi, 8(%rsp)
L45:
	movw	%cx, (%rax)
	movq	16(%rsp), %rax
	addl	$1, 672(%rbx,%rax,4)
	movl	8(%rsp), %eax
	cmpl	$2, 656(%rbx)
	movl	%eax, 668(%rbx)
	jle	L62
	movl	108(%rbx), %edx
	leaq	lC17(%rip), %rsi
	movl	%eax, %ecx
	movl	%r13d, %r8d
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	movl	668(%rbx), %eax
	movl	124(%rbx), %r13d
	movl	%eax, 8(%rsp)
L62:
	leal	2(%r13), %eax
	testl	%eax, %eax
	movl	%eax, 44(%rsp)
	jle	L808
	leaq	37708(%rbx), %rax
	addl	$1, %r13d
	movq	%rax, 80(%rsp)
	movq	%rax, %rcx
	leaq	39256(%rbx), %rax
	movl	%r13d, 40(%rsp)
	addq	$1, %r13
	movq	%rax, 64(%rsp)
L64:
	movq	%rcx, %rdi
	movq	%r13, %rdx
	movl	$15, %esi
	call	_memset
	movq	%rax, %rcx
	addq	$258, %rcx
	cmpq	%rcx, 64(%rsp)
	jne	L64
L63:
	movl	8(%rsp), %esi
	testl	%esi, %esi
	jle	L809
L65:
	movl	8(%rsp), %eax
	cmpl	$199, %eax
	jle	L382
	cmpl	$599, %eax
	jle	L383
	cmpl	$1199, %eax
	jle	L384
	cmpl	$2399, %eax
	movl	8(%rsp), %ecx
	setg	%r13b
	movzbl	%r13b, %eax
	addl	$5, %eax
	movl	%eax, 104(%rsp)
	movl	%eax, %r13d
	jmp	L66
L831:
	movzbl	1703(%rbx,%r14), %edx
	movslq	%r15d, %rcx
	leaq	(%rcx,%rcx), %rdi
	movl	640(%rbx), %r8d
	movq	%rdx, %rax
	salq	$7, %rax
	addq	%rdx, %rax
	leaq	37708(%rbx,%rax,2), %rdx
	leaq	39256(%rbx,%rax,8), %rsi
	movzwl	0(%rbp,%rcx,2), %eax
	movl	(%rsi,%rax,4), %r11d
	movzbl	(%rdx,%rax), %r9d
	movl	644(%rbx), %eax
	cmpl	$7, %eax
	jle	L236
	movl	116(%rbx), %ecx
L237:
	movq	80(%rbx), %rax
	shrl	$24, %r8d
	movslq	%ecx, %rcx
	movb	%r8b, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %r8d
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L237
L236:
	movl	$32, %ecx
	subl	%eax, %ecx
	addl	%r9d, %eax
	subl	%r9d, %ecx
	movl	%eax, 644(%rbx)
	sall	%cl, %r11d
	movzwl	2(%rbp,%rdi), %ecx
	orl	%r11d, %r8d
	cmpl	$7, %eax
	movl	%r8d, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L238
	movl	116(%rbx), %ecx
L239:
	movq	80(%rbx), %rax
	shrl	$24, %r8d
	movslq	%ecx, %rcx
	movb	%r8b, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %r8d
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L239
L238:
	movl	$32, %ecx
	subl	%eax, %ecx
	subl	%r9d, %ecx
	addl	%eax, %r9d
	movzwl	4(%rbp,%rdi), %eax
	sall	%cl, %r11d
	movl	%r9d, 644(%rbx)
	orl	%r11d, %r8d
	cmpl	$7, %r9d
	movl	%r8d, 640(%rbx)
	movl	(%rsi,%rax,4), %r10d
	movzbl	(%rdx,%rax), %r11d
	jle	L240
	movl	116(%rbx), %eax
L241:
	movq	80(%rbx), %r9
	movslq	%eax, %rcx
	movl	%r8d, %eax
	shrl	$24, %eax
	movb	%al, (%r9,%rcx)
	movl	644(%rbx), %ecx
	movl	116(%rbx), %eax
	movl	640(%rbx), %r8d
	leal	-8(%rcx), %r9d
	addl	$1, %eax
	movl	%r9d, 644(%rbx)
	sall	$8, %r8d
	cmpl	$7, %r9d
	movl	%eax, 116(%rbx)
	movl	%r8d, 640(%rbx)
	jg	L241
L240:
	movl	$32, %ecx
	movl	%r10d, %eax
	subl	%r9d, %ecx
	subl	%r11d, %ecx
	sall	%cl, %eax
	movzwl	6(%rbp,%rdi), %ecx
	orl	%r8d, %eax
	leal	(%r11,%r9), %r8d
	movl	%eax, 640(%rbx)
	cmpl	$7, %r8d
	movl	%r8d, 644(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L242
	movl	116(%rbx), %ecx
L243:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L243
L242:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	8(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L244
	movl	116(%rbx), %ecx
L245:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L245
L244:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	10(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L246
	movl	116(%rbx), %ecx
L247:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L247
L246:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	12(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L248
	movl	116(%rbx), %ecx
L249:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L249
L248:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	14(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L250
	movl	116(%rbx), %ecx
L251:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L251
L250:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	16(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L252
	movl	116(%rbx), %ecx
L253:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L253
L252:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	18(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L254
	movl	116(%rbx), %ecx
L255:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L255
L254:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	20(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L256
	movl	116(%rbx), %ecx
L257:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L257
L256:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	22(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L258
	movl	116(%rbx), %ecx
L259:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L259
L258:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	24(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L260
	movl	116(%rbx), %ecx
L261:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L261
L260:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	26(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L262
	movl	116(%rbx), %ecx
L263:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L263
L262:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	28(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L264
	movl	116(%rbx), %ecx
L265:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L265
L264:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	30(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L266
	movl	116(%rbx), %ecx
L267:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L267
L266:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	32(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L268
	movl	116(%rbx), %ecx
L269:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L269
L268:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	34(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L270
	movl	116(%rbx), %ecx
L271:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L271
L270:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	36(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L272
	movl	116(%rbx), %ecx
L273:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L273
L272:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	38(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L274
	movl	116(%rbx), %ecx
L275:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L275
L274:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	40(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L276
	movl	116(%rbx), %ecx
L277:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L277
L276:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	42(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L278
	movl	116(%rbx), %ecx
L279:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L279
L278:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	44(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L280
	movl	116(%rbx), %ecx
L281:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L281
L280:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	46(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L282
	movl	116(%rbx), %ecx
L283:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L283
L282:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	48(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L284
	movl	116(%rbx), %ecx
L285:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L285
L284:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	50(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L286
	movl	116(%rbx), %ecx
L287:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L287
L286:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	52(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L288
	movl	116(%rbx), %ecx
L289:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L289
L288:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	54(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L290
	movl	116(%rbx), %ecx
L291:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L291
L290:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	56(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L292
	movl	116(%rbx), %ecx
L293:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L293
L292:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	58(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L294
	movl	116(%rbx), %ecx
L295:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L295
L294:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	60(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L296
	movl	116(%rbx), %ecx
L297:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L297
L296:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	62(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L298
	movl	116(%rbx), %ecx
L299:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L299
L298:
	movl	$32, %ecx
	subl	%r8d, %ecx
	subl	%r9d, %ecx
	addl	%r8d, %r9d
	sall	%cl, %r11d
	movzwl	64(%rbp,%rdi), %ecx
	movl	%r9d, 644(%rbx)
	orl	%r11d, %eax
	cmpl	$7, %r9d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r8d
	movzbl	(%rdx,%rcx), %r11d
	jle	L300
	movl	116(%rbx), %ecx
L301:
	movq	80(%rbx), %r9
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r9,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r9d
	movl	%ecx, 116(%rbx)
	movl	%r9d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r9d
	movl	%eax, 640(%rbx)
	jg	L301
L300:
	movl	$32, %ecx
	subl	%r9d, %ecx
	addl	%r11d, %r9d
	subl	%r11d, %ecx
	movl	%r9d, 644(%rbx)
	sall	%cl, %r8d
	movzwl	66(%rbp,%rdi), %ecx
	orl	%r8d, %eax
	cmpl	$7, %r9d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r10d
	movzbl	(%rdx,%rcx), %r11d
	jle	L302
	movl	116(%rbx), %ecx
L303:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r15d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r15), %r9d
	movl	%ecx, 116(%rbx)
	movl	%r9d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r9d
	movl	%eax, 640(%rbx)
	jg	L303
L302:
	movl	$32, %ecx
	subl	%r9d, %ecx
	subl	%r11d, %ecx
	sall	%cl, %r10d
	movzwl	68(%rbp,%rdi), %ecx
	movl	%r10d, %r8d
	orl	%eax, %r8d
	leal	(%r11,%r9), %eax
	movl	%r8d, 640(%rbx)
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L304
	movl	116(%rbx), %ecx
L305:
	movq	80(%rbx), %rax
	shrl	$24, %r8d
	movslq	%ecx, %rcx
	movb	%r8b, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %r8d
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L305
L304:
	movl	$32, %ecx
	subl	%eax, %ecx
	addl	%r9d, %eax
	subl	%r9d, %ecx
	movl	%eax, 644(%rbx)
	sall	%cl, %r11d
	movzwl	70(%rbp,%rdi), %ecx
	orl	%r11d, %r8d
	cmpl	$7, %eax
	movl	%r8d, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L306
	movl	116(%rbx), %ecx
L307:
	movq	80(%rbx), %rax
	shrl	$24, %r8d
	movslq	%ecx, %rcx
	movb	%r8b, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %r8d
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L307
L306:
	movl	$32, %ecx
	subl	%eax, %ecx
	subl	%r9d, %ecx
	addl	%eax, %r9d
	movzwl	72(%rbp,%rdi), %eax
	sall	%cl, %r11d
	movl	%r9d, 644(%rbx)
	orl	%r11d, %r8d
	cmpl	$7, %r9d
	movl	%r8d, 640(%rbx)
	movl	(%rsi,%rax,4), %r10d
	movzbl	(%rdx,%rax), %r11d
	jle	L308
	movl	116(%rbx), %eax
L309:
	movq	80(%rbx), %rcx
	shrl	$24, %r8d
	cltq
	movb	%r8b, (%rcx,%rax)
	movl	644(%rbx), %ecx
	movl	116(%rbx), %eax
	movl	640(%rbx), %r8d
	leal	-8(%rcx), %r9d
	addl	$1, %eax
	movl	%r9d, 644(%rbx)
	sall	$8, %r8d
	cmpl	$7, %r9d
	movl	%eax, 116(%rbx)
	movl	%r8d, 640(%rbx)
	jg	L309
L308:
	movl	$32, %ecx
	movl	%r10d, %eax
	subl	%r9d, %ecx
	subl	%r11d, %ecx
	sall	%cl, %eax
	movzwl	74(%rbp,%rdi), %ecx
	orl	%r8d, %eax
	leal	(%r11,%r9), %r8d
	movl	%eax, 640(%rbx)
	cmpl	$7, %r8d
	movl	%r8d, 644(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L310
	movl	116(%rbx), %ecx
L311:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L311
L310:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	76(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L312
	movl	116(%rbx), %ecx
L313:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L313
L312:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	78(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L314
	movl	116(%rbx), %ecx
L315:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L315
L314:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	80(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L316
	movl	116(%rbx), %ecx
L317:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L317
L316:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	82(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L318
	movl	116(%rbx), %ecx
L319:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L319
L318:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	84(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L320
	movl	116(%rbx), %ecx
L321:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L321
L320:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	86(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L322
	movl	116(%rbx), %ecx
L323:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L323
L322:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	88(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L324
	movl	116(%rbx), %ecx
L325:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L325
L324:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	90(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L326
	movl	116(%rbx), %ecx
L327:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L327
L326:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	92(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L328
	movl	116(%rbx), %ecx
L329:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L329
L328:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	subl	%r9d, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %r11d
	movzwl	94(%rbp,%rdi), %ecx
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r9d
	jle	L330
	movl	116(%rbx), %ecx
L331:
	movq	80(%rbx), %r8
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r8,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r8d
	movl	%ecx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L331
L330:
	movl	$32, %ecx
	subl	%r8d, %ecx
	subl	%r9d, %ecx
	addl	%r8d, %r9d
	sall	%cl, %r11d
	movzwl	96(%rbp,%rdi), %ecx
	movl	%r9d, 644(%rbx)
	orl	%r11d, %eax
	cmpl	$7, %r9d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %r11d
	movzbl	(%rdx,%rcx), %r8d
	jle	L332
	movl	116(%rbx), %ecx
L333:
	movq	80(%rbx), %r9
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%r9,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %r10d
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	leal	-8(%r10), %r9d
	movl	%ecx, 116(%rbx)
	movl	%r9d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r9d
	movl	%eax, 640(%rbx)
	jg	L333
L332:
	movl	$32, %ecx
	subl	%r9d, %ecx
	subl	%r8d, %ecx
	addl	%r9d, %r8d
	sall	%cl, %r11d
	movzwl	98(%rbp,%rdi), %ecx
	movl	%r8d, 644(%rbx)
	orl	%r11d, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	movl	(%rsi,%rcx,4), %esi
	movzbl	(%rdx,%rcx), %edi
	jle	L334
	movl	116(%rbx), %edx
L335:
	movq	80(%rbx), %rcx
	shrl	$24, %eax
	movslq	%edx, %rdx
	movb	%al, (%rcx,%rdx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %ecx
	leal	1(%rax), %edx
	movl	640(%rbx), %eax
	leal	-8(%rcx), %r8d
	movl	%edx, 116(%rbx)
	movl	%r8d, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %r8d
	movl	%eax, 640(%rbx)
	jg	L335
L334:
	movl	$32, %ecx
	subl	%r8d, %ecx
	addl	%edi, %r8d
	subl	%edi, %ecx
	movl	%r8d, 644(%rbx)
	sall	%cl, %esi
	orl	%esi, %eax
	movl	%eax, 640(%rbx)
L336:
	movl	668(%rbx), %eax
	leal	1(%r12), %r15d
	movl	%r14d, %edx
	addq	$1, %r14
	cmpl	%r15d, %eax
	jg	L342
	movl	24(%rsp), %r12d
L232:
	cmpl	16(%rsp), %edx
	je	L343
	movl	$3007, %edi
	call	_BZ2_bz__AssertH__fail
L343:
	cmpl	$2, 656(%rbx)
	jle	L14
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC32(%rip), %rsi
	movl	116(%rbx), %edx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	subl	%r12d, %edx
	call	_fprintf
L14:
	cmpb	$0, 196(%rsp)
	jne	L810
L3:
	addq	$488, %rsp
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
L800:
LCFI14:
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC0(%rip), %rsi
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	jmp	L6
L810:
	movl	644(%rbx), %eax
	movl	640(%rbx), %edi
	cmpl	$7, %eax
	jle	L346
	movl	116(%rbx), %edx
L347:
	movq	80(%rbx), %rax
	shrl	$24, %edi
	movslq	%edx, %rdx
	movb	%dil, (%rax,%rdx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edi
	leal	1(%rax), %edx
	movl	644(%rbx), %eax
	sall	$8, %edi
	movl	%edx, 116(%rbx)
	movl	%edi, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L347
L346:
	movl	$24, %ecx
	movl	$23, %edx
	subl	%eax, %ecx
	movl	%edx, %esi
	addl	$8, %eax
	sall	%cl, %esi
	movl	%eax, 644(%rbx)
	orl	%edi, %esi
	cmpl	$7, %eax
	movl	%esi, 640(%rbx)
	jle	L348
	movl	116(%rbx), %edx
L349:
	movq	80(%rbx), %rax
	shrl	$24, %esi
	movslq	%edx, %rdx
	movb	%sil, (%rax,%rdx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %esi
	leal	1(%rax), %edx
	movl	644(%rbx), %eax
	sall	$8, %esi
	movl	%edx, 116(%rbx)
	movl	%esi, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L349
L348:
	movl	$24, %ecx
	movl	$114, %edx
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %edx
	movl	%eax, 644(%rbx)
	orl	%edx, %esi
	cmpl	$7, %eax
	movl	%esi, 640(%rbx)
	jle	L350
	movl	116(%rbx), %edx
L351:
	movq	80(%rbx), %rax
	shrl	$24, %esi
	movslq	%edx, %rdx
	movb	%sil, (%rax,%rdx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %esi
	leal	1(%rax), %edx
	movl	644(%rbx), %eax
	sall	$8, %esi
	movl	%edx, 116(%rbx)
	movl	%esi, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L351
L350:
	movl	$24, %ecx
	movl	$69, %edx
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %edx
	movl	%eax, 644(%rbx)
	movl	%edx, %edi
	orl	%esi, %edi
	cmpl	$7, %eax
	movl	%edi, 640(%rbx)
	jle	L352
	movl	116(%rbx), %edx
L353:
	movq	80(%rbx), %rax
	shrl	$24, %edi
	movslq	%edx, %rdx
	movb	%dil, (%rax,%rdx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edi
	leal	1(%rax), %edx
	movl	644(%rbx), %eax
	sall	$8, %edi
	movl	%edx, 116(%rbx)
	movl	%edi, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L353
L352:
	movl	$24, %ecx
	movl	$56, %edx
	subl	%eax, %ecx
	movl	%edx, %esi
	addl	$8, %eax
	sall	%cl, %esi
	movl	%eax, 644(%rbx)
	orl	%edi, %esi
	cmpl	$7, %eax
	movl	%esi, 640(%rbx)
	jle	L354
	movl	116(%rbx), %edx
L355:
	movq	80(%rbx), %rax
	shrl	$24, %esi
	movslq	%edx, %rdx
	movb	%sil, (%rax,%rdx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %esi
	leal	1(%rax), %edx
	movl	644(%rbx), %eax
	sall	$8, %esi
	movl	%edx, 116(%rbx)
	movl	%esi, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L355
L354:
	movl	$24, %ecx
	movl	$80, %edx
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %edx
	movl	%eax, 644(%rbx)
	orl	%edx, %esi
	cmpl	$7, %eax
	movl	%esi, 640(%rbx)
	jle	L356
	movl	116(%rbx), %edx
L357:
	movq	80(%rbx), %rax
	shrl	$24, %esi
	movslq	%edx, %rdx
	movb	%sil, (%rax,%rdx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %esi
	leal	1(%rax), %edx
	movl	644(%rbx), %eax
	sall	$8, %esi
	movl	%edx, 116(%rbx)
	movl	%esi, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L357
L356:
	movl	$24, %ecx
	movl	652(%rbx), %edi
	movl	$144, %edx
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %edx
	movl	%eax, 644(%rbx)
	movl	%edx, %r8d
	orl	%esi, %r8d
	movl	%edi, %esi
	shrl	$24, %esi
	cmpl	$7, %eax
	movl	%r8d, 640(%rbx)
	jle	L358
	movl	116(%rbx), %edx
L359:
	movq	80(%rbx), %rax
	shrl	$24, %r8d
	movslq	%edx, %rdx
	movb	%r8b, (%rax,%rdx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %r8d
	leal	1(%rax), %edx
	movl	644(%rbx), %eax
	sall	$8, %r8d
	movl	%edx, 116(%rbx)
	movl	%r8d, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L359
L358:
	movl	$24, %ecx
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %esi
	movl	%eax, 644(%rbx)
	orl	%esi, %r8d
	movl	%edi, %esi
	shrl	$16, %esi
	cmpl	$7, %eax
	movl	%r8d, 640(%rbx)
	movzbl	%sil, %esi
	jle	L360
	movl	116(%rbx), %edx
L361:
	movq	80(%rbx), %rcx
	movslq	%edx, %rax
	movl	%r8d, %edx
	shrl	$24, %edx
	movb	%dl, (%rcx,%rax)
	movl	116(%rbx), %eax
	movl	640(%rbx), %r8d
	leal	1(%rax), %edx
	movl	644(%rbx), %eax
	sall	$8, %r8d
	movl	%edx, 116(%rbx)
	movl	%r8d, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L361
L360:
	movl	$24, %ecx
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %esi
	movl	%edi, %ecx
	movl	%eax, 644(%rbx)
	movl	%esi, %edx
	movzbl	%ch, %esi
	orl	%r8d, %edx
	cmpl	$7, %eax
	movl	%edx, 640(%rbx)
	jle	L362
	movl	116(%rbx), %ecx
L363:
	movq	80(%rbx), %rax
	shrl	$24, %edx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edx
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %edx
	movl	%ecx, 116(%rbx)
	movl	%edx, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L363
L362:
	movl	$24, %ecx
	movzbl	%dil, %edi
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %esi
	movl	%eax, 644(%rbx)
	orl	%esi, %edx
	cmpl	$7, %eax
	movl	%edx, 640(%rbx)
	jle	L364
	movl	116(%rbx), %ecx
L365:
	movq	80(%rbx), %rax
	shrl	$24, %edx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edx
	leal	1(%rax), %ecx
	movl	644(%rbx), %eax
	sall	$8, %edx
	movl	%ecx, 116(%rbx)
	movl	%edx, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L365
L364:
	movl	$24, %ecx
	subl	%eax, %ecx
	addl	$8, %eax
	sall	%cl, %edi
	movl	%eax, 644(%rbx)
	orl	%edi, %edx
	cmpl	$1, 656(%rbx)
	movl	%edx, 640(%rbx)
	jle	L366
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC33(%rip), %rsi
	movl	652(%rbx), %edx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	movl	644(%rbx), %eax
L366:
	testl	%eax, %eax
	jle	L3
	movl	640(%rbx), %edx
	movl	116(%rbx), %eax
L367:
	movq	80(%rbx), %rcx
	shrl	$24, %edx
	cltq
	movb	%dl, (%rcx,%rax)
	movl	644(%rbx), %edi
	movl	116(%rbx), %eax
	movl	640(%rbx), %edx
	leal	-8(%rdi), %ecx
	addl	$1, %eax
	movl	%ecx, 644(%rbx)
	sall	$8, %edx
	testl	%ecx, %ecx
	movl	%eax, 116(%rbx)
	movl	%edx, 640(%rbx)
	jg	L367
	jmp	L3
L4:
	movslq	%r9d, %rcx
	addq	32(%rdi), %rcx
	cmpl	$1, %edx
	movq	%rcx, 80(%rdi)
	jne	L14
L375:
	movabsq	$35467034624, %rax
	movl	$1107296256, %edi
	movq	%rax, 640(%rbx)
	movl	116(%rbx), %eax
	jmp	L9
L811:
	movq	80(%rbx), %rcx
L9:
	shrl	$24, %edi
	cltq
	movb	%dil, (%rcx,%rax)
	movl	644(%rbx), %edx
	movl	116(%rbx), %eax
	movl	640(%rbx), %edi
	leal	-8(%rdx), %ecx
	addl	$1, %eax
	movl	%ecx, 644(%rbx)
	sall	$8, %edi
	cmpl	$7, %ecx
	movl	%eax, 116(%rbx)
	movl	%edi, 640(%rbx)
	jg	L811
	movl	$24, %esi
	movl	%edx, 644(%rbx)
	subl	%ecx, %esi
	movl	%esi, %ecx
	movl	$90, %esi
	sall	%cl, %esi
	orl	%edi, %esi
	cmpl	$7, %edx
	movl	%esi, 640(%rbx)
	jle	L10
L11:
	movq	80(%rbx), %rdx
	shrl	$24, %esi
	cltq
	movb	%sil, (%rdx,%rax)
	movl	644(%rbx), %edi
	movl	116(%rbx), %eax
	movl	640(%rbx), %esi
	leal	-8(%rdi), %edx
	addl	$1, %eax
	movl	%edx, 644(%rbx)
	sall	$8, %esi
	cmpl	$7, %edx
	movl	%eax, 116(%rbx)
	movl	%esi, 640(%rbx)
	jg	L11
L10:
	movl	$24, %ecx
	movl	$104, %edi
	subl	%edx, %ecx
	addl	$8, %edx
	sall	%cl, %edi
	movl	%edx, 644(%rbx)
	orl	%edi, %esi
	movzbl	664(%rbx), %edi
	cmpl	$7, %edx
	movl	%esi, 640(%rbx)
	leal	48(%rdi), %ecx
	movzbl	%cl, %edi
	jle	L12
L13:
	movq	80(%rbx), %rdx
	shrl	$24, %esi
	cltq
	movb	%sil, (%rdx,%rax)
	movl	644(%rbx), %ecx
	movl	116(%rbx), %eax
	movl	640(%rbx), %esi
	leal	-8(%rcx), %edx
	addl	$1, %eax
	movl	%edx, 644(%rbx)
	sall	$8, %esi
	cmpl	$7, %edx
	movl	%eax, 116(%rbx)
	movl	%esi, 640(%rbx)
	jg	L13
L12:
	leal	8(%rdx), %eax
	movl	$24, %ecx
	subl	%edx, %ecx
	movl	%eax, 644(%rbx)
	movl	108(%rbx), %eax
	sall	%cl, %edi
	orl	%edi, %esi
	movl	%esi, 640(%rbx)
	jmp	L7
L382:
	movl	$2, 104(%rsp)
	movl	$2, %r13d
	movl	%eax, %ecx
L66:
	leal	-1(%r13), %eax
	movq	%rbx, %r10
	xorl	%esi, %esi
	movl	%r13d, 16(%rsp)
	movslq	%eax, %rdx
	movl	%eax, 24(%rsp)
	movdqa	lC21(%rip), %xmm10
	movl	%r13d, %r11d
	movq	%rdx, %rax
	movw	%r14w, 32(%rsp)
	movl	%esi, %r13d
	movdqa	lC22(%rip), %xmm9
	salq	$7, %rax
	movw	%r15w, 48(%rsp)
	movdqa	lC23(%rip), %xmm8
	addq	%rdx, %rax
	movq	%r12, 56(%rsp)
	addq	%rax, %rax
	movq	%rbp, 72(%rsp)
	leaq	37708(%rbx,%rax), %rdi
	addq	%rbx, %rax
	movl	44(%rsp), %ebx
	movq	%rax, %r14
	movq	%rdi, %r15
L113:
	movl	8(%rsp), %eax
	leal	-1(%r13), %ebp
	cltd
	idivl	%r11d
	testl	%eax, %eax
	jle	L387
	movl	40(%rsp), %edi
	cmpl	%edi, %ebp
	jge	L387
	movl	%edi, %esi
	movslq	%r13d, %rdx
	xorl	%r12d, %r12d
	subl	%r13d, %esi
	leaq	1(%rdx,%rsi), %rsi
	jmp	L68
	.align 4,0x90
L812:
	addq	$1, %rdx
	cmpq	%rdx, %rsi
	je	L67
L68:
	addl	672(%r10,%rdx,4), %r12d
	movl	%edx, %ebp
	cmpl	%r12d, %eax
	jg	L812
L67:
	movl	16(%rsp), %edi
	cmpl	%r13d, %ebp
	setg	%dl
	cmpl	%r11d, %edi
	setne	%al
	testb	%al, %dl
	je	L69
	cmpl	$1, %r11d
	je	L69
	movl	%edi, %eax
	subl	%r11d, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	cmpl	$1, %eax
	jne	L69
	movslq	%ebp, %rax
	subl	$1, %ebp
	subl	672(%r10,%rax,4), %r12d
L69:
	cmpl	$2, 656(%r10)
	jg	L813
L70:
	subl	$1, %r11d
	testl	%ebx, %ebx
	jle	L116
	movl	$-37708, %edx
	subl	%r14d, %edx
	andl	$15, %edx
	leal	15(%rdx), %eax
	cmpl	40(%rsp), %eax
	ja	L388
	testl	%edx, %edx
	je	L389
	testl	%ebp, %ebp
	js	L73
	testl	%r13d, %r13d
	jg	L73
	movb	$0, (%r15)
L74:
	cmpl	$1, %edx
	je	L390
	testl	%ebp, %ebp
	jle	L76
	cmpl	$1, %r13d
	jg	L76
	cmpl	$2, %edx
	movb	$0, 1(%r15)
	je	L391
L823:
	cmpl	$1, %ebp
	jle	L78
	cmpl	$2, %r13d
	jg	L78
	cmpl	$3, %edx
	movb	$0, 2(%r15)
	je	L392
L824:
	cmpl	$2, %ebp
	jle	L80
	cmpl	$3, %r13d
	jg	L80
	cmpl	$4, %edx
	movb	$0, 3(%r15)
	je	L393
L825:
	cmpl	$3, %ebp
	jle	L82
	cmpl	$4, %r13d
	jg	L82
	cmpl	$5, %edx
	movb	$0, 4(%r15)
	je	L394
L832:
	cmpl	$4, %ebp
	jle	L84
	cmpl	$5, %r13d
	jg	L84
	cmpl	$6, %edx
	movb	$0, 5(%r15)
	je	L395
L833:
	cmpl	$5, %ebp
	jle	L86
	cmpl	$6, %r13d
	jg	L86
	cmpl	$7, %edx
	movb	$0, 6(%r15)
	je	L396
L835:
	cmpl	$6, %ebp
	jle	L88
	cmpl	$7, %r13d
	jg	L88
	cmpl	$8, %edx
	movb	$0, 7(%r15)
	je	L397
L836:
	cmpl	$7, %ebp
	jle	L90
	cmpl	$8, %r13d
	jg	L90
	cmpl	$9, %edx
	movb	$0, 8(%r15)
	je	L398
L839:
	cmpl	$8, %ebp
	jle	L92
	cmpl	$9, %r13d
	jg	L92
	cmpl	$10, %edx
	movb	$0, 9(%r15)
	je	L399
L838:
	cmpl	$9, %ebp
	jle	L94
	cmpl	$10, %r13d
	jg	L94
	cmpl	$11, %edx
	movb	$0, 10(%r15)
	je	L400
L841:
	cmpl	$10, %ebp
	jle	L96
	cmpl	$11, %r13d
	jg	L96
	cmpl	$12, %edx
	movb	$0, 11(%r15)
	je	L401
L840:
	cmpl	$11, %ebp
	jle	L98
	cmpl	$12, %r13d
	jg	L98
	cmpl	$13, %edx
	movb	$0, 12(%r15)
	je	L402
L842:
	cmpl	$12, %ebp
	jle	L100
	cmpl	$13, %r13d
	jg	L100
	cmpl	$15, %edx
	movb	$0, 13(%r15)
	jne	L403
L843:
	cmpl	$13, %ebp
	jle	L104
	cmpl	$14, %r13d
	jg	L104
	movb	$0, 14(%r15)
L105:
	movl	$15, %eax
	jmp	L72
L390:
	movl	$1, %eax
L72:
	movd	%eax, %xmm6
	movl	%ebx, %edi
	xorl	%esi, %esi
	movdqa	lC24(%rip), %xmm12
	subl	%edx, %edi
	movd	%ebp, %xmm7
	pxor	%xmm2, %xmm2
	pshufd	$0, %xmm6, %xmm3
	movd	%r13d, %xmm6
	movl	%edi, %r8d
	pshufd	$0, %xmm7, %xmm4
	paddd	lC20(%rip), %xmm3
	pshufd	$0, %xmm6, %xmm5
	movdqa	lC26(%rip), %xmm7
	leaq	37708(%r14,%rdx), %r9
	shrl	$4, %r8d
	movdqa	lC25(%rip), %xmm6
	xorl	%edx, %edx
	.align 4,0x90
L106:
	movdqa	%xmm3, %xmm0
	movdqa	%xmm3, %xmm1
	movdqa	%xmm5, %xmm11
	pcmpgtd	%xmm4, %xmm0
	paddd	%xmm9, %xmm1
	movdqa	%xmm3, %xmm13
	pcmpgtd	%xmm1, %xmm11
	paddd	%xmm8, %xmm13
	movdqa	%xmm3, %xmm15
	paddd	%xmm12, %xmm15
	addl	$1, %edx
	pcmpeqd	%xmm2, %xmm0
	movdqa	%xmm0, %xmm14
	movdqa	%xmm5, %xmm0
	pcmpgtd	%xmm3, %xmm0
	paddd	%xmm10, %xmm3
	pcmpeqd	%xmm2, %xmm0
	pand	%xmm14, %xmm0
	movdqa	%xmm1, %xmm14
	movdqa	%xmm11, %xmm1
	pcmpgtd	%xmm4, %xmm14
	pcmpeqd	%xmm2, %xmm1
	pcmpeqd	%xmm2, %xmm14
	pand	%xmm14, %xmm1
	movdqa	%xmm0, %xmm14
	punpcklwd	%xmm1, %xmm0
	punpckhwd	%xmm1, %xmm14
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm14, %xmm0
	punpckhwd	%xmm14, %xmm1
	punpcklwd	%xmm1, %xmm0
	movdqa	%xmm13, %xmm1
	pand	%xmm6, %xmm0
	pcmpgtd	%xmm4, %xmm1
	pcmpeqd	%xmm2, %xmm1
	movdqa	%xmm1, %xmm14
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm13, %xmm1
	movdqa	%xmm15, %xmm13
	pcmpgtd	%xmm4, %xmm13
	pcmpeqd	%xmm2, %xmm1
	pcmpeqd	%xmm2, %xmm13
	pand	%xmm14, %xmm1
	movdqa	%xmm13, %xmm14
	movdqa	%xmm5, %xmm13
	pcmpgtd	%xmm15, %xmm13
	pcmpeqd	%xmm2, %xmm13
	pand	%xmm14, %xmm13
	movdqa	%xmm1, %xmm14
	punpcklwd	%xmm13, %xmm1
	punpckhwd	%xmm13, %xmm14
	movdqa	%xmm1, %xmm13
	punpcklwd	%xmm14, %xmm1
	punpckhwd	%xmm14, %xmm13
	punpcklwd	%xmm13, %xmm1
	pand	%xmm6, %xmm1
	packuswb	%xmm1, %xmm0
	pandn	%xmm7, %xmm0
	movaps	%xmm0, (%r9,%rsi)
	addq	$16, %rsi
	cmpl	%r8d, %edx
	jb	L106
	movl	%edi, %edx
	andl	$-16, %edx
	addl	%edx, %eax
	cmpl	%edi, %edx
	jne	L71
L116:
	subl	%r12d, 8(%rsp)
	leal	1(%rbp), %r13d
	subq	$258, %r15
	subq	$258, %r14
	testl	%r11d, %r11d
	jne	L113
	movl	24(%rsp), %eax
	movl	%ecx, 8(%rsp)
	movq	%r10, %rbx
	movl	40(%rsp), %ecx
	movl	%r11d, 192(%rsp)
	movl	16(%rsp), %r13d
	movzwl	32(%rsp), %r14d
	movq	%rax, %rdx
	movzwl	48(%rsp), %r15d
	salq	$7, %rdx
	movq	56(%rsp), %r12
	movl	$0, 56(%rsp)
	addq	%rax, %rdx
	movq	72(%rsp), %rbp
	leaq	46480(%r10,%rdx,8), %rdi
	movq	%rdi, 176(%rsp)
	leaq	1(%rcx), %rdi
	salq	$4, %rcx
	movq	%rdi, 88(%rsp)
	salq	$2, %rdi
	movq	%rdi, 184(%rsp)
	leaq	51656(%r10,%rcx), %rdi
	movq	%rdi, 112(%rsp)
	movq	168(%rsp), %rdi
	leaq	4(%rdi,%rax,4), %rax
	movq	%rax, 128(%rsp)
	leaq	(%rdx,%rdx), %rax
	movq	%rax, 200(%rsp)
	leaq	37966(%r10,%rax), %rax
	movq	%rax, 144(%rsp)
	leaq	45448(%r10), %rax
	movq	%rax, 72(%rsp)
L114:
	movq	$0, 224(%rsp)
	cmpl	$2, %r13d
	je	L151
	movl	$0, 232(%rsp)
	cmpl	$3, %r13d
	je	L151
	movl	$0, 236(%rsp)
	cmpl	$4, %r13d
	je	L151
	movl	$0, 240(%rsp)
	cmpl	$6, %r13d
	jne	L151
	movl	$0, 244(%rsp)
L151:
	movl	44(%rsp), %ecx
	testl	%ecx, %ecx
	jle	L117
	movq	%rbp, 16(%rsp)
	movq	72(%rsp), %rcx
	movq	%rbx, 24(%rsp)
	movq	184(%rsp), %rbp
	movq	176(%rsp), %rbx
	.align 4,0x90
L118:
	xorl	%esi, %esi
	movq	%rcx, %rdi
	movq	%rbp, %rdx
	call	_memset
	movq	%rax, %rcx
	addq	$1032, %rcx
	cmpq	%rcx, %rbx
	jne	L118
	cmpl	$6, %r13d
	movq	16(%rsp), %rbp
	movq	24(%rsp), %rbx
	je	L814
L117:
	movl	8(%rsp), %eax
	testl	%eax, %eax
	jle	L404
L834:
	subl	$1, %eax
	movzwl	108(%rsp), %r10d
	xorl	%r11d, %r11d
	xorl	%edi, %edi
	movl	%eax, 24(%rsp)
	leaq	2(%rbp), %rax
	movq	%rax, 16(%rsp)
	movzwl	110(%rsp), %eax
	movq	%r12, 160(%rsp)
	movq	%r11, %r12
	movl	$0, 32(%rsp)
	.align 4,0x90
L145:
	leal	49(%rdi), %r9d
	cmpl	8(%rsp), %r9d
	cmovge	24(%rsp), %r9d
	cmpl	$2, %r13d
	je	L123
	cmpl	$3, %r13d
	je	L797
	cmpl	$4, %r13d
	je	L798
	cmpl	$6, %r13d
	jne	L407
	movl	%r9d, %eax
	subl	%edi, %eax
	cmpl	$49, %eax
	jne	L124
	movslq	%edi, %r8
	leaq	(%r8,%r8), %rcx
	movzwl	0(%rbp,%r8,2), %r8d
	movzwl	2(%rbp,%rcx), %eax
	movzwl	4(%rbp,%rcx), %r10d
	leaq	3227(%rax), %rsi
	salq	$4, %rax
	leaq	3227(%r10), %rdx
	salq	$4, %rsi
	addq	%rbx, %rax
	salq	$4, %rdx
	salq	$4, %r10
	movl	8(%rbx,%rdx), %edx
	addq	%rbx, %r10
	addl	8(%rbx,%rsi), %edx
	leaq	3227(%r8), %rsi
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %rsi
	addl	8(%rbx,%rsi), %edx
	movl	51644(%r10), %esi
	movl	51648(%r10), %r10d
	addl	51644(%rax), %esi
	addl	51648(%rax), %r10d
	addl	51644(%r8), %esi
	movl	51648(%r8), %eax
	movzwl	6(%rbp,%rcx), %r8d
	addl	%r10d, %eax
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	8(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	10(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	salq	$4, %r10
	addq	%rbx, %r8
	addl	8(%rbx,%r10), %edx
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	12(%rbp,%rcx), %r8d
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	14(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	8(%rbx,%r10), %edx
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	16(%rbp,%rcx), %r8d
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	18(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	20(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	22(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r10
	addl	8(%rbx,%r10), %edx
	salq	$4, %r8
	addq	%rbx, %r8
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	24(%rbp,%rcx), %r8d
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	26(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	28(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	30(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	8(%rbx,%r10), %edx
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	32(%rbp,%rcx), %r8d
	leaq	3227(%r8), %r10
	salq	$4, %r8
	salq	$4, %r10
	addl	8(%rbx,%r10), %edx
	addq	%rbx, %r8
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	34(%rbp,%rcx), %r8d
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	36(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	38(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	40(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	42(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	salq	$4, %r10
	addq	%rbx, %r8
	addl	8(%rbx,%r10), %edx
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	44(%rbp,%rcx), %r8d
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	46(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	8(%rbx,%r10), %edx
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	48(%rbp,%rcx), %r8d
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	50(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	52(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	54(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r10
	addl	8(%rbx,%r10), %edx
	salq	$4, %r8
	addq	%rbx, %r8
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	56(%rbp,%rcx), %r8d
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	58(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	60(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	62(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	8(%rbx,%r10), %edx
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	64(%rbp,%rcx), %r8d
	leaq	3227(%r8), %r10
	salq	$4, %r8
	salq	$4, %r10
	addl	8(%rbx,%r10), %edx
	addq	%rbx, %r8
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	66(%rbp,%rcx), %r8d
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	68(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	70(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	72(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	74(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	salq	$4, %r10
	addq	%rbx, %r8
	addl	8(%rbx,%r10), %edx
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	76(%rbp,%rcx), %r8d
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	78(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	8(%rbx,%r10), %edx
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	80(%rbp,%rcx), %r8d
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	82(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	84(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	86(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r10
	addl	8(%rbx,%r10), %edx
	salq	$4, %r8
	addq	%rbx, %r8
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	88(%rbp,%rcx), %r8d
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	90(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	92(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	94(%rbp,%rcx), %r8d
	addl	8(%rbx,%r10), %edx
	leaq	3227(%r8), %r10
	salq	$4, %r8
	addq	%rbx, %r8
	salq	$4, %r10
	addl	8(%rbx,%r10), %edx
	addl	51644(%r8), %esi
	addl	51648(%r8), %eax
	movzwl	96(%rbp,%rcx), %r8d
	movzwl	98(%rbp,%rcx), %ecx
	movl	%esi, %r10d
	leaq	3227(%r8), %rsi
	salq	$4, %r8
	salq	$4, %rsi
	addl	8(%rbx,%rsi), %edx
	addq	%rbx, %r8
	addl	51648(%r8), %eax
	movl	%edx, %esi
	movl	51644(%r8), %edx
	leaq	3227(%rcx), %r8
	salq	$4, %rcx
	addq	%rbx, %rcx
	salq	$4, %r8
	addl	8(%rbx,%r8), %esi
	addl	%r10d, %edx
	addl	51644(%rcx), %edx
	addl	51648(%rcx), %eax
	movl	%edx, %ecx
	movl	%edx, %r14d
	shrl	$16, %ecx
	movl	%eax, %r10d
	shrl	$16, %eax
	movl	%ecx, %r15d
	movzwl	%si, %ecx
	shrl	$16, %esi
	cmpl	%ecx, %esi
	jge	L815
	movzwl	%dx, %edx
	cmpl	%esi, %edx
	jl	L439
	movl	%esi, %ecx
	movl	$1, %r8d
	movl	$1, %esi
L377:
	movl	%ecx, %edx
L138:
	cmpl	$3, %r13d
	je	L412
L378:
	movzwl	%r15w, %ecx
	cmpl	%edx, %ecx
	jl	L410
	movl	%edx, %ecx
L139:
	cmpl	$4, %r13d
	je	L137
	movzwl	%r10w, %edx
	cmpl	%edx, %ecx
	jg	L411
	movl	%ecx, %edx
L140:
	cmpl	$6, %r13d
	jne	L412
	movzwl	%ax, %ecx
	cmpl	%ecx, %edx
	jg	L413
	movl	%edx, %ecx
L141:
	addl	%ecx, 32(%rsp)
	movl	%r9d, %edx
	movb	%r8b, 1704(%rbx,%r12)
	addl	$1, 224(%rsp,%rsi,4)
	subl	%edi, %edx
	cmpl	$49, %edx
	leal	1(%r12), %r8d
	jne	L374
	movq	%rsi, %rdx
	movslq	%edi, %rdi
	leaq	(%rdi,%rdi), %rcx
	salq	$7, %rdx
	addq	%rsi, %rdx
	movzwl	0(%rbp,%rdi,2), %esi
	addq	%rdx, %rdx
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	2(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	4(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	6(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	8(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	10(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	12(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	14(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	16(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	18(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	20(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	22(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	24(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	26(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	28(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	30(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	32(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	34(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	36(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	38(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	40(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	42(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	44(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	46(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	48(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	50(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	52(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	54(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	56(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	58(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	60(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	62(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	64(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	66(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	68(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	70(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	72(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	74(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	76(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	78(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	80(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	82(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	84(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	86(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	88(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	90(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	92(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	94(%rbp,%rcx), %esi
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	movzwl	96(%rbp,%rcx), %esi
	movzwl	98(%rbp,%rcx), %ecx
	addq	%rdx, %rsi
	addl	$1, 45448(%rbx,%rsi,4)
	addq	%rcx, %rdx
	addl	$1, 45448(%rbx,%rdx,4)
L142:
	addq	$1, %r12
	leal	1(%r9), %edi
	cmpl	8(%rsp), %edi
	jl	L145
	movq	160(%rsp), %r12
	movw	%r10w, 108(%rsp)
	movl	%r8d, 16(%rsp)
	movw	%ax, 110(%rsp)
L121:
	addl	$1, 56(%rsp)
	cmpl	$2, 656(%rbx)
	jg	L816
L146:
	movq	80(%rsp), %rdi
	movl	%r13d, 8(%rsp)
	movq	72(%rsp), %rax
	movq	%rbx, 48(%rsp)
	movl	44(%rsp), %r13d
	movq	%r12, 24(%rsp)
	movq	144(%rsp), %rbx
	movq	%rbp, 32(%rsp)
	movq	%rdi, 160(%rsp)
	movq	%rdi, %r12
	movq	%rax, %rbp
	.align 4,0x90
L148:
	movq	%rbp, %rsi
	movq	%r12, %rdi
	movl	$17, %ecx
	movl	%r13d, %edx
	addq	$258, %r12
	addq	$1032, %rbp
	call	_BZ2_hbMakeCodeLengths
	cmpq	%r12, %rbx
	jne	L148
	cmpl	$4, 56(%rsp)
	movl	8(%rsp), %r13d
	movq	%r12, 8(%rsp)
	movq	32(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	48(%rsp), %rbx
	je	L149
	movl	668(%rbx), %eax
	movl	%eax, 8(%rsp)
	jmp	L114
L412:
	movl	%edx, %ecx
L137:
	addl	%ecx, 32(%rsp)
	movb	%r8b, 1704(%rbx,%r12)
	leal	1(%r12), %r8d
	addl	$1, 224(%rsp,%rsi,4)
L374:
	cmpl	%r9d, %edi
	jg	L142
	movl	%r9d, %r11d
	movslq	%edi, %rdx
	leaq	0(%rbp,%rdx,2), %rcx
	subl	%edi, %r11d
	movq	16(%rsp), %rdi
	addq	%r11, %rdx
	leaq	(%rdi,%rdx,2), %rdi
	movq	%rsi, %rdx
	salq	$7, %rdx
	addq	%rdx, %rsi
	addq	%rsi, %rsi
	.align 4,0x90
L143:
	movzwl	(%rcx), %edx
	addq	$2, %rcx
	addq	%rsi, %rdx
	addl	$1, 45448(%rbx,%rdx,4)
	cmpq	%rcx, %rdi
	jne	L143
	jmp	L142
L407:
	xorl	%r10d, %r10d
L798:
	xorl	%r15d, %r15d
L797:
	xorl	%r14d, %r14d
L123:
	cmpl	%r9d, %edi
	jg	L817
	cmpl	$2, %r13d
	je	L818
	cmpl	$6, %r13d
	jne	L819
L130:
	movq	16(%rsp), %rsi
	movl	%r9d, %edx
	movslq	%edi, %rcx
	movl	%edi, 48(%rsp)
	leaq	0(%rbp,%rcx,2), %r8
	subl	%edi, %edx
	addq	%rcx, %rdx
	xorl	%ecx, %ecx
	leaq	(%rsi,%rdx,2), %rdx
	xorl	%esi, %esi
	movq	%rdx, %rdi
	.align 4,0x90
L136:
	movzwl	(%r8), %edx
	addq	$2, %r8
	movzbl	37708(%rbx,%rdx), %r11d
	addl	%r11d, %ecx
	movzbl	37966(%rbx,%rdx), %r11d
	addl	%r11d, %esi
	movzbl	38224(%rbx,%rdx), %r11d
	addl	%r11d, %r14d
	movzbl	38482(%rbx,%rdx), %r11d
	addl	%r11d, %r15d
	movzbl	38740(%rbx,%rdx), %r11d
	movzbl	38998(%rbx,%rdx), %edx
	addl	%r11d, %r10d
	addl	%edx, %eax
	cmpq	%r8, %rdi
	jne	L136
	movl	48(%rsp), %edi
L129:
	movzwl	%cx, %ecx
	movzwl	%si, %esi
	cmpl	%esi, %ecx
	jle	L437
	movl	%esi, %ecx
	movl	$1, %r8d
	movl	$1, %esi
L371:
	cmpl	$2, %r13d
	je	L137
L126:
	movzwl	%r14w, %edx
	cmpl	%edx, %ecx
	jle	L377
	movl	$2, %r8d
	movl	$2, %esi
	jmp	L138
L437:
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	jmp	L371
L410:
	movl	$3, %r8d
	movl	$3, %esi
	jmp	L139
L124:
	cmpl	%r9d, %edi
	jg	L820
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	xorl	%r14d, %r14d
	xorl	%r10d, %r10d
	jmp	L130
L411:
	movl	$4, %r8d
	movl	$4, %esi
	jmp	L140
L413:
	movl	$5, %r8d
	movl	$5, %esi
	jmp	L141
L815:
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	jmp	L126
L818:
	movl	%r9d, %ecx
	movslq	%edi, %rsi
	movw	%r10w, 48(%rsp)
	leaq	0(%rbp,%rsi,2), %rdx
	subl	%edi, %ecx
	addq	%rsi, %rcx
	movq	16(%rsp), %rsi
	leaq	(%rsi,%rcx,2), %r11
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	.align 4,0x90
L128:
	movzwl	(%rdx), %r8d
	addq	$2, %rdx
	movzbl	37708(%rbx,%r8), %r10d
	movzbl	37966(%rbx,%r8), %r8d
	addl	%r10d, %ecx
	addl	%r8d, %esi
	cmpq	%rdx, %r11
	jne	L128
	movzwl	48(%rsp), %r10d
	jmp	L129
L73:
	movb	$15, (%r15)
	jmp	L74
L819:
	cmpl	$3, %r13d
	movslq	%edi, %rcx
	je	L821
	cmpl	$4, %r13d
	je	L822
	movq	16(%rsp), %rsi
	movl	%r9d, %edx
	movw	%ax, 48(%rsp)
	leaq	0(%rbp,%rcx,2), %r8
	subl	%edi, %edx
	addq	%rcx, %rdx
	xorl	%ecx, %ecx
	leaq	(%rsi,%rdx,2), %rdx
	xorl	%esi, %esi
	movq	%rdx, %rax
L135:
	movzwl	(%r8), %edx
	addq	$2, %r8
	movzbl	37708(%rbx,%rdx), %r11d
	addl	%r11d, %ecx
	movzbl	37966(%rbx,%rdx), %r11d
	addl	%r11d, %esi
	movzbl	38224(%rbx,%rdx), %r11d
	addl	%r11d, %r14d
	movzbl	38482(%rbx,%rdx), %r11d
	movzbl	38740(%rbx,%rdx), %edx
	addl	%r11d, %r15d
	addl	%edx, %r10d
	cmpq	%r8, %rax
	jne	L135
	movzwl	48(%rsp), %eax
	jmp	L129
L813:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2ss	%ecx, %xmm1
	movl	%r11d, %edx
	cvtsi2ss	%r12d, %xmm0
	movl	%r13d, %ecx
	movl	%r12d, %r9d
	movl	%r11d, 88(%rsp)
	movq	___stderrp@GOTPCREL(%rip), %rax
	movl	%ebp, %r8d
	movq	%r10, 160(%rsp)
	leaq	lC19(%rip), %rsi
	movaps	%xmm10, 112(%rsp)
	movaps	%xmm8, 144(%rsp)
	cvtss2sd	%xmm1, %xmm1
	movaps	%xmm9, 128(%rsp)
	cvtss2sd	%xmm0, %xmm0
	mulsd	lC18(%rip), %xmm0
	movq	(%rax), %rdi
	movl	$1, %eax
	divsd	%xmm1, %xmm0
	call	_fprintf
	movq	160(%rsp), %r10
	movl	88(%rsp), %r11d
	movdqa	112(%rsp), %xmm10
	movdqa	128(%rsp), %xmm9
	movl	668(%r10), %ecx
	movdqa	144(%rsp), %xmm8
	jmp	L70
L817:
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	jmp	L371
L76:
	cmpl	$2, %edx
	movb	$15, 1(%r15)
	jne	L823
L391:
	movl	$2, %eax
	jmp	L72
L439:
	movl	$2, %r8d
	movl	$2, %esi
	jmp	L378
L78:
	cmpl	$3, %edx
	movb	$15, 2(%r15)
	jne	L824
L392:
	movl	$3, %eax
	jmp	L72
L80:
	cmpl	$4, %edx
	movb	$15, 3(%r15)
	jne	L825
L393:
	movl	$4, %eax
	jmp	L72
L149:
	cmpl	$2, %r13d
	movb	$1, 209(%rsp)
	je	L152
	cmpl	$3, %r13d
	movb	$2, 210(%rsp)
	je	L152
	cmpl	$4, %r13d
	movb	$3, 211(%rsp)
	je	L152
	cmpl	$6, %r13d
	movb	$4, 212(%rsp)
	jne	L152
	movb	$5, 213(%rsp)
L152:
	movl	16(%rsp), %ecx
	testl	%ecx, %ecx
	je	L153
	leal	-1(%rcx), %edx
	xorl	%ecx, %ecx
	movzbl	209(%rsp), %esi
	movzbl	210(%rsp), %edi
	leaq	1704(%rbx), %rax
	movzbl	211(%rsp), %r8d
	leaq	1705(%rbx,%rdx), %r10
	movzbl	212(%rsp), %r9d
	movzbl	213(%rsp), %r11d
	jmp	L155
L826:
	cmpb	%sil, %dl
	je	L415
	cmpb	%dil, %dl
	je	L416
	cmpb	%r8b, %dl
	je	L417
	cmpb	%r9b, %dl
	movl	%ecx, %edx
	je	L418
	movl	%r11d, %ecx
	movl	%r9d, %r11d
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%esi, %edi
	movl	%edx, %esi
	movl	$5, %edx
L154:
	movb	%dl, 18002(%rax)
	addq	$1, %rax
	cmpq	%rax, %r10
	je	L153
L155:
	movzbl	(%rax), %edx
	cmpb	%cl, %dl
	jne	L826
	xorl	%edx, %edx
	addq	$1, %rax
	movb	%dl, 18001(%rax)
	cmpq	%rax, %r10
	jne	L155
L153:
	movq	200(%rsp), %rax
	movq	%rbp, 32(%rsp)
	movq	%rbx, %r15
	movq	64(%rsp), %r14
	movl	44(%rsp), %ebp
	leaq	258(%rbx,%rax), %rax
	movq	%rax, 24(%rsp)
L156:
	xorl	%ecx, %ecx
	testl	%ebp, %ebp
	movl	$32, %edx
	jle	L164
	movl	$-37708, %edi
	movl	$19, %edx
	subl	%ebx, %edi
	andl	$15, %edi
	leal	15(%rdi), %eax
	cmpl	$19, %eax
	cmovb	%edx, %eax
	cmpl	40(%rsp), %eax
	ja	L419
	testl	%edi, %edi
	je	L420
	movzbl	37708(%rbx), %ecx
	movl	$32, %edx
	cmpl	$32, %ecx
	cmovle	%ecx, %edx
	cmpl	$1, %edi
	je	L421
	movzbl	37709(%rbx), %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cmpl	$2, %edi
	je	L422
	movzbl	37710(%rbx), %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cmpl	$3, %edi
	je	L423
	movzbl	37711(%rbx), %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cmpl	$4, %edi
	je	L424
	movzbl	37712(%rbx), %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cmpl	$5, %edi
	je	L425
	movzbl	37713(%rbx), %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cmpl	$6, %edi
	je	L426
	movzbl	37714(%rbx), %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cmpl	$7, %edi
	je	L427
	movzbl	37715(%rbx), %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cmpl	$8, %edi
	je	L428
	movzbl	37716(%rbx), %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cmpl	$9, %edi
	je	L429
	movzbl	37717(%rbx), %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cmpl	$10, %edi
	je	L430
	movzbl	37718(%rbx), %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cmpl	$11, %edi
	je	L431
	movzbl	37719(%rbx), %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cmpl	$12, %edi
	je	L432
	movzbl	37720(%rbx), %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cmpl	$13, %edi
	je	L433
	movzbl	37721(%rbx), %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	cmpl	$15, %edi
	jne	L434
	movzbl	37722(%rbx), %eax
	cmpl	%eax, %ecx
	cmovl	%eax, %ecx
	cmpl	%eax, %edx
	cmovg	%eax, %edx
	movl	$15, %eax
L158:
	movl	%ebp, %esi
	pxor	%xmm3, %xmm3
	pxor	%xmm8, %xmm8
	movd	%ecx, %xmm2
	subl	%edi, %esi
	leaq	37708(%rbx,%rdi), %rdi
	movl	%esi, %r8d
	movdqa	(%rdi), %xmm4
	shrl	$4, %r8d
	cmpl	$1, %r8d
	movdqa	%xmm4, %xmm9
	punpckhbw	%xmm8, %xmm4
	movdqa	%xmm4, %xmm7
	punpckhwd	%xmm3, %xmm4
	punpcklbw	%xmm8, %xmm9
	movdqa	%xmm9, %xmm6
	punpckhwd	%xmm3, %xmm9
	movdqa	%xmm9, %xmm5
	punpcklwd	%xmm3, %xmm6
	pcmpgtd	%xmm6, %xmm5
	punpcklwd	%xmm3, %xmm7
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
	movd	%edx, %xmm6
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
	pand	%xmm0, %xmm4
	pandn	%xmm7, %xmm0
	por	%xmm0, %xmm4
	movdqa	%xmm4, %xmm1
	pshufd	$0, %xmm6, %xmm0
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm4, %xmm1
	por	%xmm1, %xmm0
	jbe	L160
	movdqa	16(%rdi), %xmm9
	cmpl	$2, %r8d
	movdqa	%xmm9, %xmm10
	punpckhbw	%xmm8, %xmm9
	movdqa	%xmm9, %xmm5
	punpckhwd	%xmm3, %xmm9
	punpcklbw	%xmm8, %xmm10
	movdqa	%xmm10, %xmm7
	punpckhwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm6
	punpcklwd	%xmm3, %xmm7
	pcmpgtd	%xmm7, %xmm6
	punpcklwd	%xmm3, %xmm5
	movdqa	%xmm6, %xmm1
	movdqa	%xmm6, %xmm4
	pandn	%xmm7, %xmm4
	pand	%xmm10, %xmm1
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm6, %xmm7
	pandn	%xmm10, %xmm6
	por	%xmm7, %xmm6
	pand	%xmm4, %xmm1
	pandn	%xmm2, %xmm4
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm5, %xmm2
	movdqa	%xmm9, %xmm4
	pand	%xmm2, %xmm1
	pandn	%xmm5, %xmm2
	por	%xmm2, %xmm1
	pcmpgtd	%xmm1, %xmm4
	movdqa	%xmm4, %xmm2
	pandn	%xmm1, %xmm4
	movdqa	%xmm6, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm9, %xmm2
	por	%xmm4, %xmm2
	pand	%xmm1, %xmm0
	pandn	%xmm6, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm5, %xmm1
	pand	%xmm1, %xmm5
	pandn	%xmm0, %xmm1
	movdqa	%xmm9, %xmm0
	por	%xmm1, %xmm5
	pcmpgtd	%xmm5, %xmm0
	pand	%xmm0, %xmm5
	pandn	%xmm9, %xmm0
	por	%xmm5, %xmm0
	je	L160
	movdqa	32(%rdi), %xmm9
	cmpl	$3, %r8d
	movdqa	%xmm9, %xmm10
	punpckhbw	%xmm8, %xmm9
	movdqa	%xmm9, %xmm7
	punpckhwd	%xmm3, %xmm9
	punpcklbw	%xmm8, %xmm10
	movdqa	%xmm10, %xmm6
	punpckhwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm5
	punpcklwd	%xmm3, %xmm6
	pcmpgtd	%xmm6, %xmm5
	punpcklwd	%xmm3, %xmm7
	movdqa	%xmm5, %xmm1
	movdqa	%xmm5, %xmm4
	pandn	%xmm6, %xmm4
	pand	%xmm10, %xmm1
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm5, %xmm6
	pandn	%xmm10, %xmm5
	por	%xmm6, %xmm5
	pand	%xmm4, %xmm1
	pandn	%xmm2, %xmm4
	por	%xmm4, %xmm1
	movdqa	%xmm7, %xmm4
	pcmpgtd	%xmm1, %xmm4
	movdqa	%xmm4, %xmm2
	pandn	%xmm1, %xmm4
	movdqa	%xmm4, %xmm1
	pand	%xmm7, %xmm2
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm9, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm9, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm5, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm7, %xmm1
	pand	%xmm1, %xmm7
	pandn	%xmm0, %xmm1
	por	%xmm1, %xmm7
	movdqa	%xmm7, %xmm0
	pcmpgtd	%xmm9, %xmm0
	pand	%xmm0, %xmm9
	pandn	%xmm7, %xmm0
	por	%xmm9, %xmm0
	je	L160
	movdqa	48(%rdi), %xmm9
	cmpl	$4, %r8d
	movdqa	%xmm9, %xmm10
	punpckhbw	%xmm8, %xmm9
	movdqa	%xmm9, %xmm7
	punpckhwd	%xmm3, %xmm9
	punpcklbw	%xmm8, %xmm10
	movdqa	%xmm10, %xmm6
	punpckhwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm5
	punpcklwd	%xmm3, %xmm6
	pcmpgtd	%xmm6, %xmm5
	punpcklwd	%xmm3, %xmm7
	movdqa	%xmm5, %xmm1
	movdqa	%xmm5, %xmm4
	pandn	%xmm6, %xmm4
	pand	%xmm10, %xmm1
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm5, %xmm6
	pandn	%xmm10, %xmm5
	por	%xmm6, %xmm5
	pand	%xmm4, %xmm1
	pandn	%xmm2, %xmm4
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm7, %xmm4
	pand	%xmm4, %xmm1
	pandn	%xmm7, %xmm4
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm9, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm9, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm5, %xmm1
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm7, %xmm1
	pand	%xmm1, %xmm7
	pandn	%xmm0, %xmm1
	por	%xmm1, %xmm7
	movdqa	%xmm7, %xmm0
	pcmpgtd	%xmm9, %xmm0
	pand	%xmm0, %xmm9
	pandn	%xmm7, %xmm0
	por	%xmm9, %xmm0
	je	L160
	movdqa	64(%rdi), %xmm9
	cmpl	$5, %r8d
	movdqa	%xmm9, %xmm10
	punpckhbw	%xmm8, %xmm9
	movdqa	%xmm9, %xmm7
	punpckhwd	%xmm3, %xmm9
	punpcklbw	%xmm8, %xmm10
	movdqa	%xmm10, %xmm6
	punpckhwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm5
	punpcklwd	%xmm3, %xmm6
	pcmpgtd	%xmm6, %xmm5
	punpcklwd	%xmm3, %xmm7
	movdqa	%xmm5, %xmm1
	movdqa	%xmm5, %xmm4
	pandn	%xmm6, %xmm4
	pand	%xmm10, %xmm1
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm5, %xmm6
	pandn	%xmm10, %xmm5
	pand	%xmm4, %xmm1
	pandn	%xmm2, %xmm4
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm7, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm7, %xmm2
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm9, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm9, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm5, %xmm1
	por	%xmm6, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm0, %xmm4
	pand	%xmm4, %xmm0
	pandn	%xmm1, %xmm4
	movdqa	%xmm4, %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm7, %xmm0
	pand	%xmm0, %xmm7
	pandn	%xmm1, %xmm0
	por	%xmm7, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm9, %xmm0
	pand	%xmm0, %xmm9
	pandn	%xmm1, %xmm0
	por	%xmm9, %xmm0
	je	L160
	movdqa	80(%rdi), %xmm9
	cmpl	$6, %r8d
	movdqa	%xmm9, %xmm10
	punpckhbw	%xmm8, %xmm9
	movdqa	%xmm9, %xmm7
	punpckhwd	%xmm3, %xmm9
	punpcklbw	%xmm8, %xmm10
	movdqa	%xmm10, %xmm6
	punpckhwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm5
	punpcklwd	%xmm3, %xmm6
	pcmpgtd	%xmm6, %xmm5
	punpcklwd	%xmm3, %xmm7
	movdqa	%xmm5, %xmm1
	movdqa	%xmm5, %xmm4
	pandn	%xmm6, %xmm4
	pand	%xmm10, %xmm1
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm5, %xmm6
	pandn	%xmm10, %xmm5
	pand	%xmm4, %xmm1
	pandn	%xmm2, %xmm4
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm7, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm7, %xmm2
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm9, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm9, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm5, %xmm1
	por	%xmm6, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm0, %xmm4
	pand	%xmm4, %xmm0
	pandn	%xmm1, %xmm4
	movdqa	%xmm4, %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm7, %xmm0
	pand	%xmm0, %xmm7
	pandn	%xmm1, %xmm0
	por	%xmm7, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm9, %xmm0
	pand	%xmm0, %xmm9
	pandn	%xmm1, %xmm0
	por	%xmm9, %xmm0
	je	L160
	movdqa	96(%rdi), %xmm9
	cmpl	$7, %r8d
	movdqa	%xmm9, %xmm10
	punpckhbw	%xmm8, %xmm9
	movdqa	%xmm9, %xmm7
	punpckhwd	%xmm3, %xmm9
	punpcklbw	%xmm8, %xmm10
	movdqa	%xmm10, %xmm6
	punpckhwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm5
	punpcklwd	%xmm3, %xmm6
	pcmpgtd	%xmm6, %xmm5
	punpcklwd	%xmm3, %xmm7
	movdqa	%xmm5, %xmm1
	movdqa	%xmm5, %xmm4
	pandn	%xmm6, %xmm4
	pand	%xmm10, %xmm1
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm5, %xmm6
	pandn	%xmm10, %xmm5
	pand	%xmm4, %xmm1
	pandn	%xmm2, %xmm4
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm7, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm7, %xmm2
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm9, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm9, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm5, %xmm1
	por	%xmm6, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm0, %xmm4
	pand	%xmm4, %xmm0
	pandn	%xmm1, %xmm4
	movdqa	%xmm4, %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm7, %xmm0
	pand	%xmm0, %xmm7
	pandn	%xmm1, %xmm0
	por	%xmm7, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm9, %xmm0
	pand	%xmm0, %xmm9
	pandn	%xmm1, %xmm0
	por	%xmm9, %xmm0
	je	L160
	movdqa	112(%rdi), %xmm9
	cmpl	$8, %r8d
	movdqa	%xmm9, %xmm10
	punpckhbw	%xmm8, %xmm9
	movdqa	%xmm9, %xmm7
	punpckhwd	%xmm3, %xmm9
	punpcklbw	%xmm8, %xmm10
	movdqa	%xmm10, %xmm6
	punpckhwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm5
	punpcklwd	%xmm3, %xmm6
	pcmpgtd	%xmm6, %xmm5
	punpcklwd	%xmm3, %xmm7
	movdqa	%xmm5, %xmm1
	movdqa	%xmm5, %xmm4
	pandn	%xmm6, %xmm4
	pand	%xmm10, %xmm1
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm5, %xmm6
	pandn	%xmm10, %xmm5
	pand	%xmm4, %xmm1
	pandn	%xmm2, %xmm4
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm7, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm7, %xmm2
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm9, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm9, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm5, %xmm1
	por	%xmm6, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm0, %xmm4
	pand	%xmm4, %xmm0
	pandn	%xmm1, %xmm4
	movdqa	%xmm4, %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm7, %xmm0
	pand	%xmm0, %xmm7
	pandn	%xmm1, %xmm0
	por	%xmm7, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm9, %xmm0
	pand	%xmm0, %xmm9
	pandn	%xmm1, %xmm0
	por	%xmm9, %xmm0
	je	L160
	movdqa	128(%rdi), %xmm9
	cmpl	$9, %r8d
	movdqa	%xmm9, %xmm10
	punpckhbw	%xmm8, %xmm9
	movdqa	%xmm9, %xmm7
	punpckhwd	%xmm3, %xmm9
	punpcklbw	%xmm8, %xmm10
	movdqa	%xmm10, %xmm6
	punpckhwd	%xmm3, %xmm10
	movdqa	%xmm10, %xmm5
	punpcklwd	%xmm3, %xmm6
	pcmpgtd	%xmm6, %xmm5
	punpcklwd	%xmm3, %xmm7
	movdqa	%xmm5, %xmm1
	movdqa	%xmm5, %xmm4
	pandn	%xmm6, %xmm4
	pand	%xmm10, %xmm1
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm5, %xmm6
	pandn	%xmm10, %xmm5
	pand	%xmm4, %xmm1
	pandn	%xmm2, %xmm4
	por	%xmm4, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm7, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm7, %xmm2
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm9, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm9, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm5, %xmm1
	por	%xmm6, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm0, %xmm4
	pand	%xmm4, %xmm0
	pandn	%xmm1, %xmm4
	movdqa	%xmm4, %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm7, %xmm0
	pand	%xmm0, %xmm7
	pandn	%xmm1, %xmm0
	por	%xmm7, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm9, %xmm0
	pand	%xmm0, %xmm9
	pandn	%xmm1, %xmm0
	por	%xmm9, %xmm0
	je	L160
	movdqa	144(%rdi), %xmm1
	cmpl	$10, %r8d
	movdqa	%xmm1, %xmm7
	punpckhbw	%xmm8, %xmm1
	movdqa	%xmm1, %xmm6
	punpcklbw	%xmm8, %xmm7
	movdqa	%xmm7, %xmm5
	punpckhwd	%xmm3, %xmm7
	movdqa	%xmm7, %xmm4
	punpcklwd	%xmm3, %xmm5
	pcmpgtd	%xmm5, %xmm4
	movdqa	%xmm1, %xmm8
	punpcklwd	%xmm3, %xmm6
	punpckhwd	%xmm3, %xmm8
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
	por	%xmm6, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm8, %xmm0
	pand	%xmm0, %xmm8
	pandn	%xmm1, %xmm0
	por	%xmm8, %xmm0
	je	L160
	pxor	%xmm4, %xmm4
	pxor	%xmm9, %xmm9
	cmpl	$11, %r8d
	movdqa	160(%rdi), %xmm8
	movdqa	%xmm8, %xmm10
	punpckhbw	%xmm9, %xmm8
	movdqa	%xmm8, %xmm7
	punpckhwd	%xmm4, %xmm8
	punpcklbw	%xmm9, %xmm10
	movdqa	%xmm10, %xmm6
	punpckhwd	%xmm4, %xmm10
	movdqa	%xmm10, %xmm5
	punpcklwd	%xmm4, %xmm6
	pcmpgtd	%xmm6, %xmm5
	punpcklwd	%xmm4, %xmm7
	movdqa	%xmm5, %xmm1
	movdqa	%xmm5, %xmm3
	pandn	%xmm6, %xmm3
	pand	%xmm10, %xmm1
	por	%xmm3, %xmm1
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pand	%xmm5, %xmm6
	pandn	%xmm10, %xmm5
	pand	%xmm3, %xmm1
	pandn	%xmm2, %xmm3
	por	%xmm3, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm7, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm7, %xmm2
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm8, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm8, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm5, %xmm1
	por	%xmm6, %xmm1
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm0, %xmm3
	pand	%xmm3, %xmm0
	pandn	%xmm1, %xmm3
	movdqa	%xmm3, %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm7, %xmm0
	pand	%xmm0, %xmm7
	pandn	%xmm1, %xmm0
	por	%xmm7, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm8, %xmm0
	pand	%xmm0, %xmm8
	pandn	%xmm1, %xmm0
	por	%xmm8, %xmm0
	je	L160
	movdqa	176(%rdi), %xmm8
	cmpl	$12, %r8d
	movdqa	%xmm8, %xmm10
	punpckhbw	%xmm9, %xmm8
	movdqa	%xmm8, %xmm7
	punpckhwd	%xmm4, %xmm8
	punpcklbw	%xmm9, %xmm10
	movdqa	%xmm10, %xmm6
	punpckhwd	%xmm4, %xmm10
	movdqa	%xmm10, %xmm5
	punpcklwd	%xmm4, %xmm6
	pcmpgtd	%xmm6, %xmm5
	punpcklwd	%xmm4, %xmm7
	movdqa	%xmm5, %xmm1
	movdqa	%xmm5, %xmm3
	pandn	%xmm6, %xmm3
	pand	%xmm10, %xmm1
	por	%xmm3, %xmm1
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pand	%xmm5, %xmm6
	pandn	%xmm10, %xmm5
	pand	%xmm3, %xmm1
	pandn	%xmm2, %xmm3
	por	%xmm3, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm7, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm7, %xmm2
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm8, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm8, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm5, %xmm1
	por	%xmm6, %xmm1
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm0, %xmm3
	pand	%xmm3, %xmm0
	pandn	%xmm1, %xmm3
	movdqa	%xmm3, %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm7, %xmm0
	pand	%xmm0, %xmm7
	pandn	%xmm1, %xmm0
	por	%xmm7, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm8, %xmm0
	pand	%xmm0, %xmm8
	pandn	%xmm1, %xmm0
	por	%xmm8, %xmm0
	je	L160
	movdqa	192(%rdi), %xmm8
	cmpl	$13, %r8d
	movdqa	%xmm8, %xmm10
	punpckhbw	%xmm9, %xmm8
	movdqa	%xmm8, %xmm7
	punpckhwd	%xmm4, %xmm8
	punpcklbw	%xmm9, %xmm10
	movdqa	%xmm10, %xmm6
	punpckhwd	%xmm4, %xmm10
	movdqa	%xmm10, %xmm5
	punpcklwd	%xmm4, %xmm6
	pcmpgtd	%xmm6, %xmm5
	punpcklwd	%xmm4, %xmm7
	movdqa	%xmm5, %xmm1
	movdqa	%xmm5, %xmm3
	pandn	%xmm6, %xmm3
	pand	%xmm10, %xmm1
	por	%xmm3, %xmm1
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pand	%xmm5, %xmm6
	pandn	%xmm10, %xmm5
	pand	%xmm3, %xmm1
	pandn	%xmm2, %xmm3
	por	%xmm3, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm7, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm7, %xmm2
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm8, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm8, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm5, %xmm1
	por	%xmm6, %xmm1
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm0, %xmm3
	pand	%xmm3, %xmm0
	pandn	%xmm1, %xmm3
	movdqa	%xmm3, %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm7, %xmm0
	pand	%xmm0, %xmm7
	pandn	%xmm1, %xmm0
	por	%xmm7, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm8, %xmm0
	pand	%xmm0, %xmm8
	pandn	%xmm1, %xmm0
	por	%xmm8, %xmm0
	je	L160
	movdqa	208(%rdi), %xmm8
	cmpl	$14, %r8d
	movdqa	%xmm8, %xmm10
	punpckhbw	%xmm9, %xmm8
	movdqa	%xmm8, %xmm7
	punpckhwd	%xmm4, %xmm8
	punpcklbw	%xmm9, %xmm10
	movdqa	%xmm10, %xmm6
	punpckhwd	%xmm4, %xmm10
	movdqa	%xmm10, %xmm5
	punpcklwd	%xmm4, %xmm6
	pcmpgtd	%xmm6, %xmm5
	punpcklwd	%xmm4, %xmm7
	movdqa	%xmm5, %xmm1
	movdqa	%xmm5, %xmm3
	pandn	%xmm6, %xmm3
	pand	%xmm10, %xmm1
	por	%xmm3, %xmm1
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pand	%xmm5, %xmm6
	pandn	%xmm10, %xmm5
	pand	%xmm3, %xmm1
	pandn	%xmm2, %xmm3
	por	%xmm3, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm7, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm7, %xmm2
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm8, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm8, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm5, %xmm1
	por	%xmm6, %xmm1
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm0, %xmm3
	pand	%xmm3, %xmm0
	pandn	%xmm1, %xmm3
	movdqa	%xmm3, %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm7, %xmm0
	pand	%xmm0, %xmm7
	pandn	%xmm1, %xmm0
	por	%xmm7, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm8, %xmm0
	pand	%xmm0, %xmm8
	pandn	%xmm1, %xmm0
	por	%xmm8, %xmm0
	je	L160
	movdqa	224(%rdi), %xmm8
	cmpl	$15, %r8d
	movdqa	%xmm8, %xmm10
	punpckhbw	%xmm9, %xmm8
	movdqa	%xmm8, %xmm7
	punpckhwd	%xmm4, %xmm8
	punpcklbw	%xmm9, %xmm10
	movdqa	%xmm10, %xmm6
	punpckhwd	%xmm4, %xmm10
	movdqa	%xmm10, %xmm5
	punpcklwd	%xmm4, %xmm6
	pcmpgtd	%xmm6, %xmm5
	punpcklwd	%xmm4, %xmm7
	movdqa	%xmm5, %xmm1
	movdqa	%xmm5, %xmm3
	pandn	%xmm6, %xmm3
	pand	%xmm10, %xmm1
	por	%xmm3, %xmm1
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pand	%xmm5, %xmm6
	pandn	%xmm10, %xmm5
	pand	%xmm3, %xmm1
	pandn	%xmm2, %xmm3
	por	%xmm3, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm7, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm7, %xmm2
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm8, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm8, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm5, %xmm1
	por	%xmm6, %xmm1
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm0, %xmm3
	pand	%xmm3, %xmm0
	pandn	%xmm1, %xmm3
	movdqa	%xmm3, %xmm1
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm7, %xmm0
	pand	%xmm0, %xmm7
	pandn	%xmm1, %xmm0
	por	%xmm7, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm8, %xmm0
	pand	%xmm0, %xmm8
	pandn	%xmm1, %xmm0
	por	%xmm8, %xmm0
	je	L160
	movdqa	240(%rdi), %xmm7
	movdqa	%xmm7, %xmm8
	punpckhbw	%xmm9, %xmm7
	movdqa	%xmm7, %xmm6
	punpckhwd	%xmm4, %xmm7
	punpcklbw	%xmm9, %xmm8
	movdqa	%xmm8, %xmm5
	punpcklwd	%xmm4, %xmm6
	punpckhwd	%xmm4, %xmm8
	punpcklwd	%xmm4, %xmm5
	movdqa	%xmm8, %xmm4
	pcmpgtd	%xmm5, %xmm4
	movdqa	%xmm4, %xmm1
	movdqa	%xmm4, %xmm3
	pandn	%xmm5, %xmm3
	pand	%xmm8, %xmm1
	por	%xmm3, %xmm1
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pand	%xmm4, %xmm5
	pandn	%xmm8, %xmm4
	pand	%xmm3, %xmm1
	pandn	%xmm2, %xmm3
	por	%xmm3, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm6, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm6, %xmm2
	por	%xmm2, %xmm1
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm7, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm7, %xmm2
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
	por	%xmm6, %xmm0
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm7, %xmm0
	pand	%xmm0, %xmm7
	pandn	%xmm1, %xmm0
	por	%xmm7, %xmm0
L160:
	movdqa	%xmm0, %xmm3
	movl	%esi, %edi
	psrldq	$8, %xmm3
	andl	$-16, %edi
	movdqa	%xmm3, %xmm1
	addl	%edi, %eax
	cmpl	%esi, %edi
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
	movd	%xmm0, %edx
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
	movd	%xmm1, %ecx
	je	L161
L157:
	cltq
	.align 4,0x90
L162:
	movzbl	37708(%rbx,%rax), %esi
	cmpl	%esi, %ecx
	cmovl	%esi, %ecx
	cmpl	%esi, %edx
	cmovg	%esi, %edx
	addq	$1, %rax
	cmpl	%eax, %ebp
	jg	L162
L161:
	cmpl	$17, %ecx
	jle	L163
	movl	$3004, %edi
	movl	%ecx, 56(%rsp)
	movl	%edx, 48(%rsp)
	call	_BZ2_bz__AssertH__fail
	movl	56(%rsp), %ecx
	movl	48(%rsp), %edx
L163:
	testl	%edx, %edx
	je	L827
L164:
	leaq	37708(%rbx), %rsi
	movq	%r14, %rdi
	movl	%ebp, %r8d
	call	_BZ2_hbAssignCodes
	addq	$1032, %r14
	addq	$258, %rbx
	cmpq	24(%rsp), %rbx
	jne	L156
	movq	32(%rsp), %rbp
	movq	%r15, %rbx
	movq	$0, 208(%rsp)
	leaq	208(%rsp), %r14
	movq	$0, 216(%rsp)
	leaq	16(%r14), %rax
	movq	%r14, %rdi
	movq	%r14, %rsi
	.align 4,0x90
L183:
	cmpb	$0, (%r12)
	je	L167
	movb	$1, (%rsi)
L167:
	cmpb	$0, 1(%r12)
	je	L168
	movb	$1, (%rsi)
L168:
	cmpb	$0, 2(%r12)
	je	L169
	movb	$1, (%rsi)
L169:
	cmpb	$0, 3(%r12)
	je	L170
	movb	$1, (%rsi)
L170:
	cmpb	$0, 4(%r12)
	je	L171
	movb	$1, (%rsi)
L171:
	cmpb	$0, 5(%r12)
	je	L172
	movb	$1, (%rsi)
L172:
	cmpb	$0, 6(%r12)
	je	L173
	movb	$1, (%rsi)
L173:
	cmpb	$0, 7(%r12)
	je	L174
	movb	$1, (%rsi)
L174:
	cmpb	$0, 8(%r12)
	je	L175
	movb	$1, (%rsi)
L175:
	cmpb	$0, 9(%r12)
	je	L176
	movb	$1, (%rsi)
L176:
	cmpb	$0, 10(%r12)
	je	L177
	movb	$1, (%rsi)
L177:
	cmpb	$0, 11(%r12)
	je	L178
	movb	$1, (%rsi)
L178:
	cmpb	$0, 12(%r12)
	je	L179
	movb	$1, (%rsi)
L179:
	cmpb	$0, 13(%r12)
	je	L180
	movb	$1, (%rsi)
L180:
	cmpb	$0, 14(%r12)
	je	L181
	movb	$1, (%rsi)
L181:
	cmpb	$0, 15(%r12)
	je	L182
	movb	$1, (%rsi)
L182:
	addq	$1, %rsi
	addq	$16, %r12
	cmpq	%rsi, %rax
	jne	L183
	movl	116(%rbx), %r15d
	movl	$31, %r9d
	movl	$1, %r10d
	movl	644(%rbx), %eax
	movl	%r15d, %edx
	.align 4,0x90
L191:
	cmpb	$0, (%rdi)
	jne	L184
	cmpl	$7, %eax
	jle	L186
	movl	640(%rbx), %ecx
	.align 4,0x90
L190:
	movq	80(%rbx), %rax
	shrl	$24, %ecx
	movslq	%edx, %rdx
	movb	%cl, (%rax,%rdx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %ecx
	leal	1(%rax), %edx
	movl	644(%rbx), %eax
	sall	$8, %ecx
	movl	%edx, 116(%rbx)
	movl	%ecx, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L190
L186:
	addl	$1, %eax
	movl	%eax, 644(%rbx)
L189:
	addq	$1, %rdi
	cmpq	%rsi, %rdi
	jne	L191
	leaq	144(%rbx), %r12
	xorl	%r9d, %r9d
	movl	$1, %r10d
	jmp	L201
	.align 4,0x90
L192:
	addq	$1, %r9
	cmpq	$16, %r9
	je	L828
L201:
	cmpb	$0, (%r14,%r9)
	je	L192
	movq	96(%rsp), %rdi
	movq	%r9, %r8
	salq	$4, %r8
	movl	644(%rbx), %eax
	addq	%r8, %rdi
	addq	%r12, %r8
	cmpb	$0, (%rdi)
	jne	L193
	.align 4,0x90
L829:
	cmpl	$7, %eax
	jle	L195
	movl	640(%rbx), %ecx
	.align 4,0x90
L199:
	movq	80(%rbx), %rax
	shrl	$24, %ecx
	movslq	%edx, %rdx
	movb	%cl, (%rax,%rdx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %ecx
	leal	1(%rax), %edx
	movl	644(%rbx), %eax
	sall	$8, %ecx
	movl	%edx, 116(%rbx)
	movl	%ecx, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L199
L195:
	addl	$1, %eax
	movl	%eax, 644(%rbx)
L198:
	addq	$1, %rdi
	cmpq	%r8, %rdi
	je	L192
	cmpb	$0, (%rdi)
	je	L829
L193:
	cmpl	$7, %eax
	movl	640(%rbx), %esi
	jle	L196
	.align 4,0x90
L197:
	movq	80(%rbx), %rax
	shrl	$24, %esi
	movslq	%edx, %rdx
	movb	%sil, (%rax,%rdx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %esi
	leal	1(%rax), %edx
	movl	644(%rbx), %eax
	sall	$8, %esi
	movl	%edx, 116(%rbx)
	movl	%esi, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L197
L196:
	movl	$31, %ecx
	movl	%r10d, %r11d
	subl	%eax, %ecx
	addl	$1, %eax
	sall	%cl, %r11d
	movl	%eax, 644(%rbx)
	orl	%r11d, %esi
	movl	%esi, 640(%rbx)
	jmp	L198
L184:
	cmpl	$7, %eax
	movl	640(%rbx), %r8d
	jle	L187
	.align 4,0x90
L188:
	movq	80(%rbx), %rax
	shrl	$24, %r8d
	movslq	%edx, %rdx
	movb	%r8b, (%rax,%rdx)
	movl	116(%rbx), %eax
	movl	640(%rbx), %r8d
	leal	1(%rax), %edx
	movl	644(%rbx), %eax
	sall	$8, %r8d
	movl	%edx, 116(%rbx)
	movl	%r8d, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L188
L187:
	movl	%r9d, %ecx
	movl	%r10d, %r11d
	subl	%eax, %ecx
	addl	$1, %eax
	sall	%cl, %r11d
	movl	%eax, 644(%rbx)
	orl	%r11d, %r8d
	movl	%r8d, 640(%rbx)
	jmp	L189
L827:
	movl	$3005, %edi
	movl	%ecx, 56(%rsp)
	movl	%edx, 48(%rsp)
	call	_BZ2_bz__AssertH__fail
	movl	56(%rsp), %ecx
	movl	48(%rsp), %edx
	jmp	L164
L828:
	cmpl	$2, 656(%rbx)
	jle	L202
	movq	___stderrp@GOTPCREL(%rip), %rax
	subl	%r15d, %edx
	leaq	lC29(%rip), %rsi
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	movl	116(%rbx), %edx
L202:
	movl	644(%rbx), %eax
	movl	%edx, %esi
	movl	640(%rbx), %edi
	cmpl	$7, %eax
	jle	L203
L204:
	movq	80(%rbx), %rax
	shrl	$24, %edi
	movslq	%esi, %rsi
	movb	%dil, (%rax,%rsi)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edi
	leal	1(%rax), %esi
	movl	644(%rbx), %eax
	sall	$8, %edi
	movl	%esi, 116(%rbx)
	movl	%edi, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L204
L203:
	movl	104(%rsp), %r14d
	movl	$29, %ecx
	subl	%eax, %ecx
	addl	$3, %eax
	movl	%eax, 644(%rbx)
	sall	%cl, %r14d
	orl	%r14d, %edi
	cmpl	$7, %eax
	movl	%edi, 640(%rbx)
	jle	L205
L206:
	movq	80(%rbx), %rax
	shrl	$24, %edi
	movslq	%esi, %rsi
	movb	%dil, (%rax,%rsi)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edi
	leal	1(%rax), %esi
	movl	644(%rbx), %eax
	sall	$8, %edi
	movl	%esi, 116(%rbx)
	movl	%edi, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L206
L205:
	movl	16(%rsp), %r14d
	movl	$17, %ecx
	subl	%eax, %ecx
	addl	$15, %eax
	movl	%eax, 644(%rbx)
	movl	%r14d, %r10d
	sall	%cl, %r10d
	orl	%r10d, %edi
	testl	%r14d, %r14d
	movl	%edi, 640(%rbx)
	je	L207
	leal	-1(%r14), %ecx
	movl	$31, %r11d
	movl	$1, %r12d
	leaq	19706(%rbx), %r10
	leaq	19707(%rbx,%rcx), %r14
L208:
	movzbl	(%r10), %r9d
	testb	%r9b, %r9b
	je	L210
	movl	640(%rbx), %edi
	xorl	%r8d, %r8d
	.align 4,0x90
L214:
	cmpl	$7, %eax
	jle	L211
	.align 4,0x90
L209:
	movq	80(%rbx), %rax
	shrl	$24, %edi
	movslq	%esi, %rsi
	movb	%dil, (%rax,%rsi)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edi
	leal	1(%rax), %esi
	movl	644(%rbx), %eax
	sall	$8, %edi
	movl	%esi, 116(%rbx)
	movl	%edi, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L209
	movzbl	(%r10), %r9d
L211:
	movl	%r11d, %ecx
	movl	%r12d, %r15d
	addl	$1, %r8d
	subl	%eax, %ecx
	addl	$1, %eax
	sall	%cl, %r15d
	movzbl	%r9b, %ecx
	movl	%eax, 644(%rbx)
	orl	%r15d, %edi
	cmpl	%ecx, %r8d
	movl	%edi, 640(%rbx)
	jl	L214
L210:
	cmpl	$7, %eax
	jle	L212
	movl	640(%rbx), %ecx
	.align 4,0x90
L213:
	movq	80(%rbx), %rax
	shrl	$24, %ecx
	movslq	%esi, %rsi
	movb	%cl, (%rax,%rsi)
	movl	116(%rbx), %eax
	movl	640(%rbx), %ecx
	leal	1(%rax), %esi
	movl	644(%rbx), %eax
	sall	$8, %ecx
	movl	%esi, 116(%rbx)
	movl	%ecx, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L213
L212:
	addq	$1, %r10
	addl	$1, %eax
	cmpq	%r14, %r10
	movl	%eax, 644(%rbx)
	jne	L208
L207:
	cmpl	$2, 656(%rbx)
	jle	L215
	movq	___stderrp@GOTPCREL(%rip), %rax
	subl	%edx, %esi
	movl	%esi, %edx
	leaq	lC30(%rip), %rsi
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	movl	116(%rbx), %esi
	movl	644(%rbx), %eax
L215:
	movq	160(%rsp), %r15
	movl	%esi, %r12d
	movl	%r13d, 24(%rsp)
	movl	$30, %r10d
	movl	$2, %r14d
L230:
	cmpl	$7, %eax
	movzbl	(%r15), %edi
	movl	640(%rbx), %edx
	jle	L216
	.align 4,0x90
L217:
	movq	80(%rbx), %rax
	shrl	$24, %edx
	movslq	%r12d, %r12
	movb	%dl, (%rax,%r12)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edx
	leal	1(%rax), %r12d
	movl	644(%rbx), %eax
	sall	$8, %edx
	movl	%r12d, 116(%rbx)
	movl	%edx, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L217
L216:
	movl	$27, %ecx
	movl	%edi, %r11d
	subl	%eax, %ecx
	addl	$5, %eax
	sall	%cl, %r11d
	movl	%eax, 644(%rbx)
	orl	%r11d, %edx
	movl	%edx, 640(%rbx)
	movl	44(%rsp), %edx
	testl	%edx, %edx
	jle	L218
	movq	88(%rsp), %rcx
	movq	%r15, %r9
	leaq	(%r15,%rcx), %r13
	.align 4,0x90
L219:
	movzbl	(%r9), %r8d
	cmpl	%r8d, %edi
	jge	L221
	movl	640(%rbx), %edx
	.align 4,0x90
L229:
	cmpl	$7, %eax
	jle	L222
	.align 4,0x90
L220:
	movq	80(%rbx), %rax
	shrl	$24, %edx
	movslq	%r12d, %r12
	movb	%dl, (%rax,%r12)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edx
	leal	1(%rax), %r12d
	movl	644(%rbx), %eax
	sall	$8, %edx
	movl	%r12d, 116(%rbx)
	movl	%edx, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L220
	movzbl	(%r9), %r8d
L222:
	movl	%r10d, %ecx
	movl	%r14d, %r11d
	addl	$1, %edi
	subl	%eax, %ecx
	addl	$2, %eax
	sall	%cl, %r11d
	movl	%eax, 644(%rbx)
	orl	%r11d, %edx
	cmpl	%r8d, %edi
	movl	%edx, 640(%rbx)
	jl	L229
L221:
	cmpl	%r8d, %edi
	jle	L223
	movl	640(%rbx), %edx
	.align 4,0x90
L224:
	cmpl	$7, %eax
	jle	L226
	.align 4,0x90
L225:
	movq	80(%rbx), %rax
	shrl	$24, %edx
	movslq	%r12d, %r12
	movb	%dl, (%rax,%r12)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edx
	leal	1(%rax), %r12d
	movl	644(%rbx), %eax
	sall	$8, %edx
	movl	%r12d, 116(%rbx)
	movl	%edx, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L225
	movzbl	(%r9), %r8d
L226:
	movl	%r10d, %ecx
	movl	$3, %r11d
	subl	$1, %edi
	subl	%eax, %ecx
	addl	$2, %eax
	sall	%cl, %r11d
	movl	%eax, 644(%rbx)
	orl	%r11d, %edx
	cmpl	%r8d, %edi
	movl	%edx, 640(%rbx)
	jg	L224
L223:
	cmpl	$7, %eax
	jle	L227
	movl	640(%rbx), %edx
	.align 4,0x90
L228:
	movq	80(%rbx), %rax
	shrl	$24, %edx
	movslq	%r12d, %r12
	movb	%dl, (%rax,%r12)
	movl	116(%rbx), %eax
	movl	640(%rbx), %edx
	leal	1(%rax), %r12d
	movl	644(%rbx), %eax
	sall	$8, %edx
	movl	%r12d, 116(%rbx)
	movl	%edx, 640(%rbx)
	subl	$8, %eax
	cmpl	$7, %eax
	movl	%eax, 644(%rbx)
	jg	L228
L227:
	addq	$1, %r9
	addl	$1, %eax
	cmpq	%r13, %r9
	movl	%eax, 644(%rbx)
	jne	L219
L218:
	addq	$258, %r15
	cmpq	%r15, 8(%rsp)
	jne	L230
	cmpl	$2, 656(%rbx)
	movl	24(%rsp), %r13d
	jle	L231
	movq	___stderrp@GOTPCREL(%rip), %rax
	movl	%r12d, %edx
	subl	%esi, %edx
	leaq	lC31(%rip), %rsi
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	movl	116(%rbx), %r12d
L231:
	movl	668(%rbx), %eax
	testl	%eax, %eax
	jle	L436
	leaq	2(%rbp), %rdi
	movl	$1, %r14d
	movl	%r12d, 24(%rsp)
	movl	192(%rsp), %r15d
	movq	%rdi, 8(%rsp)
L342:
	leal	49(%r15), %r12d
	leal	-1(%rax), %edx
	cmpl	%eax, %r12d
	movzbl	1703(%rbx,%r14), %eax
	cmovge	%edx, %r12d
	cmpl	%eax, %r13d
	jle	L830
L234:
	cmpl	$6, %r13d
	jne	L235
	movl	%r12d, %eax
	subl	%r15d, %eax
	cmpl	$49, %eax
	je	L831
L235:
	cmpl	%r15d, %r12d
	jl	L336
	movl	%r12d, %ecx
	movslq	%r15d, %rdi
	movl	644(%rbx), %edx
	movl	$32, %r9d
	leaq	0(%rbp,%rdi,2), %rsi
	subl	%r15d, %ecx
	movl	640(%rbx), %eax
	addq	%rdi, %rcx
	movq	8(%rsp), %rdi
	leaq	(%rdi,%rcx,2), %r11
	.align 4,0x90
L339:
	movzbl	1703(%rbx,%r14), %edi
	movzwl	(%rsi), %r8d
	movq	%rdi, %rcx
	salq	$7, %rcx
	addq	%rdi, %rcx
	addq	%rcx, %rcx
	leaq	9812(%r8,%rcx), %rdi
	addq	%rbx, %rcx
	cmpl	$7, %edx
	movl	8(%rbx,%rdi,4), %edi
	movzbl	37708(%r8,%rcx), %r8d
	jle	L337
	movl	116(%rbx), %ecx
	.align 4,0x90
L338:
	movq	80(%rbx), %rdx
	shrl	$24, %eax
	movslq	%ecx, %rcx
	movb	%al, (%rdx,%rcx)
	movl	116(%rbx), %eax
	movl	644(%rbx), %edx
	leal	1(%rax), %ecx
	movl	640(%rbx), %eax
	subl	$8, %edx
	movl	%ecx, 116(%rbx)
	movl	%edx, 644(%rbx)
	sall	$8, %eax
	cmpl	$7, %edx
	movl	%eax, 640(%rbx)
	jg	L338
L337:
	movl	%r9d, %ecx
	addq	$2, %rsi
	subl	%edx, %ecx
	addl	%r8d, %edx
	subl	%r8d, %ecx
	movl	%edx, 644(%rbx)
	sall	%cl, %edi
	orl	%edi, %eax
	cmpq	%r11, %rsi
	movl	%eax, 640(%rbx)
	jne	L339
	jmp	L336
L830:
	movl	$3006, %edi
	call	_BZ2_bz__AssertH__fail
	jmp	L234
L82:
	cmpl	$5, %edx
	movb	$15, 4(%r15)
	jne	L832
L394:
	movl	$5, %eax
	jmp	L72
L387:
	xorl	%r12d, %r12d
	jmp	L67
L415:
	movl	%ecx, %edx
	movl	%esi, %ecx
	movl	%edx, %esi
	movl	$1, %edx
	jmp	L154
L84:
	cmpl	$6, %edx
	movb	$15, 5(%r15)
	jne	L833
L395:
	movl	$6, %eax
	jmp	L72
L820:
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	jmp	L377
L816:
	movq	___stderrp@GOTPCREL(%rip), %rax
	leaq	lC27(%rip), %rsi
	movl	32(%rsp), %ecx
	movl	56(%rsp), %edx
	movq	(%rax), %rdi
	xorl	%eax, %eax
	sarl	$3, %ecx
	call	_fprintf
	movq	168(%rsp), %rcx
L147:
	movl	(%rcx), %edx
	leaq	lC28(%rip), %rsi
	movq	%rcx, 8(%rsp)
	movq	___stderrp@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	xorl	%eax, %eax
	call	_fprintf
	movq	8(%rsp), %rcx
	addq	$4, %rcx
	cmpq	%rcx, 128(%rsp)
	jne	L147
	movq	___stderrp@GOTPCREL(%rip), %rax
	movl	$10, %edi
	movq	(%rax), %rsi
	call	_fputc
	jmp	L146
L814:
	movq	80(%rsp), %rax
	leaq	51640(%rbx), %rdx
L120:
	movzbl	258(%rax), %ecx
	addq	$16, %rdx
	addq	$1, %rax
	movzbl	-1(%rax), %esi
	sall	$16, %ecx
	orl	%esi, %ecx
	movl	%ecx, -16(%rdx)
	movzbl	773(%rax), %ecx
	movzbl	515(%rax), %esi
	sall	$16, %ecx
	orl	%esi, %ecx
	movl	%ecx, -12(%rdx)
	movzbl	1289(%rax), %ecx
	movzbl	1031(%rax), %esi
	sall	$16, %ecx
	orl	%esi, %ecx
	movl	%ecx, -8(%rdx)
	cmpq	%rdx, 112(%rsp)
	jne	L120
	movl	8(%rsp), %eax
	testl	%eax, %eax
	jg	L834
L404:
	movl	$0, 16(%rsp)
	movl	$0, 32(%rsp)
	jmp	L121
L416:
	movl	%ecx, %edx
	movl	%edi, %ecx
	movl	%esi, %edi
	movl	%edx, %esi
	movl	$2, %edx
	jmp	L154
L86:
	cmpl	$7, %edx
	movb	$15, 6(%r15)
	jne	L835
L396:
	movl	$7, %eax
	jmp	L72
L88:
	cmpl	$8, %edx
	movb	$15, 7(%r15)
	jne	L836
L397:
	movl	$8, %eax
	jmp	L72
L417:
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%edi, %r8d
	movl	%esi, %edi
	movl	%edx, %esi
	movl	$3, %edx
	jmp	L154
L388:
	xorl	%eax, %eax
L71:
	cltq
	jmp	L111
	.align 4,0x90
L837:
	cmpl	%eax, %r13d
	jg	L110
	movb	$0, 37708(%r14,%rax)
L112:
	addq	$1, %rax
	cmpl	%eax, %ebx
	jle	L116
L111:
	cmpl	%eax, %ebp
	jge	L837
L110:
	movb	$15, 37708(%r14,%rax)
	jmp	L112
L421:
	movl	$1, %eax
	jmp	L158
L422:
	movl	$2, %eax
	jmp	L158
L418:
	movl	%r9d, %ecx
	movl	%r8d, %r9d
	movl	%edi, %r8d
	movl	%esi, %edi
	movl	%edx, %esi
	movl	$4, %edx
	jmp	L154
L92:
	cmpl	$10, %edx
	movb	$15, 9(%r15)
	jne	L838
L399:
	movl	$10, %eax
	jmp	L72
L90:
	cmpl	$9, %edx
	movb	$15, 8(%r15)
	jne	L839
L398:
	movl	$9, %eax
	jmp	L72
L419:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	$32, %edx
	jmp	L157
L423:
	movl	$3, %eax
	jmp	L158
L424:
	movl	$4, %eax
	jmp	L158
L425:
	movl	$5, %eax
	jmp	L158
L381:
	leaq	1(%rsi), %rax
	movl	%r10d, %r13d
	jmp	L54
L96:
	cmpl	$12, %edx
	movb	$15, 11(%r15)
	jne	L840
L401:
	movl	$12, %eax
	jmp	L72
L94:
	cmpl	$11, %edx
	movb	$15, 10(%r15)
	jne	L841
L400:
	movl	$11, %eax
	jmp	L72
L383:
	movl	$3, 104(%rsp)
	movl	$3, %r13d
	movl	%eax, %ecx
	jmp	L66
L98:
	cmpl	$13, %edx
	movb	$15, 12(%r15)
	jne	L842
L402:
	movl	$13, %eax
	jmp	L72
L428:
	movl	$8, %eax
	jmp	L158
L427:
	movl	$7, %eax
	jmp	L158
L426:
	movl	$6, %eax
	jmp	L158
L420:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movl	$32, %edx
	jmp	L158
L822:
	movq	16(%rsp), %rsi
	leaq	0(%rbp,%rcx,2), %r11
	movl	%r9d, %edx
	subl	%edi, %edx
	addq	%rcx, %rdx
	xorl	%ecx, %ecx
	leaq	(%rsi,%rdx,2), %rsi
	movq	%rsi, 48(%rsp)
	xorl	%esi, %esi
L134:
	movzwl	(%r11), %edx
	addq	$2, %r11
	movzbl	37708(%rbx,%rdx), %r8d
	addl	%r8d, %ecx
	movzbl	37966(%rbx,%rdx), %r8d
	addl	%r8d, %esi
	movzbl	38224(%rbx,%rdx), %r8d
	movzbl	38482(%rbx,%rdx), %edx
	addl	%r8d, %r14d
	addl	%edx, %r15d
	cmpq	%r11, 48(%rsp)
	jne	L134
	jmp	L129
L821:
	movq	16(%rsp), %rsi
	leaq	0(%rbp,%rcx,2), %r11
	movl	%r9d, %edx
	subl	%edi, %edx
	addq	%rcx, %rdx
	xorl	%ecx, %ecx
	leaq	(%rsi,%rdx,2), %rsi
	movq	%rsi, 48(%rsp)
	xorl	%esi, %esi
L132:
	movzwl	(%r11), %edx
	addq	$2, %r11
	movzbl	37708(%rbx,%rdx), %r8d
	addl	%r8d, %ecx
	movzbl	37966(%rbx,%rdx), %r8d
	movzbl	38224(%rbx,%rdx), %edx
	addl	%r8d, %esi
	addl	%edx, %r14d
	cmpq	%r11, 48(%rsp)
	jne	L132
	jmp	L129
L389:
	xorl	%eax, %eax
	jmp	L72
L100:
	cmpl	$15, %edx
	movb	$15, 13(%r15)
	je	L843
L403:
	movl	$14, %eax
	jmp	L72
L809:
	movl	$3001, %edi
	call	_BZ2_bz__AssertH__fail
	movl	668(%rbx), %eax
	movl	%eax, 8(%rsp)
	jmp	L65
L384:
	movl	$4, 104(%rsp)
	movl	$4, %r13d
	movl	%eax, %ecx
	jmp	L66
L808:
	leal	1(%r13), %eax
	movl	%eax, 40(%rsp)
	leaq	37708(%rbx), %rax
	movq	%rax, 80(%rsp)
	leaq	39256(%rbx), %rax
	movq	%rax, 64(%rsp)
	jmp	L63
L805:
	leal	1(%rdx), %edi
	movslq	%edx, %rax
	movl	124(%rbx), %r13d
	leaq	0(%rbp,%rax,2), %rax
	movl	%edi, 8(%rsp)
	movq	72(%rbx), %rbp
	jmp	L45
L380:
	leaq	224(%rsp), %rdi
	movq	%rbp, %rax
	movl	$1, 8(%rsp)
	movq	%rdi, 168(%rsp)
	jmp	L45
L104:
	movb	$15, 14(%r15)
	jmp	L105
L434:
	movl	$14, %eax
	jmp	L158
L433:
	movl	$13, %eax
	jmp	L158
L432:
	movl	$12, %eax
	jmp	L158
L431:
	movl	$11, %eax
	jmp	L158
L379:
	xorl	%eax, %eax
	jmp	L42
L436:
	xorl	%edx, %edx
	jmp	L232
L430:
	movl	$10, %eax
	jmp	L158
L429:
	movl	$9, %eax
	jmp	L158
LFE39:
	.literal16
	.align 4
lC1:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.align 4
lC2:
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.align 4
lC3:
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	43
	.byte	44
	.byte	45
	.byte	46
	.byte	47
	.align 4
lC4:
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	59
	.byte	60
	.byte	61
	.byte	62
	.byte	63
	.align 4
lC5:
	.byte	64
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	75
	.byte	76
	.byte	77
	.byte	78
	.byte	79
	.align 4
lC6:
	.byte	80
	.byte	81
	.byte	82
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	91
	.byte	92
	.byte	93
	.byte	94
	.byte	95
	.align 4
lC7:
	.byte	96
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	107
	.byte	108
	.byte	109
	.byte	110
	.byte	111
	.align 4
lC8:
	.byte	112
	.byte	113
	.byte	114
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	123
	.byte	124
	.byte	125
	.byte	126
	.byte	127
	.align 4
lC9:
	.byte	-128
	.byte	-127
	.byte	-126
	.byte	-125
	.byte	-124
	.byte	-123
	.byte	-122
	.byte	-121
	.byte	-120
	.byte	-119
	.byte	-118
	.byte	-117
	.byte	-116
	.byte	-115
	.byte	-114
	.byte	-113
	.align 4
lC10:
	.byte	-112
	.byte	-111
	.byte	-110
	.byte	-109
	.byte	-108
	.byte	-107
	.byte	-106
	.byte	-105
	.byte	-104
	.byte	-103
	.byte	-102
	.byte	-101
	.byte	-100
	.byte	-99
	.byte	-98
	.byte	-97
	.align 4
lC11:
	.byte	-96
	.byte	-95
	.byte	-94
	.byte	-93
	.byte	-92
	.byte	-91
	.byte	-90
	.byte	-89
	.byte	-88
	.byte	-87
	.byte	-86
	.byte	-85
	.byte	-84
	.byte	-83
	.byte	-82
	.byte	-81
	.align 4
lC12:
	.byte	-80
	.byte	-79
	.byte	-78
	.byte	-77
	.byte	-76
	.byte	-75
	.byte	-74
	.byte	-73
	.byte	-72
	.byte	-71
	.byte	-70
	.byte	-69
	.byte	-68
	.byte	-67
	.byte	-66
	.byte	-65
	.align 4
lC13:
	.byte	-64
	.byte	-63
	.byte	-62
	.byte	-61
	.byte	-60
	.byte	-59
	.byte	-58
	.byte	-57
	.byte	-56
	.byte	-55
	.byte	-54
	.byte	-53
	.byte	-52
	.byte	-51
	.byte	-50
	.byte	-49
	.align 4
lC14:
	.byte	-48
	.byte	-47
	.byte	-46
	.byte	-45
	.byte	-44
	.byte	-43
	.byte	-42
	.byte	-41
	.byte	-40
	.byte	-39
	.byte	-38
	.byte	-37
	.byte	-36
	.byte	-35
	.byte	-34
	.byte	-33
	.align 4
lC15:
	.byte	-32
	.byte	-31
	.byte	-30
	.byte	-29
	.byte	-28
	.byte	-27
	.byte	-26
	.byte	-25
	.byte	-24
	.byte	-23
	.byte	-22
	.byte	-21
	.byte	-20
	.byte	-19
	.byte	-18
	.byte	-17
	.align 4
lC16:
	.byte	-16
	.byte	-15
	.byte	-14
	.byte	-13
	.byte	-12
	.byte	-11
	.byte	-10
	.byte	-9
	.byte	-8
	.byte	-7
	.byte	-6
	.byte	-5
	.byte	-4
	.byte	-3
	.byte	-2
	.byte	-1
	.literal8
	.align 3
lC18:
	.long	0
	.long	1079574528
	.literal16
	.align 4
lC20:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 4
lC21:
	.long	16
	.long	16
	.long	16
	.long	16
	.align 4
lC22:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 4
lC23:
	.long	8
	.long	8
	.long	8
	.long	8
	.align 4
lC24:
	.long	12
	.long	12
	.long	12
	.long	12
	.align 4
lC25:
	.word	255
	.word	255
	.word	255
	.word	255
	.word	255
	.word	255
	.word	255
	.word	255
	.align 4
lC26:
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
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
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$3,LEFDE3-LASFDE3
	.long L$set$3
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB39-.
	.set L$set$4,LFE39-LFB39
	.quad L$set$4
	.byte	0
	.byte	0x4
	.set L$set$5,LCFI0-LFB39
	.long L$set$5
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$6,LCFI1-LCFI0
	.long L$set$6
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$7,LCFI2-LCFI1
	.long L$set$7
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$8,LCFI3-LCFI2
	.long L$set$8
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$9,LCFI4-LCFI3
	.long L$set$9
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$10,LCFI5-LCFI4
	.long L$set$10
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$11,LCFI6-LCFI5
	.long L$set$11
	.byte	0xe
	.byte	0xa0,0x4
	.byte	0x4
	.set L$set$12,LCFI7-LCFI6
	.long L$set$12
	.byte	0xa
	.byte	0xe
	.byte	0x38
	.byte	0x4
	.set L$set$13,LCFI8-LCFI7
	.long L$set$13
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$14,LCFI9-LCFI8
	.long L$set$14
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$15,LCFI10-LCFI9
	.long L$set$15
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$16,LCFI11-LCFI10
	.long L$set$16
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$17,LCFI12-LCFI11
	.long L$set$17
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$18,LCFI13-LCFI12
	.long L$set$18
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$19,LCFI14-LCFI13
	.long L$set$19
	.byte	0xb
	.align 3
LEFDE3:
	.subsections_via_symbols
