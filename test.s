	.file	"test.cc"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	li	a5,1
	sb	a5,-17(s0)
	sb	zero,-18(s0)
	li	a5,1
	sb	a5,-19(s0)
	lbu	a5,-17(s0)
	bne	a5,zero,.L2
	lbu	a5,-18(s0)
	beq	a5,zero,.L3
.L2:
	lbu	a5,-19(s0)
	beq	a5,zero,.L3
	li	a5,1
	j	.L4
.L3:
	li	a5,0
.L4:
	sb	a5,-20(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 10.1.0"
