.section .data
a: .byte 10
b: .byte 5, 10, 15, 20, 25
x: .space 1
y: .space 1
x: .space 1

.section .test
    .global main

main:
    ;; Store address of b in Y register
    r29 = hi8(b);
    r28 = lo8(b);

    ;; x = a + b[2]
    lds r18, a; r18 = a
    ldd r19, Y+2; r19 = b[2], Y doesn't move
    add r18, r19; r18 = r18 + r19 = a + b[2]
    sts x, r18; x = a + b[2]

    ;; y = x + b[3]
    lds r20, Y+3; r20 = b[3]
    add r20, r18; r20 = x + b[3]
    sts y, r20; y = x + b[3]

    ;; z = y + b[4]
    lds r21, Y+4; r21 = y[4]
    add r21, r20; r21 = y + b[4]
    sts z, r21; store r21 into z, z = y + b[4]


.end
