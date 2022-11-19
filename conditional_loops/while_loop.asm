.section .data

.section .text
    .global main

main:

loop_comparison: ; you need to check this each time before starting a loop
    CP R1, R2 ; comparison doesn't have to be R1 and R2 specifically, it can be any 2 registers
    BRLO end_loop; If less than, leave loop (REPLACE BRLO WITH WHATEVER BRANCHING INSTRUCTION YOU NEED)

start_loop_body: ; This line is just here for you to remember the start of the while loop body. You don't have to add it in though.
    [loop body code here] ; You didn't branch. Therefore, you must be in the 'loop body' case, add relevant code for the 'loop body' case here.
    JMP loop_comparison  ; after completion of the 'if then' go to code after the IF statement, skip the ELSE case

end_loop:
    [code here] ; Code after the while loop should go here.

    ret

.end
