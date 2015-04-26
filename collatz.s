/* -- collatz.s */
/* checks to confirm that numbers work with the collatz theorem */
.text
.global main
main:
	mov r1, #0
	mov r2, #0 /* number of steps */
loop:
	cmp r1, #1
	beq end

	and r3, r1, #1 /* r3 = r1 & 1 */
	cmp r3, #0
	bne odd
even:
	mov r1, r1, ASR #1 /* r1 = (r1 >> 1) */
	b end_loop
odd:
	add r1, r1, r1, LSL #1 /* r1 = r1 + (r1 << 1) */
	add r1, r1, #1 /* r1 = r1 + 1 */

end_loop:
	add r2, r2, #1
	b loop

end:
	mov r0, r2
	bx lr
