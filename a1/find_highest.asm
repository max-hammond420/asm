;; finds the highest value of a 4 byte integer array

.section .data
a: .byte, 1, 2, 3, 4
length: .byte, 4

.section .text
    .global main

main:
    ;; address of a stored in X pointer
    ldi r27, hi8(a)
    ldi r26, lo8(a)

    ld r1, X+; r0 = a[0], move X pointer 1 across
    MOV r0, r1; r1 = r0
    ldi r10, 0; r10 = 0
    lds r11, length; r11 = length = 4

loop:
    ;; if r0 is less then r1, make r0 r1
    ;; increments r10, and keeps going until r10 >= r11
    ;; i.e. for loop from 0 to 4

    cpi r0 r1; r0 - r1
    brlt if_less; go to if_less

    ;; update r1
    ld r1, X+; 

    ;; increment loop counter, ld10
    inc r10
    cpi r10, r11;
    breq end; go to the end if r10 = 4
    


if_less:
    ;; if r0 < r1, r0 = r1
    mov r0, r1; r0 = r1
    jmp loop; go back to the loop

.end
