
	.text
wl_f:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq 40(%rbp), %rdi
	movq 32(%rbp), %rbx
	cmpq %rbx, %rdi
	jz label1
	movq $0, %rdi
	jmp label2
label1:
	movq $1, %rdi
label2:
	movq %rdi, -8(%rbp)
label0:
	movq %rbp, %rsp
	popq %rbp
	ret
wl_g:
	pushq %rbp
	movq %rsp, %rbp
	subq $16, %rsp
	movq 40(%rbp), %rdi
	movq 32(%rbp), %rbx
	cmpq %rbx, %rdi
	jge label4
	movq $0, %rdi
	jmp label5
label4:
	movq $1, %rdi
label5:
	movq %rdi, -8(%rbp)
label3:
	movq %rbp, %rsp
	popq %rbp
	ret
wl_main:
	pushq %rbp
	movq %rsp, %rbp
	subq $0, %rsp
	subq $32, %rsp
	movq %rdi, 24(%rsp)
	movq %rdi, 16(%rsp)
	call wl_f
	movq 8(%rsp), %rdi
	leaq label7(%rip), %rsi
	call _print
	subq $32, %rsp
	movq %rdi, 24(%rsp)
	movq %rdi, 16(%rsp)
	call wl_f
	movq 8(%rsp), %rdi
	leaq label8(%rip), %rsi
	call _print
	subq $32, %rsp
	movq %rdi, 24(%rsp)
	movq %rdi, 16(%rsp)
	call wl_f
	movq 8(%rsp), %rdi
	leaq label9(%rip), %rsi
	call _print
	subq $32, %rsp
	movq %rdi, 24(%rsp)
	movq %rdi, 16(%rsp)
	call wl_g
	movq 8(%rsp), %rdi
	leaq label10(%rip), %rsi
	call _print
	subq $32, %rsp
	movq %rdi, 24(%rsp)
	movq %rdi, 16(%rsp)
	call wl_g
	movq 8(%rsp), %rdi
	leaq label11(%rip), %rsi
	call _print
label6:
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
label7:
	.quad 3
label8:
	.quad 3
label9:
	.quad 3
label10:
	.quad 3
label11:
	.quad 3
