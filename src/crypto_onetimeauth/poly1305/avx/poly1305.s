	.text
	.p2align	5
	.globl	_poly1305_avx
	.globl	poly1305_avx
_poly1305_avx:
poly1305_avx:
	pushq	%rbp
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	subq	$560, %rsp
  movq	%rsp, %r15
	andq	$-31, %rsp
  movq	%r15, -8(%rsp)
	cmpq	$384, %rdx
	jb  	Lpoly1305_avx$1
	movq	%rdx, %r8
	movq	(%rcx), %r9
	movq	8(%rcx), %r10
	movq	$1152921487695413247, %rax
	andq	%rax, %r9
	movq	$1152921487695413244, %rax
	andq	%rax, %r10
	movq	%r10, %r11
	shrq	$2, %r11
	addq	%r10, %r11
	addq	$16, %rcx
	movq	%r9, %rbp
	movq	%r10, %rbx
	movq	$0, %r12
	movq	%rbp, %rax
	andq	$67108863, %rax
	movq	%rax, 72(%rsp)
	movq	%rbp, %rax
	shrq	$26, %rax
	andq	$67108863, %rax
	movq	%rax, 88(%rsp)
	movq	%rbp, %rax
	shrdq	$52, %rbx, %rax
	movq	%rax, %rdx
	andq	$67108863, %rax
	movq	%rax, 104(%rsp)
	shrq	$26, %rdx
	andq	$67108863, %rdx
	movq	%rdx, 120(%rsp)
	movq	%rbx, %rax
	shrdq	$40, %r12, %rax
	movq	%rax, 136(%rsp)
	movq	%rbp, %rax
	mulq	%r9
	movq	%rax, %r13
	movq	%rdx, %r14
	movq	%rbx, %rax
	mulq	%r11
	addq	%rax, %r13
	adcq	%rdx, %r14
	movq	$0, %r15
	movq	%rbp, %rax
	mulq	%r10
	addq	%rax, %r14
	adcq	%rdx, %r15
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r14
	adcq	%rdx, %r15
	movq	%r12, %rax
	imulq	%r11, %rax
	addq	%rax, %r14
	adcq	$0, %r15
	imulq	%r9, %r12
	movq	%r13, %rbp
	movq	%r14, %rbx
	addq	%r15, %r12
	movq	%r12, %rax
	movq	%r12, %rdx
	andq	$3, %r12
	shrq	$2, %rax
	andq	$-4, %rdx
	addq	%rdx, %rax
	addq	%rax, %rbp
	adcq	$0, %rbx
	adcq	$0, %r12
	movq	%rbp, %rax
	andq	$67108863, %rax
	movq	%rax, 64(%rsp)
	movq	%rbp, %rax
	shrq	$26, %rax
	andq	$67108863, %rax
	movq	%rax, 80(%rsp)
	movq	%rbp, %rax
	shrdq	$52, %rbx, %rax
	movq	%rax, %rdx
	andq	$67108863, %rax
	movq	%rax, 96(%rsp)
	shrq	$26, %rdx
	andq	$67108863, %rdx
	movq	%rdx, 112(%rsp)
	movq	%rbx, %rax
	shrdq	$40, %r12, %rax
	movq	%rax, 128(%rsp)
	vpbroadcastq	five_u64(%rip), %xmm0
	vpmuludq	80(%rsp), %xmm0, %xmm1
	vmovdqu	%xmm1, (%rsp)
	vpmuludq	96(%rsp), %xmm0, %xmm1
	vmovdqu	%xmm1, 16(%rsp)
	vpmuludq	112(%rsp), %xmm0, %xmm1
	vmovdqu	%xmm1, 32(%rsp)
	vpmuludq	128(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 48(%rsp)
	vpbroadcastq	64(%rsp), %xmm0
	vmovdqu	%xmm0, 320(%rsp)
	vpbroadcastq	80(%rsp), %xmm0
	vmovdqu	%xmm0, 336(%rsp)
	vpbroadcastq	96(%rsp), %xmm0
	vmovdqu	%xmm0, 352(%rsp)
	vpbroadcastq	112(%rsp), %xmm0
	vmovdqu	%xmm0, 368(%rsp)
	vpbroadcastq	128(%rsp), %xmm0
	vmovdqu	%xmm0, 384(%rsp)
	vpbroadcastq	(%rsp), %xmm0
	vmovdqu	%xmm0, 256(%rsp)
	vpbroadcastq	16(%rsp), %xmm0
	vmovdqu	%xmm0, 272(%rsp)
	vpbroadcastq	32(%rsp), %xmm0
	vmovdqu	%xmm0, 288(%rsp)
	vpbroadcastq	48(%rsp), %xmm0
	vmovdqu	%xmm0, 304(%rsp)
	movq	%rbp, %rax
	mulq	%r9
	movq	%rax, %r13
	movq	%rdx, %r14
	movq	%rbx, %rax
	mulq	%r11
	addq	%rax, %r13
	adcq	%rdx, %r14
	movq	$0, %r15
	movq	%rbp, %rax
	mulq	%r10
	addq	%rax, %r14
	adcq	%rdx, %r15
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r14
	adcq	%rdx, %r15
	movq	%r12, %rax
	imulq	%r11, %rax
	addq	%rax, %r14
	adcq	$0, %r15
	imulq	%r9, %r12
	movq	%r13, %rbp
	movq	%r14, %rbx
	addq	%r15, %r12
	movq	%r12, %rax
	movq	%r12, %rdx
	andq	$3, %r12
	shrq	$2, %rax
	andq	$-4, %rdx
	addq	%rdx, %rax
	addq	%rax, %rbp
	adcq	$0, %rbx
	adcq	$0, %r12
	movq	%rbp, %rax
	mulq	%r9
	movq	%rax, %r13
	movq	%rdx, %r14
	movq	%rbx, %rax
	mulq	%r11
	addq	%rax, %r13
	adcq	%rdx, %r14
	movq	$0, %r15
	movq	%rbp, %rax
	mulq	%r10
	addq	%rax, %r14
	adcq	%rdx, %r15
	movq	%rbx, %rax
	mulq	%r9
	addq	%rax, %r14
	adcq	%rdx, %r15
	movq	%r12, %rax
	imulq	%r11, %rax
	addq	%rax, %r14
	adcq	$0, %r15
	imulq	%r9, %r12
	movq	%r13, %rax
	movq	%r14, %rdx
	addq	%r15, %r12
	movq	%r12, %rbp
	movq	%r12, %rbx
	andq	$3, %r12
	shrq	$2, %rbp
	andq	$-4, %rbx
	addq	%rbx, %rbp
	addq	%rbp, %rax
	adcq	$0, %rdx
	adcq	$0, %r12
	movq	%rax, %rbp
	andq	$67108863, %rbp
	movq	%rbp, 464(%rsp)
	movq	%rax, %rbp
	shrq	$26, %rbp
	andq	$67108863, %rbp
	movq	%rbp, 480(%rsp)
	shrdq	$52, %rdx, %rax
	movq	%rax, %rbp
	andq	$67108863, %rax
	movq	%rax, 496(%rsp)
	shrq	$26, %rbp
	andq	$67108863, %rbp
	movq	%rbp, 512(%rsp)
	movq	%rdx, %rax
	shrdq	$40, %r12, %rax
	movq	%rax, 528(%rsp)
	movq	464(%rsp), %rax
	movq	%rax, 472(%rsp)
	movq	480(%rsp), %rax
	movq	%rax, 488(%rsp)
	movq	496(%rsp), %rax
	movq	%rax, 504(%rsp)
	movq	512(%rsp), %rax
	movq	%rax, 520(%rsp)
	movq	528(%rsp), %rax
	movq	%rax, 536(%rsp)
	vpbroadcastq	five_u64(%rip), %xmm0
	vpmuludq	480(%rsp), %xmm0, %xmm1
	vmovdqu	%xmm1, 400(%rsp)
	vpmuludq	496(%rsp), %xmm0, %xmm1
	vmovdqu	%xmm1, 416(%rsp)
	vpmuludq	512(%rsp), %xmm0, %xmm1
	vmovdqu	%xmm1, 432(%rsp)
	vpmuludq	528(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 448(%rsp)
	vpbroadcastq	zero_u64(%rip), %xmm0
	vpbroadcastq	zero_u64(%rip), %xmm1
	vpbroadcastq	zero_u64(%rip), %xmm2
	vpbroadcastq	zero_u64(%rip), %xmm3
	vpbroadcastq	zero_u64(%rip), %xmm4
	vpbroadcastq	mask26_u64(%rip), %xmm5
	vmovdqu	%xmm5, 144(%rsp)
	vpbroadcastq	bit25_u64(%rip), %xmm5
	vmovdqu	%xmm5, 240(%rsp)
	jmp 	Lpoly1305_avx$13
.p2align 5,,
Lpoly1305_avx$14:
	vmovdqu	464(%rsp), %xmm5
	vmovdqu	480(%rsp), %xmm6
	vmovdqu	448(%rsp), %xmm7
	vpmuludq	%xmm5, %xmm0, %xmm8
	vpmuludq	%xmm6, %xmm0, %xmm9
	vpmuludq	%xmm5, %xmm1, %xmm10
	vpmuludq	%xmm6, %xmm1, %xmm11
	vpmuludq	%xmm5, %xmm2, %xmm12
	vpmuludq	%xmm6, %xmm2, %xmm13
	vpmuludq	%xmm5, %xmm3, %xmm14
	vpaddq	%xmm9, %xmm10, %xmm9
	vpmuludq	%xmm6, %xmm3, %xmm6
	vpaddq	%xmm11, %xmm12, %xmm10
	vpmuludq	%xmm5, %xmm4, %xmm5
	vpaddq	%xmm13, %xmm14, %xmm11
	vpaddq	%xmm6, %xmm5, %xmm5
	vpmuludq	%xmm7, %xmm1, %xmm6
	vmovdqu	(%rsi), %xmm12
	vpmuludq	%xmm7, %xmm2, %xmm13
	vmovdqu	496(%rsp), %xmm14
	vpmuludq	%xmm7, %xmm3, %xmm15
	vpmuludq	%xmm7, %xmm4, %xmm7
	vpaddq	%xmm6, %xmm8, %xmm6
	vmovdqu	16(%rsi), %xmm8
	vpaddq	%xmm13, %xmm9, %xmm9
	vpaddq	%xmm15, %xmm10, %xmm10
	vpaddq	%xmm7, %xmm11, %xmm7
	vpmuludq	%xmm14, %xmm0, %xmm11
	vpunpcklqdq	%xmm8, %xmm12, %xmm13
	vpmuludq	%xmm14, %xmm1, %xmm15
	vpunpckhqdq	%xmm8, %xmm12, %xmm8
	vpmuludq	%xmm14, %xmm2, %xmm12
	vpaddq	%xmm11, %xmm10, %xmm10
	vmovdqu	432(%rsp), %xmm11
	vpaddq	%xmm15, %xmm7, %xmm7
	vpaddq	%xmm12, %xmm5, %xmm5
	vpmuludq	%xmm11, %xmm2, %xmm2
	vpmuludq	%xmm11, %xmm3, %xmm12
	vmovdqu	%xmm13, %xmm14
	vpmuludq	%xmm11, %xmm4, %xmm11
	vpsrlq	$26, %xmm14, %xmm14
	vpand	144(%rsp), %xmm14, %xmm14
	vmovdqu	512(%rsp), %xmm15
	vpaddq	%xmm2, %xmm6, %xmm2
	vpaddq	%xmm12, %xmm9, %xmm6
	vpaddq	%xmm10, %xmm11, %xmm9
	vpmuludq	%xmm15, %xmm0, %xmm10
	vmovdqu	%xmm8, %xmm11
	vmovdqu	%xmm9, 192(%rsp)
	vpmuludq	%xmm15, %xmm1, %xmm1
	vpsrlq	$40, %xmm11, %xmm9
	vpor	240(%rsp), %xmm9, %xmm9
	vmovdqu	416(%rsp), %xmm11
	vpaddq	%xmm10, %xmm7, %xmm7
	vpaddq	%xmm1, %xmm5, %xmm1
	vpmuludq	%xmm11, %xmm3, %xmm3
	vmovdqu	%xmm13, %xmm5
	vmovdqu	%xmm7, 208(%rsp)
	vpmuludq	%xmm11, %xmm4, %xmm7
	vpsrlq	$52, %xmm5, %xmm5
	vpaddq	%xmm3, %xmm2, %xmm2
	vpaddq	%xmm6, %xmm7, %xmm3
	vpmuludq	400(%rsp), %xmm4, %xmm4
	vpsllq	$12, %xmm8, %xmm6
	vmovdqu	%xmm3, 176(%rsp)
	vpmuludq	528(%rsp), %xmm0, %xmm0
	vpor	%xmm6, %xmm5, %xmm3
	vmovdqu	144(%rsp), %xmm5
	vpaddq	%xmm4, %xmm2, %xmm2
	vpaddq	%xmm0, %xmm1, %xmm0
	vmovdqu	%xmm2, 160(%rsp)
	vmovdqu	%xmm0, 224(%rsp)
	vpand	%xmm5, %xmm13, %xmm0
	vpand	%xmm5, %xmm3, %xmm1
	vpsrlq	$14, %xmm8, %xmm2
	vpand	%xmm5, %xmm2, %xmm2
	vmovdqu	320(%rsp), %xmm3
	vmovdqu	336(%rsp), %xmm4
	vmovdqu	304(%rsp), %xmm5
	vpmuludq	%xmm3, %xmm0, %xmm6
	vpmuludq	%xmm4, %xmm0, %xmm7
	vpmuludq	%xmm3, %xmm14, %xmm8
	vpmuludq	%xmm4, %xmm14, %xmm10
	vpmuludq	%xmm3, %xmm1, %xmm11
	vpmuludq	%xmm4, %xmm1, %xmm12
	vpaddq	160(%rsp), %xmm6, %xmm6
	vpmuludq	%xmm3, %xmm2, %xmm13
	vpaddq	176(%rsp), %xmm8, %xmm8
	vpaddq	%xmm7, %xmm8, %xmm7
	vpmuludq	%xmm4, %xmm2, %xmm4
	vpaddq	192(%rsp), %xmm11, %xmm8
	vpaddq	%xmm10, %xmm8, %xmm8
	vpmuludq	%xmm3, %xmm9, %xmm3
	vpaddq	208(%rsp), %xmm13, %xmm10
	vpaddq	%xmm12, %xmm10, %xmm10
	vpaddq	224(%rsp), %xmm3, %xmm3
	vpaddq	%xmm4, %xmm3, %xmm3
	vpmuludq	%xmm5, %xmm14, %xmm4
	vmovdqu	32(%rsi), %xmm11
	vpmuludq	%xmm5, %xmm1, %xmm12
	vmovdqu	352(%rsp), %xmm13
	vpmuludq	%xmm5, %xmm2, %xmm15
	vpmuludq	%xmm5, %xmm9, %xmm5
	vpaddq	%xmm4, %xmm6, %xmm4
	vmovdqu	48(%rsi), %xmm6
	vpaddq	%xmm12, %xmm7, %xmm7
	vpaddq	%xmm15, %xmm8, %xmm8
	vpaddq	%xmm5, %xmm10, %xmm5
	vpmuludq	%xmm13, %xmm0, %xmm10
	vpunpcklqdq	%xmm6, %xmm11, %xmm12
	vpmuludq	%xmm13, %xmm14, %xmm15
	vpunpckhqdq	%xmm6, %xmm11, %xmm6
	vpmuludq	%xmm13, %xmm1, %xmm11
	vpaddq	%xmm10, %xmm8, %xmm8
	vmovdqu	288(%rsp), %xmm10
	vpaddq	%xmm15, %xmm5, %xmm5
	vpaddq	%xmm11, %xmm3, %xmm3
	vpmuludq	%xmm10, %xmm1, %xmm1
	vpmuludq	%xmm10, %xmm2, %xmm11
	vmovdqu	%xmm12, %xmm13
	vpmuludq	%xmm10, %xmm9, %xmm10
	vpsrlq	$26, %xmm13, %xmm13
	vpand	144(%rsp), %xmm13, %xmm13
	vmovdqu	368(%rsp), %xmm15
	vpaddq	%xmm1, %xmm4, %xmm1
	vpaddq	%xmm11, %xmm7, %xmm4
	vpaddq	%xmm8, %xmm10, %xmm7
	vpmuludq	%xmm15, %xmm0, %xmm8
	vmovdqu	%xmm6, %xmm10
	vpmuludq	%xmm15, %xmm14, %xmm11
	vpsrlq	$40, %xmm10, %xmm10
	vpor	240(%rsp), %xmm10, %xmm10
	vmovdqu	272(%rsp), %xmm14
	vpaddq	%xmm8, %xmm5, %xmm5
	vpaddq	%xmm11, %xmm3, %xmm3
	vpmuludq	%xmm14, %xmm2, %xmm2
	vmovdqu	%xmm12, %xmm8
	vpmuludq	%xmm14, %xmm9, %xmm11
	vpsrlq	$52, %xmm8, %xmm8
	vpaddq	%xmm2, %xmm1, %xmm1
	vpaddq	%xmm4, %xmm11, %xmm2
	vpmuludq	256(%rsp), %xmm9, %xmm4
	vpsllq	$12, %xmm6, %xmm9
	vpmuludq	384(%rsp), %xmm0, %xmm0
	vpor	%xmm9, %xmm8, %xmm8
	vmovdqu	144(%rsp), %xmm9
	vpaddq	%xmm4, %xmm1, %xmm1
	vmovdqu	%xmm5, %xmm5
	vpaddq	%xmm0, %xmm3, %xmm0
	vpand	%xmm9, %xmm12, %xmm3
	vpaddq	%xmm1, %xmm3, %xmm1
	vpand	%xmm9, %xmm8, %xmm3
	vpaddq	%xmm7, %xmm3, %xmm3
	vpsrlq	$14, %xmm6, %xmm4
	vpand	%xmm9, %xmm4, %xmm4
	vpaddq	%xmm5, %xmm4, %xmm4
	addq	$64, %rsi
	vpaddq	%xmm2, %xmm13, %xmm2
	vpaddq	%xmm0, %xmm10, %xmm0
	vpsrlq	$26, %xmm1, %xmm5
	vpsrlq	$26, %xmm4, %xmm6
	vpand	%xmm9, %xmm1, %xmm1
	vpand	%xmm9, %xmm4, %xmm4
	vpaddq	%xmm5, %xmm2, %xmm2
	vpaddq	%xmm6, %xmm0, %xmm0
	vpsrlq	$26, %xmm2, %xmm5
	vpsrlq	$26, %xmm0, %xmm6
	vpsllq	$2, %xmm6, %xmm7
	vpaddq	%xmm7, %xmm6, %xmm6
	vpand	%xmm9, %xmm2, %xmm7
	vpand	%xmm9, %xmm0, %xmm8
	vpaddq	%xmm5, %xmm3, %xmm0
	vpaddq	%xmm6, %xmm1, %xmm1
	vpsrlq	$26, %xmm0, %xmm3
	vpsrlq	$26, %xmm1, %xmm5
	vpand	%xmm9, %xmm0, %xmm2
	vpand	%xmm9, %xmm1, %xmm0
	vpaddq	%xmm3, %xmm4, %xmm3
	vpaddq	%xmm5, %xmm7, %xmm1
	vpsrlq	$26, %xmm3, %xmm4
	vpand	%xmm9, %xmm3, %xmm3
	vpaddq	%xmm4, %xmm8, %xmm4
	addq	$-64, %r8
Lpoly1305_avx$13:
	cmpq	$64, %r8
	jnb 	Lpoly1305_avx$14
	vmovdqu	64(%rsp), %xmm5
	vmovdqu	80(%rsp), %xmm6
	vmovdqu	48(%rsp), %xmm7
	vpmuludq	%xmm5, %xmm0, %xmm8
	vpmuludq	%xmm5, %xmm1, %xmm9
	vpmuludq	%xmm5, %xmm2, %xmm10
	vpmuludq	%xmm5, %xmm3, %xmm11
	vpmuludq	%xmm5, %xmm4, %xmm5
	vpmuludq	%xmm6, %xmm0, %xmm12
	vpmuludq	%xmm6, %xmm1, %xmm13
	vpmuludq	%xmm6, %xmm2, %xmm14
	vpmuludq	%xmm6, %xmm3, %xmm6
	vmovdqu	96(%rsp), %xmm15
	vpaddq	%xmm12, %xmm9, %xmm9
	vpaddq	%xmm13, %xmm10, %xmm10
	vpaddq	%xmm14, %xmm11, %xmm11
	vpaddq	%xmm6, %xmm5, %xmm5
	vpmuludq	%xmm7, %xmm1, %xmm6
	vpmuludq	%xmm7, %xmm2, %xmm12
	vpmuludq	%xmm7, %xmm3, %xmm13
	vpmuludq	%xmm7, %xmm4, %xmm7
	vmovdqu	32(%rsp), %xmm14
	vpaddq	%xmm6, %xmm8, %xmm6
	vpaddq	%xmm12, %xmm9, %xmm8
	vpaddq	%xmm13, %xmm10, %xmm9
	vpaddq	%xmm7, %xmm11, %xmm7
	vpmuludq	%xmm15, %xmm0, %xmm10
	vpmuludq	%xmm15, %xmm1, %xmm11
	vpmuludq	%xmm15, %xmm2, %xmm12
	vmovdqu	112(%rsp), %xmm13
	vpaddq	%xmm10, %xmm9, %xmm9
	vpaddq	%xmm11, %xmm7, %xmm7
	vpaddq	%xmm12, %xmm5, %xmm5
	vpmuludq	%xmm14, %xmm2, %xmm2
	vpmuludq	%xmm14, %xmm3, %xmm10
	vpmuludq	%xmm14, %xmm4, %xmm11
	vmovdqu	16(%rsp), %xmm12
	vpaddq	%xmm2, %xmm6, %xmm2
	vpaddq	%xmm10, %xmm8, %xmm6
	vpaddq	%xmm9, %xmm11, %xmm8
	vpmuludq	%xmm13, %xmm0, %xmm9
	vpmuludq	%xmm13, %xmm1, %xmm1
	vpaddq	%xmm9, %xmm7, %xmm7
	vpaddq	%xmm1, %xmm5, %xmm1
	vpmuludq	%xmm12, %xmm3, %xmm3
	vpmuludq	%xmm12, %xmm4, %xmm5
	vpaddq	%xmm3, %xmm2, %xmm2
	vpaddq	%xmm6, %xmm5, %xmm3
	vpmuludq	(%rsp), %xmm4, %xmm4
	vpmuludq	128(%rsp), %xmm0, %xmm0
	vpaddq	%xmm4, %xmm2, %xmm2
	vmovdqu	%xmm7, %xmm7
	vpaddq	%xmm0, %xmm1, %xmm0
	vmovdqu	144(%rsp), %xmm1
	vpsrlq	$26, %xmm2, %xmm4
	vpsrlq	$26, %xmm7, %xmm5
	vpand	%xmm1, %xmm2, %xmm2
	vpand	%xmm1, %xmm7, %xmm6
	vpaddq	%xmm4, %xmm3, %xmm3
	vpaddq	%xmm5, %xmm0, %xmm0
	vpsrlq	$26, %xmm3, %xmm4
	vpsrlq	$26, %xmm0, %xmm5
	vpsllq	$2, %xmm5, %xmm7
	vpaddq	%xmm7, %xmm5, %xmm5
	vpand	%xmm1, %xmm3, %xmm3
	vpand	%xmm1, %xmm0, %xmm0
	vpaddq	%xmm4, %xmm8, %xmm4
	vpaddq	%xmm5, %xmm2, %xmm2
	vpsrlq	$26, %xmm4, %xmm5
	vpsrlq	$26, %xmm2, %xmm7
	vpand	%xmm1, %xmm4, %xmm4
	vpand	%xmm1, %xmm2, %xmm2
	vpaddq	%xmm5, %xmm6, %xmm5
	vpaddq	%xmm7, %xmm3, %xmm3
	vpsrlq	$26, %xmm5, %xmm6
	vpand	%xmm1, %xmm5, %xmm1
	vpaddq	%xmm6, %xmm0, %xmm0
	vpsllq	$26, %xmm3, %xmm3
	vpaddq	%xmm2, %xmm3, %xmm2
	vpsllq	$26, %xmm1, %xmm1
	vpaddq	%xmm4, %xmm1, %xmm1
	vpsrldq	$8, %xmm0, %xmm3
	vpaddq	%xmm0, %xmm3, %xmm0
	vpunpcklqdq	%xmm1, %xmm2, %xmm3
	vpunpckhqdq	%xmm1, %xmm2, %xmm1
	vpaddq	%xmm1, %xmm3, %xmm1
	vpextrq	$0, %xmm1, %rax
	vpextrq	$1, %xmm1, %rdx
	vpextrq	$0, %xmm0, %rbp
	movq	%rdx, %rbx
	shlq	$52, %rbx
	movq	%rdx, %r12
	shrq	$12, %r12
	movq	%rbp, %r13
	shrq	$24, %r13
	shlq	$40, %rbp
	addq	%rax, %rbx
	adcq	%rbp, %r12
	adcq	$0, %r13
	movq	%r13, %rax
	movq	%r13, %rdx
	andq	$3, %r13
	shrq	$2, %rax
	andq	$-4, %rdx
	addq	%rdx, %rax
	addq	%rax, %rbx
	adcq	$0, %r12
	adcq	$0, %r13
	jmp 	Lpoly1305_avx$11
Lpoly1305_avx$12:
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	addq	%rax, %rbx
	adcq	%rdx, %r12
	adcq	$1, %r13
	movq	%rbx, %rax
	mulq	%r9
	movq	%rax, %rbp
	movq	%rdx, %r14
	movq	%r12, %rax
	mulq	%r11
	addq	%rax, %rbp
	adcq	%rdx, %r14
	movq	$0, %r15
	movq	%rbx, %rax
	mulq	%r10
	addq	%rax, %r14
	adcq	%rdx, %r15
	movq	%r12, %rax
	mulq	%r9
	addq	%rax, %r14
	adcq	%rdx, %r15
	movq	%r13, %rax
	imulq	%r11, %rax
	addq	%rax, %r14
	adcq	$0, %r15
	imulq	%r9, %r13
	movq	%rbp, %rbx
	movq	%r14, %r12
	addq	%r15, %r13
	movq	%r13, %rax
	movq	%r13, %rdx
	andq	$3, %r13
	shrq	$2, %rax
	andq	$-4, %rdx
	addq	%rdx, %rax
	addq	%rax, %rbx
	adcq	$0, %r12
	adcq	$0, %r13
	addq	$16, %rsi
	addq	$-16, %r8
Lpoly1305_avx$11:
	cmpq	$16, %r8
	jnb 	Lpoly1305_avx$12
	cmpq	$0, %r8
	jbe 	Lpoly1305_avx$8
	movq	$0, 544(%rsp)
	movq	$0, 552(%rsp)
	movq	$0, %rax
	jmp 	Lpoly1305_avx$9
Lpoly1305_avx$10:
	movb	(%rsi,%rax), %dl
	movb	%dl, 544(%rsp,%rax)
	incq	%rax
Lpoly1305_avx$9:
	cmpq	%r8, %rax
	jb  	Lpoly1305_avx$10
	movb	$1, 544(%rsp,%rax)
	movq	544(%rsp), %rax
	movq	552(%rsp), %rdx
	addq	%rax, %rbx
	adcq	%rdx, %r12
	adcq	$0, %r13
	movq	%rbx, %rax
	mulq	%r9
	movq	%rax, %rsi
	movq	%rdx, %r8
	movq	%r12, %rax
	mulq	%r11
	addq	%rax, %rsi
	adcq	%rdx, %r8
	movq	$0, %rbp
	movq	%rbx, %rax
	mulq	%r10
	addq	%rax, %r8
	adcq	%rdx, %rbp
	movq	%r12, %rax
	mulq	%r9
	addq	%rax, %r8
	adcq	%rdx, %rbp
	movq	%r13, %rax
	imulq	%r11, %rax
	addq	%rax, %r8
	adcq	$0, %rbp
	imulq	%r9, %r13
	movq	%rsi, %rbx
	movq	%r8, %r12
	addq	%rbp, %r13
	movq	%r13, %rax
	movq	%r13, %rdx
	andq	$3, %r13
	shrq	$2, %rax
	andq	$-4, %rdx
	addq	%rdx, %rax
	addq	%rax, %rbx
	adcq	$0, %r12
	adcq	$0, %r13
Lpoly1305_avx$8:
	movq	%rbx, %rax
	movq	%r12, %rdx
	movq	%r13, %rsi
	addq	$5, %rax
	adcq	$0, %rdx
	adcq	$0, %rsi
	shrq	$2, %rsi
	negq	%rsi
	xorq	%rbx, %rax
	xorq	%r12, %rdx
	andq	%rsi, %rax
	andq	%rsi, %rdx
	xorq	%rax, %rbx
	xorq	%rdx, %r12
	movq	(%rcx), %rax
	movq	8(%rcx), %rcx
	addq	%rax, %rbx
	adcq	%rcx, %r12
	movq	%rbx, (%rdi)
	movq	%r12, 8(%rdi)
	jmp 	Lpoly1305_avx$2
Lpoly1305_avx$1:
	movq	$0, %r8
	movq	$0, %r9
	movq	$0, %r10
	movq	(%rcx), %r11
	movq	8(%rcx), %rbp
	movq	$1152921487695413247, %rax
	andq	%rax, %r11
	movq	$1152921487695413244, %rax
	andq	%rax, %rbp
	movq	%rbp, %rbx
	shrq	$2, %rbx
	addq	%rbp, %rbx
	addq	$16, %rcx
	movq	%rdx, %r12
	jmp 	Lpoly1305_avx$6
Lpoly1305_avx$7:
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	addq	%rax, %r8
	adcq	%rdx, %r9
	adcq	$1, %r10
	movq	%r8, %rax
	mulq	%r11
	movq	%rax, %r13
	movq	%rdx, %r14
	movq	%r9, %rax
	mulq	%rbx
	addq	%rax, %r13
	adcq	%rdx, %r14
	movq	$0, %r15
	movq	%r8, %rax
	mulq	%rbp
	addq	%rax, %r14
	adcq	%rdx, %r15
	movq	%r9, %rax
	mulq	%r11
	addq	%rax, %r14
	adcq	%rdx, %r15
	movq	%r10, %rax
	imulq	%rbx, %rax
	addq	%rax, %r14
	adcq	$0, %r15
	imulq	%r11, %r10
	movq	%r13, %r8
	movq	%r14, %r9
	addq	%r15, %r10
	movq	%r10, %rax
	movq	%r10, %rdx
	andq	$3, %r10
	shrq	$2, %rax
	andq	$-4, %rdx
	addq	%rdx, %rax
	addq	%rax, %r8
	adcq	$0, %r9
	adcq	$0, %r10
	addq	$16, %rsi
	addq	$-16, %r12
Lpoly1305_avx$6:
	cmpq	$16, %r12
	jnb 	Lpoly1305_avx$7
	cmpq	$0, %r12
	jbe 	Lpoly1305_avx$3
	movq	$0, 544(%rsp)
	movq	$0, 552(%rsp)
	movq	$0, %rax
	jmp 	Lpoly1305_avx$4
Lpoly1305_avx$5:
	movb	(%rsi,%rax), %dl
	movb	%dl, 544(%rsp,%rax)
	incq	%rax
Lpoly1305_avx$4:
	cmpq	%r12, %rax
	jb  	Lpoly1305_avx$5
	movb	$1, 544(%rsp,%rax)
	movq	544(%rsp), %rax
	movq	552(%rsp), %rdx
	addq	%rax, %r8
	adcq	%rdx, %r9
	adcq	$0, %r10
	movq	%r8, %rax
	mulq	%r11
	movq	%rax, %rsi
	movq	%rdx, %r12
	movq	%r9, %rax
	mulq	%rbx
	addq	%rax, %rsi
	adcq	%rdx, %r12
	movq	$0, %r13
	movq	%r8, %rax
	mulq	%rbp
	addq	%rax, %r12
	adcq	%rdx, %r13
	movq	%r9, %rax
	mulq	%r11
	addq	%rax, %r12
	adcq	%rdx, %r13
	movq	%r10, %rax
	imulq	%rbx, %rax
	addq	%rax, %r12
	adcq	$0, %r13
	imulq	%r11, %r10
	movq	%rsi, %r8
	movq	%r12, %r9
	addq	%r13, %r10
	movq	%r10, %rax
	movq	%r10, %rdx
	andq	$3, %r10
	shrq	$2, %rax
	andq	$-4, %rdx
	addq	%rdx, %rax
	addq	%rax, %r8
	adcq	$0, %r9
	adcq	$0, %r10
Lpoly1305_avx$3:
	movq	%r8, %rax
	movq	%r9, %rdx
	movq	%r10, %rsi
	addq	$5, %rax
	adcq	$0, %rdx
	adcq	$0, %rsi
	shrq	$2, %rsi
	negq	%rsi
	xorq	%r8, %rax
	xorq	%r9, %rdx
	andq	%rsi, %rax
	andq	%rsi, %rdx
	xorq	%rax, %r8
	xorq	%rdx, %r9
	movq	(%rcx), %rax
	movq	8(%rcx), %rcx
	addq	%rax, %r8
	adcq	%rcx, %r9
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
Lpoly1305_avx$2:
  movq	-8(%rsp), %rsp
	addq	$560, %rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbx
	popq	%rbp
	ret 
	.data
	.globl	_bit25_u64
	.globl	bit25_u64
	.p2align	3
_bit25_u64:
bit25_u64:
	.quad	16777216
	.globl	_mask26_u64
	.globl	mask26_u64
	.p2align	3
_mask26_u64:
mask26_u64:
	.quad	67108863
	.globl	_five_u64
	.globl	five_u64
	.p2align	3
_five_u64:
five_u64:
	.quad	5
	.globl	_zero_u64
	.globl	zero_u64
	.p2align	3
_zero_u64:
zero_u64:
	.quad	0
