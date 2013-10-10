
	.text
wl_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $32, %rsp
	subq $16, %rsp
	movq %rdi, 8(%rsp)
	movq %rdi, 0(%rsp)
	movq %rsp, %rdi
	movq 8(%rdi), %rax
	movq %rax, -24(%rbp)
	movq 0(%rdi), %rax
	movq %rax, -32(%rbp)
	subq $16, %rsp
	movq %rdi, 8(%rsp)
	movq %rdi, 0(%rsp)
	movq %rsp, %rdi
	movq 8(%rdi), %rax
	movq %rax, -8(%rbp)
	movq 0(%rdi), %rax
	movq %rax, -16(%rbp)
	movq %rbp, %rdi
	addq $-32, %rdi
	leaq label1(%rip), %rsi
	call _print
	movq %rbp, %rdi
	addq $-16, %rdi
	leaq label2(%rip), %rsi
	call _print
	movq %rbp, %rsi
	addq $-32, %rsi
	movq %rdi, 0(%rsi)
	movq %rbp, %rdi
	addq $-32, %rdi
	leaq label3(%rip), %rsi
	call _print
	movq %rbp, %rdi
	addq $-16, %rdi
	leaq label4(%rip), %rsi
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
	.quad 2
	.asciz "f1"
	.quad 3
	.quad 2
	.asciz "f2"
	.quad 3
label2:
	.quad 6
	.quad 2
	.quad 2
	.asciz "f1"
	.quad 3
	.quad 2
	.asciz "f2"
	.quad 3
label3:
	.quad 6
	.quad 2
	.quad 2
	.asciz "f1"
	.quad 3
	.quad 2
	.asciz "f2"
	.quad 3
label4:
	.quad 6
	.quad 2
	.quad 2
	.asciz "f1"
	.quad 3
	.quad 2
	.asciz "f2"
	.quad 3
