.macro askNum
	ldr x1, =entry
	mov x2, #2	
	mov x8, #63
	svc 0
	
	ldrb w4, [x1], #1
	ldrb w5, [x1]
	mov x6, x4
	sub x6, x6, #48
	cmp x5, #10
	b.eq 2f
	mov x7, x5
	sub x7, x7, #48
	
1:
	.rept 10
	add x3, x3, x6 
	.endr

	add x3, x3, x7
	b 3f

2:
	mov x3, x6

3:
	mov x0, x3

.endm
