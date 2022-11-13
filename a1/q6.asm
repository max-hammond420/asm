.section .data
name: .space 2
currentSpeed: .byte 3
currentDirection: .byte 1, 12
last_5_instruction: .ascii "ARLS"

.section .text
    .global main


main:

    lds r16, currentSpeed; r16 = currentSpeed
    inc r16; r16++
    sts currentSpeed, r16; currentSpeed++
    ret; end

.end

