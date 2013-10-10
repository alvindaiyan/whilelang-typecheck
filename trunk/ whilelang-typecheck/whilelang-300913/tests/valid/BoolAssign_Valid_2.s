
	.text
wl_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq %rdi, -16(%rbp)
	movq %rdi, -8(%rbp)
	movq -16(%rbp), %rdi
	leaq label1(%rip), %rsi
	call _print
	movq -8(%rbp), %rdi
	leaq label2(%rip), %rsi
	call _print
	leaq label3(%rip), %rsi
	call _print
	movq -16(%rbp), %rdi
	movq -8(%rbp), %rbx
	andq %rbx, %rdi
	movq %rdi, -16(%rbp)
	movq -16(%rbp), %rdi
	leaq label4(%rip), %rsi
	call _print
	leaq label5(%rip), %rsi
	call _print
	movq -16(%rbp), %rdi
	notq %rdi
	andq $1, %rdi
	leaq label6(%rip), %rsi
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
	.quad 1
label2:
	.quad 1
label3:
	.quad 5
label4:
	.quad 1
label5:
	.quad 5
label6:
	.quad 1
