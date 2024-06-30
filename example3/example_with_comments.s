	.file	"example.c"
	.text
	.p2align 4
	.globl	funct
	.def	funct;	.scl	2;	.type	32;	.endef
	.seh_proc	funct
funct:
	.seh_endprologue
	leal	(%rdx,%rcx,2), %eax # load the result of b + 2 * a into eax 
	addl	%ecx, %ecx # add a to itself and store it in ecx
	addl	%r8d, %eax # add c to the value in the eax register
	subl	%ecx, %eax # substract the value in the ecx register from the value in the eax register
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 14.1.0"
	# as you can see the compiler just rearranged our calculation into b + 2 * a + c - (a + a) 
	# which may have optimized the programm a bit, but is still far from just adding b and c