.section .data
a: .byte 10
b: .byte 5, 10, 15, 20, 25
x: .space 1
y: .space 1
z: .space 1

.section .text
	.global main
	
main:
    lds r18, a; r18 = a
    sts x, r18; x = r18

    lds r19, b; r19 = b[0]
    add r19, r18; r19 = b[0] + a
    sts y, r19; y = b[0] + a

    mov r20, r19; r20 = r10
    add r20, r18; r20 += r18
    sts z, r20; z = 420
    
    ret
	
.end
