.section .data
a: .byte 5, 4, 3, 2, 1
length: .byte 5

.section .text
    .global main

main:

    ;; store the address of a in X
    LDI r27, hi8(a);
    LDI r26, hi8(a);

    ;; upper bound for outer loop
    LDS r19, length; r19 = length 
    SUBI r19, 1; r19 = length -1 upper bound of the loop
    
    ;; upper bound for inner loop
    LDS r18, length; r18 = length,
    SUB r18, r19; r18 = length - i - 1

    LDI r16, 0; r0 = 0, going to be used as i
    LDI r17, 0; r1 = 0, going to be used as j


;; for (int i = 0; i < length -1; i++)
loop_comparison1:
    CP r16, r19;
    BRSH end_loop1

;; loop_body1 is the 2nd for loop
loop_comparison2:
    CP r17, r18;
    BRSH end_loop2

start_loop_body2:
    LD r21 X+r17; r22 = a[j]
    LD r22 X+r17+1; r21 = a[j+1]

    CP r21, r22; compare r21 and r22
    BRLT else
    
if:
    push r21
    push r22
    call swap
    pop r22
    pop r21

else:
    ;; incrementing the loop iterator
    ADD r17, 1; r1++ 
    JMP loop_comparison2

end_loop1:
    ADD r16, 1; r1++
    JMP end

swap:
    pop r5; r5 = a[j]
    pop r4; r4 = a[j+1]
    LDI r6, r4; tmp variable
    ST X+r1, r4;
    ST X+r1+1, r6
    ret

end:
    ret

.end
