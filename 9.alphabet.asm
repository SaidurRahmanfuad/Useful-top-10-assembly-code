.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC
 
    MOV AH,2
    MOV DL,3FH
    INT 21H
 
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV BH,AL
 
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
 
    CMP BL,BH
    JNL PRINT_1
 
    PRINT-2:
    MOV AH,2
    MOV DL,BL
    INT 21H
 
    MOV DL,BH
    INT 21H
    JMP END_
 
    PRINT_1:
    MOV AH,2
    MOV DL,BH
    INT 21H
    MOV DL,BL
    INT 21H
 
    END_:
 
    MOV AH,4CH
    INT 21H
 
    MAIN ENDP
END MAIN
