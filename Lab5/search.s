	.file	"search.c"
	.text
	.section	.rodata
.LC0:
	.string	"\t %ld"
	.align 8
.LC1:
	.string	"\n Enter the key you want to search:"
.LC2:
	.string	"%ld"
	.align 8
.LC3:
	.string	"\n Position of key( %ld ) is %ld \n"
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
	subq	$144, %rsp
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
	movq	$0, -128(%rbp)
	jmp	.L2
.L3:
	movq	-128(%rbp), %rax
	movq	-112(%rbp,%rax,8), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$1, -128(%rbp)
.L2:
	cmpq	$11, -128(%rbp)
	jle	.L3
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-136(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$12, %esi
	movq	%rax, %rdi
	call	linSearch@PLT
	movq	%rax, -120(%rbp)
	movq	-136(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
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
