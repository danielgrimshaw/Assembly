/* compare.s */
.text
.global main
main:
	mov r1, #2
	mov r2, #3
	cmp r1, r2
	beq case_equal

case_different:
	mov r0, #2
	b end

case_equal:
	mov r0, #1
	b end

end:
	bx lr
