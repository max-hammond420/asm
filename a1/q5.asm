.section .data
a: .byte 10
b: .byte 5, 10, 15, 20, 25
x: .space 1
y: .space 1
x: .space 1

.section .text
    .global main

main:
    ;; set X pointer to x
    ldi r27, hi8(x)
    ldi r26, lo8(x)

    ;; x = a + b[4]
    ld r16, -X; predecrement X to b[-1] or, b[4], store in r16
    ldi r17, a; r17 = a
    add r16, r17; r16 = a + b[4]
    sts x, r16; x = a + b[4]

    ;; y = x + b[3]
    ld r18, -X; predecrement X, r18 = b[3]
    add r16, r18; x = x + b[4]
    sts y, r16; y = x + b[4]

    ;; z = y + b[2]
    ld r19, -X; predecrement X to b[2]
    add r16, r19; y = y + b[2]
    sts y, r16; y + y + b[2]

.end 

