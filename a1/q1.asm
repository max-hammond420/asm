.section .data
a: .byte 10
b: .byte 5, 10, 15, 20, 25
x: .space 1
y: .space 1
x: .space 1

.section .text
	.global main
	
main:
    ret
	
.end
