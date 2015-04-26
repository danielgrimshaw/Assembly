/* -- load.s */

/* -- Data section */
.data

/* Ensure variable is 4-byte aligned */
.balign 4
/* Define storage for myvar1 */
myvar1:
	.word 3

.balign 4
myvar2:
	.word 4

/* -- Code section */
.text

/* Ensure code is 4-byte aligned */
.balign 4
.global main
main:
	ldr r1, addr_of_myvar1
	ldr r1, [r1]
	ldr r2, addr_of_myvar2
	ldr r2, [r2]
	add r0, r1, r2
	bx lr

/* Labels needed to cess data */
addr_of_myvar1 : .word myvar1
addr_of_myvar2 : .word myvar2
