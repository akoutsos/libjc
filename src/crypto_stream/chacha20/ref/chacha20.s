	.text
	.p2align	5
	.globl	_chacha20_ref
	.globl	chacha20_ref
_chacha20_ref:
chacha20_ref:
	pushq	%rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	subq	$176, %rsp
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	movl	$1634760805, 48(%rsp)
	movl	$857760878, 52(%rsp)
	movl	$2036477234, 56(%rsp)
	movl	$1797285236, 60(%rsp)
	movl	(%rcx), %eax
	movl	%eax, 64(%rsp)
	movl	4(%rcx), %eax
	movl	%eax, 68(%rsp)
	movl	8(%rcx), %eax
	movl	%eax, 72(%rsp)
	movl	12(%rcx), %eax
	movl	%eax, 76(%rsp)
	movl	16(%rcx), %eax
	movl	%eax, 80(%rsp)
	movl	20(%rcx), %eax
	movl	%eax, 84(%rsp)
	movl	24(%rcx), %eax
	movl	%eax, 88(%rsp)
	movl	28(%rcx), %eax
	movl	%eax, 92(%rsp)
	movl	%r9d, 96(%rsp)
	movl	(%r8), %eax
	movl	%eax, 100(%rsp)
	movl	4(%r8), %eax
	movl	%eax, 104(%rsp)
	movl	8(%r8), %eax
	movl	%eax, 108(%rsp)
	jmp 	Lchacha20_ref$6
Lchacha20_ref$7:
	movl	108(%rsp), %eax
	movl	%eax, 36(%rsp)
	movl	48(%rsp), %eax
	movl	52(%rsp), %ecx
	movl	56(%rsp), %edx
	movl	60(%rsp), %esi
	movl	64(%rsp), %edi
	movl	68(%rsp), %r8d
	movl	72(%rsp), %r9d
	movl	76(%rsp), %r10d
	movl	80(%rsp), %r11d
	movl	84(%rsp), %ebp
	movl	88(%rsp), %ebx
	movl	92(%rsp), %r12d
	movl	96(%rsp), %r13d
	movl	100(%rsp), %r14d
	movl	104(%rsp), %r15d
	movl	$10, 44(%rsp)
	jmp 	Lchacha20_ref$8
Lchacha20_ref$9:
	decl	44(%rsp)
	addl	%edi, %eax
	xorl	%eax, %r13d
	roll	$16, %r13d
	addl	%r13d, %r11d
	xorl	%r11d, %edi
	roll	$12, %edi
	addl	%edi, %eax
	xorl	%eax, %r13d
	roll	$8, %r13d
	addl	%r13d, %r11d
	xorl	%r11d, %edi
	roll	$7, %edi
	addl	%r9d, %edx
	xorl	%edx, %r15d
	roll	$16, %r15d
	addl	%r15d, %ebx
	xorl	%ebx, %r9d
	roll	$12, %r9d
	addl	%r9d, %edx
	xorl	%edx, %r15d
	roll	$8, %r15d
	addl	%r15d, %ebx
	xorl	%ebx, %r9d
	roll	$7, %r9d
	movl	%r15d, 40(%rsp)
	movl	36(%rsp), %r15d
	addl	%r8d, %ecx
	xorl	%ecx, %r14d
	roll	$16, %r14d
	addl	%r14d, %ebp
	xorl	%ebp, %r8d
	roll	$12, %r8d
	addl	%r8d, %ecx
	xorl	%ecx, %r14d
	roll	$8, %r14d
	addl	%r14d, %ebp
	xorl	%ebp, %r8d
	roll	$7, %r8d
	addl	%r10d, %esi
	xorl	%esi, %r15d
	roll	$16, %r15d
	addl	%r15d, %r12d
	xorl	%r12d, %r10d
	roll	$12, %r10d
	addl	%r10d, %esi
	xorl	%esi, %r15d
	roll	$8, %r15d
	addl	%r15d, %r12d
	xorl	%r12d, %r10d
	roll	$7, %r10d
	addl	%r9d, %ecx
	xorl	%ecx, %r13d
	roll	$16, %r13d
	addl	%r13d, %r12d
	xorl	%r12d, %r9d
	roll	$12, %r9d
	addl	%r9d, %ecx
	xorl	%ecx, %r13d
	roll	$8, %r13d
	addl	%r13d, %r12d
	xorl	%r12d, %r9d
	roll	$7, %r9d
	addl	%r8d, %eax
	xorl	%eax, %r15d
	roll	$16, %r15d
	addl	%r15d, %ebx
	xorl	%ebx, %r8d
	roll	$12, %r8d
	addl	%r8d, %eax
	xorl	%eax, %r15d
	roll	$8, %r15d
	addl	%r15d, %ebx
	xorl	%ebx, %r8d
	roll	$7, %r8d
	movl	%r15d, 36(%rsp)
	movl	40(%rsp), %r15d
	addl	%r10d, %edx
	xorl	%edx, %r14d
	roll	$16, %r14d
	addl	%r14d, %r11d
	xorl	%r11d, %r10d
	roll	$12, %r10d
	addl	%r10d, %edx
	xorl	%edx, %r14d
	roll	$8, %r14d
	addl	%r14d, %r11d
	xorl	%r11d, %r10d
	roll	$7, %r10d
	addl	%edi, %esi
	xorl	%esi, %r15d
	roll	$16, %r15d
	addl	%r15d, %ebp
	xorl	%ebp, %edi
	roll	$12, %edi
	addl	%edi, %esi
	xorl	%esi, %r15d
	roll	$8, %r15d
	addl	%r15d, %ebp
	xorl	%ebp, %edi
	roll	$7, %edi
Lchacha20_ref$8:
	cmpl	$0, 44(%rsp)
	jnbe	Lchacha20_ref$9
	addl	48(%rsp), %eax
	addl	52(%rsp), %ecx
	addl	56(%rsp), %edx
	addl	60(%rsp), %esi
	addl	64(%rsp), %edi
	addl	68(%rsp), %r8d
	addl	72(%rsp), %r9d
	addl	76(%rsp), %r10d
	addl	80(%rsp), %r11d
	addl	84(%rsp), %ebp
	addl	88(%rsp), %ebx
	addl	92(%rsp), %r12d
	addl	96(%rsp), %r13d
	addl	100(%rsp), %r14d
	addl	104(%rsp), %r15d
	movl	%r15d, 44(%rsp)
	movl	36(%rsp), %r15d
	addl	108(%rsp), %r15d
	movl	%r15d, 40(%rsp)
	movl	44(%rsp), %r15d
	movl	%r13d, 24(%rsp)
	movl	%r14d, 28(%rsp)
	movl	%r15d, 32(%rsp)
	movq	16(%rsp), %r13
	movq	8(%rsp), %r14
	movq	(%rsp), %r15
	xorl	(%r14), %eax
	movl	%eax, (%r13)
	xorl	4(%r14), %ecx
	movl	%ecx, 4(%r13)
	xorl	8(%r14), %edx
	movl	%edx, 8(%r13)
	xorl	12(%r14), %esi
	movl	%esi, 12(%r13)
	xorl	16(%r14), %edi
	movl	%edi, 16(%r13)
	xorl	20(%r14), %r8d
	movl	%r8d, 20(%r13)
	xorl	24(%r14), %r9d
	movl	%r9d, 24(%r13)
	xorl	28(%r14), %r10d
	movl	%r10d, 28(%r13)
	xorl	32(%r14), %r11d
	movl	%r11d, 32(%r13)
	xorl	36(%r14), %ebp
	movl	%ebp, 36(%r13)
	xorl	40(%r14), %ebx
	movl	%ebx, 40(%r13)
	xorl	44(%r14), %r12d
	movl	%r12d, 44(%r13)
	movl	24(%rsp), %eax
	movl	28(%rsp), %ecx
	movl	32(%rsp), %edx
	movl	40(%rsp), %esi
	xorl	48(%r14), %eax
	movl	%eax, 48(%r13)
	xorl	52(%r14), %ecx
	movl	%ecx, 52(%r13)
	xorl	56(%r14), %edx
	movl	%edx, 56(%r13)
	xorl	60(%r14), %esi
	movl	%esi, 60(%r13)
	addq	$64, %r13
	addq	$64, %r14
	addq	$-64, %r15
	movq	%r13, 16(%rsp)
	movq	%r14, 8(%rsp)
	movq	%r15, (%rsp)
	movl	$1, %eax
	addl	96(%rsp), %eax
	movl	%eax, 96(%rsp)
Lchacha20_ref$6:
	cmpq	$64, (%rsp)
	jnb 	Lchacha20_ref$7
	cmpq	$0, (%rsp)
	jbe 	Lchacha20_ref$1
	movl	108(%rsp), %eax
	movl	%eax, 36(%rsp)
	movl	48(%rsp), %eax
	movl	52(%rsp), %ecx
	movl	56(%rsp), %edx
	movl	60(%rsp), %esi
	movl	64(%rsp), %edi
	movl	68(%rsp), %r8d
	movl	72(%rsp), %r9d
	movl	76(%rsp), %r10d
	movl	80(%rsp), %r11d
	movl	84(%rsp), %ebp
	movl	88(%rsp), %ebx
	movl	92(%rsp), %r12d
	movl	96(%rsp), %r13d
	movl	100(%rsp), %r14d
	movl	104(%rsp), %r15d
	movl	$10, 44(%rsp)
	jmp 	Lchacha20_ref$4
Lchacha20_ref$5:
	decl	44(%rsp)
	addl	%edi, %eax
	xorl	%eax, %r13d
	roll	$16, %r13d
	addl	%r13d, %r11d
	xorl	%r11d, %edi
	roll	$12, %edi
	addl	%edi, %eax
	xorl	%eax, %r13d
	roll	$8, %r13d
	addl	%r13d, %r11d
	xorl	%r11d, %edi
	roll	$7, %edi
	addl	%r9d, %edx
	xorl	%edx, %r15d
	roll	$16, %r15d
	addl	%r15d, %ebx
	xorl	%ebx, %r9d
	roll	$12, %r9d
	addl	%r9d, %edx
	xorl	%edx, %r15d
	roll	$8, %r15d
	addl	%r15d, %ebx
	xorl	%ebx, %r9d
	roll	$7, %r9d
	movl	%r15d, 40(%rsp)
	movl	36(%rsp), %r15d
	addl	%r8d, %ecx
	xorl	%ecx, %r14d
	roll	$16, %r14d
	addl	%r14d, %ebp
	xorl	%ebp, %r8d
	roll	$12, %r8d
	addl	%r8d, %ecx
	xorl	%ecx, %r14d
	roll	$8, %r14d
	addl	%r14d, %ebp
	xorl	%ebp, %r8d
	roll	$7, %r8d
	addl	%r10d, %esi
	xorl	%esi, %r15d
	roll	$16, %r15d
	addl	%r15d, %r12d
	xorl	%r12d, %r10d
	roll	$12, %r10d
	addl	%r10d, %esi
	xorl	%esi, %r15d
	roll	$8, %r15d
	addl	%r15d, %r12d
	xorl	%r12d, %r10d
	roll	$7, %r10d
	addl	%r9d, %ecx
	xorl	%ecx, %r13d
	roll	$16, %r13d
	addl	%r13d, %r12d
	xorl	%r12d, %r9d
	roll	$12, %r9d
	addl	%r9d, %ecx
	xorl	%ecx, %r13d
	roll	$8, %r13d
	addl	%r13d, %r12d
	xorl	%r12d, %r9d
	roll	$7, %r9d
	addl	%r8d, %eax
	xorl	%eax, %r15d
	roll	$16, %r15d
	addl	%r15d, %ebx
	xorl	%ebx, %r8d
	roll	$12, %r8d
	addl	%r8d, %eax
	xorl	%eax, %r15d
	roll	$8, %r15d
	addl	%r15d, %ebx
	xorl	%ebx, %r8d
	roll	$7, %r8d
	movl	%r15d, 36(%rsp)
	movl	40(%rsp), %r15d
	addl	%r10d, %edx
	xorl	%edx, %r14d
	roll	$16, %r14d
	addl	%r14d, %r11d
	xorl	%r11d, %r10d
	roll	$12, %r10d
	addl	%r10d, %edx
	xorl	%edx, %r14d
	roll	$8, %r14d
	addl	%r14d, %r11d
	xorl	%r11d, %r10d
	roll	$7, %r10d
	addl	%edi, %esi
	xorl	%esi, %r15d
	roll	$16, %r15d
	addl	%r15d, %ebp
	xorl	%ebp, %edi
	roll	$12, %edi
	addl	%edi, %esi
	xorl	%esi, %r15d
	roll	$8, %r15d
	addl	%r15d, %ebp
	xorl	%ebp, %edi
	roll	$7, %edi
Lchacha20_ref$4:
	cmpl	$0, 44(%rsp)
	jnbe	Lchacha20_ref$5
	addl	48(%rsp), %eax
	addl	52(%rsp), %ecx
	addl	56(%rsp), %edx
	addl	60(%rsp), %esi
	addl	64(%rsp), %edi
	addl	68(%rsp), %r8d
	addl	72(%rsp), %r9d
	addl	76(%rsp), %r10d
	addl	80(%rsp), %r11d
	addl	84(%rsp), %ebp
	addl	88(%rsp), %ebx
	addl	92(%rsp), %r12d
	addl	96(%rsp), %r13d
	addl	100(%rsp), %r14d
	addl	104(%rsp), %r15d
	movl	%r15d, 44(%rsp)
	movl	36(%rsp), %r15d
	addl	108(%rsp), %r15d
	movl	%r15d, 40(%rsp)
	movl	44(%rsp), %r15d
	movl	%r15d, 44(%rsp)
	movl	%eax, %eax
	movb	%al, 112(%rsp)
	shrl	$8, %eax
	movb	%al, 113(%rsp)
	shrl	$8, %eax
	movb	%al, 114(%rsp)
	shrl	$8, %eax
	movb	%al, 115(%rsp)
	movl	%ecx, %eax
	movb	%al, 116(%rsp)
	shrl	$8, %eax
	movb	%al, 117(%rsp)
	shrl	$8, %eax
	movb	%al, 118(%rsp)
	shrl	$8, %eax
	movb	%al, 119(%rsp)
	movl	%edx, %eax
	movb	%al, 120(%rsp)
	shrl	$8, %eax
	movb	%al, 121(%rsp)
	shrl	$8, %eax
	movb	%al, 122(%rsp)
	shrl	$8, %eax
	movb	%al, 123(%rsp)
	movl	%esi, %eax
	movb	%al, 124(%rsp)
	shrl	$8, %eax
	movb	%al, 125(%rsp)
	shrl	$8, %eax
	movb	%al, 126(%rsp)
	shrl	$8, %eax
	movb	%al, 127(%rsp)
	movl	%edi, %eax
	movb	%al, 128(%rsp)
	shrl	$8, %eax
	movb	%al, 129(%rsp)
	shrl	$8, %eax
	movb	%al, 130(%rsp)
	shrl	$8, %eax
	movb	%al, 131(%rsp)
	movl	%r8d, %eax
	movb	%al, 132(%rsp)
	shrl	$8, %eax
	movb	%al, 133(%rsp)
	shrl	$8, %eax
	movb	%al, 134(%rsp)
	shrl	$8, %eax
	movb	%al, 135(%rsp)
	movl	%r9d, %eax
	movb	%al, 136(%rsp)
	shrl	$8, %eax
	movb	%al, 137(%rsp)
	shrl	$8, %eax
	movb	%al, 138(%rsp)
	shrl	$8, %eax
	movb	%al, 139(%rsp)
	movl	%r10d, %eax
	movb	%al, 140(%rsp)
	shrl	$8, %eax
	movb	%al, 141(%rsp)
	shrl	$8, %eax
	movb	%al, 142(%rsp)
	shrl	$8, %eax
	movb	%al, 143(%rsp)
	movl	%r11d, %eax
	movb	%al, 144(%rsp)
	shrl	$8, %eax
	movb	%al, 145(%rsp)
	shrl	$8, %eax
	movb	%al, 146(%rsp)
	shrl	$8, %eax
	movb	%al, 147(%rsp)
	movl	%ebp, %eax
	movb	%al, 148(%rsp)
	shrl	$8, %eax
	movb	%al, 149(%rsp)
	shrl	$8, %eax
	movb	%al, 150(%rsp)
	shrl	$8, %eax
	movb	%al, 151(%rsp)
	movl	%ebx, %eax
	movb	%al, 152(%rsp)
	shrl	$8, %eax
	movb	%al, 153(%rsp)
	shrl	$8, %eax
	movb	%al, 154(%rsp)
	shrl	$8, %eax
	movb	%al, 155(%rsp)
	movl	%r12d, %eax
	movb	%al, 156(%rsp)
	shrl	$8, %eax
	movb	%al, 157(%rsp)
	shrl	$8, %eax
	movb	%al, 158(%rsp)
	shrl	$8, %eax
	movb	%al, 159(%rsp)
	movl	%r13d, %eax
	movb	%al, 160(%rsp)
	shrl	$8, %eax
	movb	%al, 161(%rsp)
	shrl	$8, %eax
	movb	%al, 162(%rsp)
	shrl	$8, %eax
	movb	%al, 163(%rsp)
	movl	%r14d, %eax
	movb	%al, 164(%rsp)
	shrl	$8, %eax
	movb	%al, 165(%rsp)
	shrl	$8, %eax
	movb	%al, 166(%rsp)
	shrl	$8, %eax
	movb	%al, 167(%rsp)
	movl	44(%rsp), %eax
	movl	40(%rsp), %ecx
	movl	%eax, %eax
	movb	%al, 168(%rsp)
	shrl	$8, %eax
	movb	%al, 169(%rsp)
	shrl	$8, %eax
	movb	%al, 170(%rsp)
	shrl	$8, %eax
	movb	%al, 171(%rsp)
	movl	%ecx, %ecx
	movb	%cl, 172(%rsp)
	shrl	$8, %ecx
	movb	%cl, 173(%rsp)
	shrl	$8, %ecx
	movb	%cl, 174(%rsp)
	shrl	$8, %ecx
	movb	%cl, 175(%rsp)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	(%rsp), %rdx
	movq	$0, %rsi
	jmp 	Lchacha20_ref$2
Lchacha20_ref$3:
	movb	(%rcx,%rsi), %dil
	xorb	112(%rsp,%rsi), %dil
	movb	%dil, (%rax,%rsi)
	incq	%rsi
Lchacha20_ref$2:
	cmpq	%rdx, %rsi
	jb  	Lchacha20_ref$3
Lchacha20_ref$1:
	addq	$176, %rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbx
	popq	%rbp
	ret 
