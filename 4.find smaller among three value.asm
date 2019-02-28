.STACK 100H
.MODEL SMALL
.DATA

.CODE
MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV BL,AL
     
     MOV AH,2
     MOV DL,0DH
     INT 21H
     MOV DL,0AH
     INT 21H 
     
     MOV AH,1
     INT 21H
     MOV CL,AL  
     
     MOV AH,2
     MOV DL,0DH
     INT 21H
     MOV DL,0AH
     INT 21H
     
     MOV AH,1
     INT 21H
     MOV CH,AL 
     
     MOV AH,2
     MOV DL,0DH
     INT 21H
     MOV DL,0AH
     INT 21H
     
    
    CMP BL,CL
    JS G
     
     
    CMP CL,CH
    JS E  
    
    CMP CH,BL
    JS L
    
    G:
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    JMP END_1F
    
    E:
    MOV AH,2
    MOV DL,CL
    INT 21H   
    
    JMP END_1F
     
    L:
    MOV AH,2
    MOV DL,CH
    INT 21H
    
     
    END_1F:
    
    MAIN ENDP
END MAIN