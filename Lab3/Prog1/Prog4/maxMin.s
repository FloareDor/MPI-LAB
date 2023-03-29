	.file	"maxMin.c"
	.text
	.section	.rodata
.LC0:
	.string	"\n Maximum element is %ld \n"
.LC1:
	.string	"\n Minimum element is %ld \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$10, -112(%rbp)
	movq	$20, -104(%rbp)
	movq	$90, -96(%rbp)
	movq	$2250, -88(%rbp)
	movq	$60, -80(%rbp)
	movq	$12340, -72(%rbp)
	movq	$77, -64(%rbp)
	movq	$99, -56(%rbp)
	movq	$12, -48(%rbp)
	movq	$-4, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$56, -24(%rbp)
	leaq	-112(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	maxN@PLT
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-112(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	minN@PLT
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L3
	call	__stack_chk_fail@PLT
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-10ubuntu2) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
