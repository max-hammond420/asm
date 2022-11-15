.section .data

.section .text
    .global main

main:
    CP R1, R2 ; comparison doesn't have to be R1 and R2 specifically, it can be any 2 registers, 
    BRLO else ; If less than, jump to else case (REPLACE BRLO WITH WHATEVER BRANCHING INSTRUCTION YOU NEED)

if:            ; This line is just here for you to remember this is the IF part. You don't have to add it in though.
    [IF code here] ; You didn't jump. Therefore, you must be in the 'if then' case, add relevant code for the 'if then' case here.
    JMP end_if  ; after completion of the 'if then' go to code after the IF statement, skip the ELSE case

else:
    [ELSE code here] ; You did jump/branch. Therefore, you must be in the ELSE case, add relevant code for the ELSE case here.

end_if:
    [code here] ; Code after the if/else statement should go here.
    ret

.end
