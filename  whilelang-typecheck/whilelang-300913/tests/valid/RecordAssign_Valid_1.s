
	.text
wl_f:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	subq $16, %rsp
	movq %rdi, 8(%rsp)
	movq %rdi, 0(%rsp)
	movq %rsp, %rdi
	movq 8(%rdi), %rax
	movq %rax, 24(%rbp)
	movq 0(%rdi), %rax
	movq %rax, 16(%rbp)
	jmp label0
label0:
	movq %rbp, %rsp
	popq %rbp
	ret
wl_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	subq $16, %rsp
	call wl_f
	movq %rsp, %rdi
	addq $0, %rdi
	movq 8(%rdi), %rax
	movq %rax, -8(%rbp)
	movq 0(%rdi), %rax
	movq %rax, -16(%rbp)
	movq %rbp, %rdi
	addq $-16, %rdi
	movq 8(%rdi), %rdi
	subq %rbx, %rdi
	movq %rbp, %rsi
	addq $-16, %rsi
	movq %rdi, 0(%rsi)
	movq %rbp, %rdi
	addq $-16, %rdi
	leaq label2(%rip), %rsi
	call _print
label1:
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
label2:
	.quad 6
	.quad 2
	.quad 2
	.asciz "f1"
	.quad 3
	.quad 2
	.asciz "f2"
	.quad 3
