	.file	"example.c"
	.text
	.globl	funct
	.def	funct;	.scl	2;	.type	32;	.endef
	.seh_proc	funct
funct:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 14.1.0"
