.section .data

.section .text
    .global main

main:
    ;... there are lines of code here with unknown operations. You can make up code as you wish 
    LDI R16, 3 ;... recursion depth parameter
    PUSH R0 ; make space for result
    PUSH R0 ; make space for result
    PUSH R1 ; push first parameter
    PUSH R16 ; push second parameter
    CALL sub1
    POP R0 ; discard second parameter - not used in near future
    POP R0 ; discard first parameter - not used in near future
    POP R8 ; get first result in R8
    POP R9 ; get second result in R9
    ;... there are lines of code here with unknown operations. You can make up code as you wish  
    ret

sub1: 
    ;... there are lines of code here with unknown operations. You can make up code as you wish 
    PUSH R0 ; make space for result  
    PUSH R18 ; push first parameter
    PUSH R19 ; push second parameter - this is the recursion depth parameter from the main program. How do you get this value into R19?
    CALL sub2
    POP R0 ; discard second parameter - not used in near future
    POP R0 ; discard first parameter - not used in near future
    POP R18 ; Get result
    ;... there are lines of code here with unknown operations. You can make up code as you wish 
    ret
  
sub2: 
    ;... there are lines of code here with unknown operations. You can make up code as you wish
    LDI R22, 1
    CP R21, R22 ; This compares recursion depth parameter (held in R21) to 1. If less than 1, it will exit recursive function. How do you get the recursion depth parameter into R21?
    BRLO end_recursion
    DEC R21 ; Decrement recursion depth parameter by 1.
    PUSH R0 ; make space for result  
    PUSH R18 ; push first parameter
    PUSH R21 ; push second parameter - this is the recursion depth parameter. 
    CALL sub2
    POP R0 ; discard second parameter - not used in near future
    POP R0 ; discard first parameter - not used in near future
    POP R18 ; Get result. 

end_recursion: 
    ; The result from this recursive function is the value you just popped into R18. Where should you store it?
    ret

.end
