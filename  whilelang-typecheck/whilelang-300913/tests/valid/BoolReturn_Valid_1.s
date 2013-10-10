
	.text
wl_pred:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	movq %rdi, 24(%rbp)
	jmp label0
label0:
	movq %rbp, %rsp
	popq %rbp
	ret
wl_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	subq $16, %rsp
	call wl_pred
	movq 8(%rsp), %rdi
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
	.quad 1
