include 'emu8086.inc'
.DATA
ARRAY DB 1,2,3,4,5,6             
START:
MOV AX,@DATA
MOV CX,5
MOV SI,0
MOV AL,ARRAY[SI]
FIN:
    INC SI
    CALL PRINT_NUM
    PRINT 09
    MOV AL,ARRAY[SI]
LOOP FIN
RET
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS      
END START