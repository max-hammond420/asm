.section .data

.section .text
    .global main

main:
    CP R1, R2 ; comparison doesn't have to be R1 and R2 specifically, it can be any 2 registers
    BRSH if ; If same of higher, jump to if case (REPLACE BRSH WITH WHATEVER BRANCHING INSTRUCTION YOU NEED)

else:  ; This line is just here for you to remember this is the ELSE part. You don't have to add it in though.
    [ELSE code here] ; You didn't jump. You must be in the ELSE case, add relevant code for the ELSE case here.
    JMP end_if ; after completion of the ELSE go to code after the whole if/else statement (skip the IF case code)

if:           
    [IF code here] ; You did jump/branch. You must be in the IF case, add relevant code for the IF case here.

end_if:
    [code here] ; Code after the if/else statement should go here.

.end
