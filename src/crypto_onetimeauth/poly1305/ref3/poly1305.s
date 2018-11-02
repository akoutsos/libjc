	.text
	.p2align	5
	.globl	_poly1305_ref3
	.globl	poly1305_ref3
_poly1305_ref3:
poly1305_ref3:
	pushq	%rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	subq	$16, %rsp
	movq	(%rcx), %r8
	movq	8(%rcx), %r9
	movq	$1152921487695413247, %rax
	andq	%rax, %r8
	movq	$1152921487695413244, %rax
	andq	%rax, %r9
	movq	%r9, %r10
	shrq	$2, %r10
	addq	%r9, %r10
	addq	$16, %rcx
	movq	$0, %r11
	movq	$0, %rbp
	movq	$0, %rbx
	movq	%rdx, %r12
	jmp 	Lpoly1305_ref3$6
Lpoly1305_ref3$7:
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	addq	$16, %rsi
	addq	$-16, %r12
	addq	%rax, %r11
	adcq	%rdx, %rbp
	adcq	$1, %rbx
	movq	%r11, %rax
	mulq	%r8
	movq	%rax, %r13
	movq	%rdx, %r14
	movq	$0, %r15
	movq	%rbp, %rax
	mulq	%r10
	addq	%rax, %r13
	adcq	%rdx, %r14
	movq	%r11, %rax
	mulq	%r9
	addq	%rax, %r14
	adcq	%rdx, %r15
	movq	%rbp, %rax
	mulq	%r8
	addq	%rax, %r14
	adcq	%rdx, %r15
	movq	%rbx, %rax
	imulq	%r10, %rax
	addq	%rax, %r14
	adcq	$0, %r15
	imulq	%r8, %rbx
	movq	%r13, %r11
	movq	%r14, %rbp
	addq	%r15, %rbx
	movq	%rbx, %rax
	movq	%rbx, %rdx
	andq	$3, %rbx
	andq	$-4, %rax
	shrq	$2, %rdx
	addq	%rax, %rdx
	addq	%rdx, %r11
	adcq	$0, %rbp
	adcq	$0, %rbx
Lpoly1305_ref3$6:
	cmpq	$16, %r12
	jnb 	Lpoly1305_ref3$7
	cmpq	$0, %r12
	jbe 	Lpoly1305_ref3$1
	movq	$0, %rax
	jmp 	Lpoly1305_ref3$4
Lpoly1305_ref3$5:
	movb	(%rsi,%rax), %dl
	movb	%dl, (%rsp,%rax)
	incq	%rax
Lpoly1305_ref3$4:
	cmpq	%r12, %rax
	jb  	Lpoly1305_ref3$5
	movb	$1, (%rsp,%rax)
	incq	%rax
	jmp 	Lpoly1305_ref3$2
Lpoly1305_ref3$3:
	movb	$0, (%rsp,%rax)
	incq	%rax
Lpoly1305_ref3$2:
	cmpq	$16, %rax
	jb  	Lpoly1305_ref3$3
	movq	$0, %rax
	movq	$0, %rdx
	movzbq	(%rsp), %rsi
	shlq	$0, %rsi
	orq 	%rsi, %rax
	movzbq	1(%rsp), %rsi
	shlq	$8, %rsi
	orq 	%rsi, %rax
	movzbq	2(%rsp), %rsi
	shlq	$16, %rsi
	orq 	%rsi, %rax
	movzbq	3(%rsp), %rsi
	shlq	$24, %rsi
	orq 	%rsi, %rax
	movzbq	4(%rsp), %rsi
	shlq	$32, %rsi
	orq 	%rsi, %rax
	movzbq	5(%rsp), %rsi
	shlq	$40, %rsi
	orq 	%rsi, %rax
	movzbq	6(%rsp), %rsi
	shlq	$48, %rsi
	orq 	%rsi, %rax
	movzbq	7(%rsp), %rsi
	shlq	$56, %rsi
	orq 	%rsi, %rax
	movzbq	8(%rsp), %rsi
	shlq	$0, %rsi
	orq 	%rsi, %rdx
	movzbq	9(%rsp), %rsi
	shlq	$8, %rsi
	orq 	%rsi, %rdx
	movzbq	10(%rsp), %rsi
	shlq	$16, %rsi
	orq 	%rsi, %rdx
	movzbq	11(%rsp), %rsi
	shlq	$24, %rsi
	orq 	%rsi, %rdx
	movzbq	12(%rsp), %rsi
	shlq	$32, %rsi
	orq 	%rsi, %rdx
	movzbq	13(%rsp), %rsi
	shlq	$40, %rsi
	orq 	%rsi, %rdx
	movzbq	14(%rsp), %rsi
	shlq	$48, %rsi
	orq 	%rsi, %rdx
	movzbq	15(%rsp), %rsi
	shlq	$56, %rsi
	orq 	%rsi, %rdx
	addq	%rax, %r11
	adcq	%rdx, %rbp
	adcq	$0, %rbx
	movq	%r11, %rax
	mulq	%r8
	movq	%rax, %rsi
	movq	%rdx, %r12
	movq	$0, %r13
	movq	%rbp, %rax
	mulq	%r10
	addq	%rax, %rsi
	adcq	%rdx, %r12
	movq	%r11, %rax
	mulq	%r9
	addq	%rax, %r12
	adcq	%rdx, %r13
	movq	%rbp, %rax
	mulq	%r8
	addq	%rax, %r12
	adcq	%rdx, %r13
	movq	%rbx, %rax
	imulq	%r10, %rax
	addq	%rax, %r12
	adcq	$0, %r13
	imulq	%r8, %rbx
	movq	%rsi, %r11
	movq	%r12, %rbp
	addq	%r13, %rbx
	movq	%rbx, %rax
	movq	%rbx, %rdx
	andq	$3, %rbx
	andq	$-4, %rax
	shrq	$2, %rdx
	addq	%rax, %rdx
	addq	%rdx, %r11
	adcq	$0, %rbp
	adcq	$0, %rbx
Lpoly1305_ref3$1:
	movq	%r11, %rax
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	addq	$5, %rax
	adcq	$0, %rdx
	adcq	$0, %rsi
	shrq	$2, %rsi
	andq	$1, %rsi
	negq	%rsi
	xorq	%r11, %rax
	xorq	%rbp, %rdx
	andq	%rsi, %rax
	andq	%rsi, %rdx
	xorq	%rax, %r11
	xorq	%rdx, %rbp
	movq	(%rcx), %rax
	movq	8(%rcx), %rcx
	addq	%rax, %r11
	adcq	%rcx, %rbp
	movq	%r11, (%rdi)
	movq	%rbp, 8(%rdi)
	addq	$16, %rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbx
	popq	%rbp
	ret 