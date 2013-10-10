
	.text
wl_f1:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq %rdi, 16(%rbp)
	jmp label0
label0:
	movq %rbp, %rsp
	popq %rbp
	ret
wl_f2:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq %rdi, 16(%rbp)
	jmp label1
label1:
	movq %rbp, %rsp
	popq %rbp
	ret
wl_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	subq $16, %rsp
	movq %rdi, 8(%rsp)
	call wl_f2
	movq 0(%rsp), %rdi
	leaq label3(%rip), %rsi
	call _print
	subq $16, %rsp
	movq %rdi, 8(%rsp)
	call wl_f1
	movq 0(%rsp), %rdi
	leaq label4(%rip), %rsi
	call _print
label2:
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
label3:
	.quad 5
label4:
	.quad 5
