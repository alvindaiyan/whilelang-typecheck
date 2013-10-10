
	.text
wl_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	imulq %rbx, %rdi
	addq %rbx, %rdi
	movq %rdi, -8(%rbp)
	movq -8(%rbp), %rdi
	leaq label1(%rip), %rsi
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
	.quad 3
