	.file	"example.c"
	.text
	.p2align 4
	.globl	funct
	.def	funct;	.scl	2;	.type	32;	.endef
	.seh_proc	funct
funct:
	.seh_endprologue
	leal	(%rdx,%rcx,2), %eax
	addl	%ecx, %ecx
	addl	%r8d, %eax
	subl	%ecx, %eax
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 14.1.0"
