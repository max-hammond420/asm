.section .data

.section .text
    .global main

main:

init_loop_iterator:
    [initialise_loop_iterator] ; Initialise the loop iterator (which counts how far through the loop you are)

loop_comparison: ; you need to check if you've finished the loop. P.S. you may need to load the value of your iterator from memory if you used too many registers in the loop body
    CP R1, R2 ; comparison doesn't have to be R1 and R2 specifically, it can be any 2 registers
    BRSH end_loop; If less than, leave loop (REPLACE BRLO WITH WHATEVER BRANCHING INSTRUCTION YOU NEED)

start_loop_body: ; This line is just here for you to remember the start of the while loop body. You don't have to add it in though.
    [loop body code here] ; You didn't branch. Therefore, you must be in the 'loop body' case, add relevant code for the 'loop body' case here.
    [modify_loop_iterator] ; Before comparing again, you need to modify the loop iterator
    JMP loop_comparison  ; after completion of the 'if then' go to code after the IF statement, skip the ELSE case

end_loop:
    [code here] ; Code after the for loop should go here.

    ret

.end
