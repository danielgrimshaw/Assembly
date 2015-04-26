/* -- first.s */
/* This is a comment */
.global main /* this is our entry point */
.func main /* main is a funtion */

main:	/* this is main */
	mov r0, #2 /* Put a 2 into register r0 */
	bx lr /* return from main */
