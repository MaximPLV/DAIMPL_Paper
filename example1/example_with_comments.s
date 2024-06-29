	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 0
	.file	"example.c"
	.def	funct;
	.scl	2;
	.type	32;
	.endef
	.globl	funct                           # -- Begin function funct
	.p2align	4, 0x90
funct:                                  # @funct
.seh_proc funct
# %bb.0:
	pushq	%rax
	.seh_stackalloc 8
	.seh_endprologue
	movl	%ecx, 4(%rsp)
	movl	4(%rsp), %eax
	shll	%eax                	# shift by 1
	movl	$2, %ecx
	cltd
	idivl	%ecx			# divide by 2
	popq	%rcx
	retq
	.seh_endproc
                                        # -- End function
	.addrsig
