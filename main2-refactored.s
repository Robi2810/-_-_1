	.file	"main2.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	input_max
	.type	input_max, @function
input_max:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	pushq	%r15
	pushq	%r12
	pushq	%r13
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %r12 # N - size of arr
	movq	%rsi, %r13 # (*a) - link to arr 
	movq	$0, %r15 # ma
	movq	$0, %r14 # i 
	jmp	.L2
.L4:
	movq	%r14, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r13, %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	call	__isoc99_scanf@PLT
	movq	%r14, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r13, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cltq
	cmpq	%rax, %r15
	jge	.L3
	movq	%rax, %r15
.L3:
	addq	$1, %r14
.L2:
	movq	%r14, %rax
	cmpq	%r12, %rax
	jl	.L4
	movq	%r15, %rax #return ma
	movq	%rbp, %rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	input_max, .-input_max
	.section	.rodata
.LC1:
	.string	"%d "
	.text
	.globl	out_put
	.type	out_put, @function
out_put:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %r12 #N - size of arr B
	movq	%rsi, %r13 #link to arr B
	movq	$0, %r14 # i = 0 in for
	jmp	.L7
.L8:
	movq	%r14, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r13, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$1, %r14
.L7:
	movq	%r14, %rax # void func - no return 
	cmpq	%r12, %rax
	jl	.L8
	nop
	movq	%rbp, %rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	out_put, .-out_put
	.globl	task
	.type	task, @function
task:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, %r12 #link to arr A
	movq	%rsi, %r13 #link to arr B
	movq	%rdx, %r14 #ma - max element from arr A
	movq	%rcx, %r15 #N - size of arr A
	movq	$0, %rbx #i = 0 in for
	jmp	.L10
.L13:
	movq	%rbx, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L11
	movq	%rbx, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r13, %rax
	addq	%rax, %rdx
	movq	%r14, %rax
	movl	%eax, (%rdx)
	jmp	.L12
.L11:
	movq	%rbx, %rax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	%r12, %rax
	addq	%rdx, %rax
	movq	%rbx, %rdx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	%r13, %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
.L12:
	addq	$1, %rbx
.L10:
	movq	%rbx, %rax # void func - no return
	cmpq	%r15, %rax
	jl	.L13
	nop
	movq	%rbp, %rsp 
	popq	%rbx
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	task, .-task
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rbx
	movl	$0, -92(%rbp) #ma = 0
	movl	$0, -96(%rbp) #N = 0
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-96(%rbp), %eax
	cltq
	salq	$2, %rax # arr a
	movq	%rax, %rdx
	subq	$1, %rdx
	movq	%rdx, -88(%rbp)
	movq	%rax, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	%rax, -128(%rbp)
	movq	$0, -120(%rbp)
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdx
	movl	-96(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	input_max
	movl	%eax, -92(%rbp) # ma = input_max
	movl	-96(%rbp), %eax
	cltq
	salq	$2, %rax	 #arr b
	movq	%rax, %rdx
	subq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movq	%rax, %r14
	movl	$0, %r15d
	movq	%rax, %r12
	movl	$0, %r13d
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -64(%rbp)
	movl	-96(%rbp), %ecx
	movq	-64(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	-92(%rbp), %edx
	movq	%rax, %rdi
	call	task
	movq	-64(%rbp), %rdx
	movl	-96(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	out_put
	movl	$0, %eax
	movq	%rbx, %rsp
	movq	-56(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L16
	call	__stack_chk_fail@PLT
.L16:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
