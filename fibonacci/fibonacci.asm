.section .data
term: .byte 6
result: .space 6

.section .text
    .global main

main:
    LDS r18, term; r18 = 6
    
    LDI r31, hi8(result)
    LDI r30, lo8(result)

    LDI r20, 0; 1st term
    LDI r21, 1; 2nd term

    ST Z+, r20;
    ST Z+, r21;

    DEC r18;
    DEC r18; r18 = 4

loop:
    CPI r18, 0; r18 - 0,
    BREQ after_loop; if r18 = 0, end loop

    ADD r20, r21; r20 = r20 + r21
    ST Z+, r20; next element of z becomes r20

    ;; move the bigger one to r21,
    MOV r22, r20; tmp variable
    MOV r20, r21;
    MOV r21, r22;

    DEC r18; r18--

    JMP loop
     
after_loop:
    ret

.end
