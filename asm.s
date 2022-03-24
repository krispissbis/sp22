.data 
array:
	.short 5, 45, 36, 4, 57, 13, 7, 44, 68, 10
array_end:

format_print:
	.string "%d "

format_end_print:
	.string "\n"

.text
.globl main

main:
	movl $5, %ecx
	movl $array, %esi
	addl $2, %esi
cir:
	movw (%esi), %ax
	notb %al
	movw %ax, (%esi)

	addl $4, %esi
	loop cir

	movl $array, %esi

print_loop:

	movl $0, %edx
	movw (%esi), %dx
	pushl %edx
	pushl $format_print
	call printf
	addl $8, %esp

	addl $2, %esi

	cmp $array_end, %esi
	jne print_loop

	push $format_end_print
	call printf
	addl $4, %esp

	movl $1, %eax
	movl $0, %ebx
	int $0x80
