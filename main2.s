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
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)		 # N - size of arr
	movq	%rsi, -32(%rbp)		 # link to arr (*a)
	movl	$0, -8(%rbp)		 # ma - max in arr A
	movl	$0, -4(%rbp)
	jmp	.L2
.L4:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi #%d for scanf
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-4(%rbp), %eax # save result of scanf
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jge	.L3
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rbp)
.L3:
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L4
	movl	-8(%rbp), %eax #return ma
	leave
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
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp) #N - size of arr B
	movq	%rsi, -32(%rbp) #link to arr B
	movl	$0, -4(%rbp)
	jmp	.L7
.L8:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L7:
	movl	-4(%rbp), %eax # void func - no return 
	cmpl	-20(%rbp), %eax
	jl	.L8
	nop
	leave
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
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp) #link to arr A
	movq	%rsi, -32(%rbp) #link to arr B
	movl	%edx, -36(%rbp) #ma - max element from arr A
	movl	%ecx, -40(%rbp) #N - size of arr A
	movl	$0, -4(%rbp)
	jmp	.L10
.L13:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	jns	.L11
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, (%rdx)
	jmp	.L12
.L11:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-32(%rbp), %rdx
	addq	%rcx, %rdx
	movl	(%rax), %eax
	movl	%eax, (%rdx)
.L12:
	addl	$1, -4(%rbp)
.L10:
	movl	-4(%rbp), %eax # void func - no return
	cmpl	-40(%rbp), %eax
	jl	.L13
	nop
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
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-96(%rbp), %eax
	cltq
	salq	$2, %rax
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
	movl	%eax, -92(%rbp)
	movl	-96(%rbp), %eax
	cltq
	salq	$2, %rax
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
