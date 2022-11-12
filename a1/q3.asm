.section .data
a: .byte 10
b: .byte 5, 10, 15, 20, 25
x: .space 1
y: .space 1
x: .space 1


.section .text
    .global main

main:
    ;; Store the address of b in X register
    ldi r27, hi8(b);
    ldi r27, lo8(b);

    ;; x = a + b[0]
    lds r18, a; r18 = a 
    ld r19, X+; r19 = b[0], move x register 1 over
    add r19, r18; 
    sts x, r19; x = a + b[0]

    ;; y = x + b[1]
    lds r20, X+; r20 = b[1], move x register 1 over
    add r19, r20; x = x + b[1]
    sts y, r19; y = x + b[1]

    ;; z = y + b[2]
    lds r21, X+; r21 = b[2], move x register 1 over
    add r19, r21; r19 = (y) + b[2]
    sts y, r19; y = x + b[2]

    ret

.end
