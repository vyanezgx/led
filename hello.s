	.arch armv6
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"hello.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	bl	gpioInitialise
	mov	r3, r0
	cmp	r3, #0
	bne	.L2
	mvn	r3, #0
	b	.L5
.L2:
	mov	r0, #17
	mov	r1, #1
	bl	gpioSetMode
	mov	r0, #27
	mov	r1, #1
	bl	gpioSetMode
	mov	r0, #22
	mov	r1, #1
	bl	gpioSetMode
.L4:
	mov	r0, #1
	bl	sleep
	mov	r0, #17
	mov	r1, #0
	bl	gpioWrite
	mov	r0, #27
	mov	r1, #1
	bl	gpioWrite
	mov	r0, #22
	mov	r1, #1
	bl	gpioWrite
	mov	r0, #1
	bl	sleep
	mov	r0, #17
	mov	r1, #1
	bl	gpioWrite
	mov	r0, #27
	mov	r1, #0
	bl	gpioWrite
	mov	r0, #22
	mov	r1, #1
	bl	gpioWrite
	mov	r0, #1
	bl	sleep
	mov	r0, #17
	mov	r1, #1
	bl	gpioWrite
	mov	r0, #27
	mov	r1, #1
	bl	gpioWrite
	mov	r0, #22
	mov	r1, #0
	bl	gpioWrite
	mov	r0, #1
	bl	sleep
	b	.L4
.L5:
	mov	r0, r3
	ldmfd	sp!, {fp, pc}
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
