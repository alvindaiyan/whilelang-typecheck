
	.text
wl_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	subq $16, %rsp
	movq %rdi, 8(%rsp)
	movq %rdi, 0(%rsp)
	movq %rsp, %rdi
	movq 8(%rdi), %rax
	movq %rax, -8(%rbp)
	movq 0(%rdi), %rax
	movq %rax, -16(%rbp)
	movq %rbp, %rdi
	addq $-16, %rdi
	leaq label1(%rip), %rsi
	call _print
	movq %rbp, %rsi
	addq $-16, %rsi
	movq %rdi, 8(%rsi)
	movq %rbp, %rdi
	addq $-16, %rdi
	leaq label2(%rip), %rsi
	call _print
label0:
	movq %rbp, %rsp
	popq %rbp
	ret
	.globl _main
_main:
	pushq %rbp
	call wl_main
	popq %rbp
	ret

	.data
label1:
	.quad 6
	.quad 2
	.quad 4
	.asciz "code"
	.quad 3
	.quad 4
	.asciz "flag"
	.quad 1
label2:
	.quad 6
	.quad 2
	.quad 4
	.asciz "code"
	.quad 3
	.quad 4
	.asciz "flag"
	.quad 1
