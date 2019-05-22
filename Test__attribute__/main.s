	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_inlineFunction         ## -- Begin function inlineFunction
	.p2align	4, 0x90
_inlineFunction:                        ## @inlineFunction
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	L__unnamed_cfstring_(%rip), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	_NSLog
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset %rbx, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -52(%rbp)
	movl	%edi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	callq	_objc_autoreleasePoolPush
	leaq	L__unnamed_cfstring_.2(%rip), %rsi
	movl	$32, %edi
	movl	%edi, %ecx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	movb	$0, %al
	callq	_NSLog
	leaq	L__unnamed_cfstring_.4(%rip), %rcx
	leaq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rsi, %rdx
	addq	$8, %rdx
	movq	%rsi, %r8
	addq	$11, %r8
	movq	%rsi, %r9
	addq	$11, %r9
	addq	$15, %r9
	movq	%rdi, -80(%rbp)         ## 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -88(%rbp)         ## 8-byte Spill
	movq	-88(%rbp), %rcx         ## 8-byte Reload
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         ## 8-byte Reload
	movq	-96(%rbp), %r10         ## 8-byte Reload
	movq	%r8, -104(%rbp)         ## 8-byte Spill
	movq	%r10, %r8
	movq	-104(%rbp), %r11        ## 8-byte Reload
	movq	%r9, -112(%rbp)         ## 8-byte Spill
	movq	%r11, %r9
	movq	-112(%rbp), %rbx        ## 8-byte Reload
	movq	%rbx, (%rsp)
	movb	$0, %al
	callq	_NSLog
	leaq	L__unnamed_cfstring_(%rip), %rcx
	movq	%rcx, %rdi
	movb	$0, %al
	callq	_NSLog
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	callq	_objc_autoreleasePoolPop
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-16(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	LBB1_2
## %bb.1:
	xorl	%eax, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
LBB1_2:
	callq	___stack_chk_fail
	ud2


                                        ## -- End function
	.section	__TEXT,__ustring
	.p2align	1               ## @.str
l_.str:
	.short	36825                   ## 0x8fd9
	.short	26159                   ## 0x662f
	.short	19968                   ## 0x4e00
	.short	20010                   ## 0x4e2a
	.short	20869                   ## 0x5185
	.short	32852                   ## 0x8054
	.short	20989                   ## 0x51fd
	.short	25968                   ## 0x6570
	.short	0                       ## 0x0

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_
L__unnamed_cfstring_:
	.quad	___CFConstantStringClassReference
	.long	2000                    ## 0x7d0
	.space	4
	.quad	l_.str
	.quad	8                       ## 0x8

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"%lu"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.2
L__unnamed_cfstring_.2:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.1
	.quad	3                       ## 0x3

	.section	__TEXT,__cstring,cstring_literals
L_.str.3:                               ## @.str.3
	.asciz	"\n--%p\n--%p\n--%p\n--%p\n--%p\n--%p"

	.section	__DATA,__cfstring
	.p2align	3               ## @_unnamed_cfstring_.4
L__unnamed_cfstring_.4:
	.quad	___CFConstantStringClassReference
	.long	1992                    ## 0x7c8
	.space	4
	.quad	L_.str.3
	.quad	30                      ## 0x1e

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	64


.subsections_via_symbols
