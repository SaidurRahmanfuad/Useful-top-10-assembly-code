
  .STACK 100H
.MODEL SMALL
.DATA 
    FMSG DW "PLEASE ENTER FIRST NUMBER : $"
    SMSG DW "PLEASE ENTER SECOND NUMBER  : $"  
 
    AD DW "ADDITION OF FIRSTAND SECOND NUMBER IS  :  $"
   ; SB DW "SUBTRUCTION OF THOSE TWO NUMBER IS  :  $"
.CODE 
   MAIN PROC 
    MOV AX, @DATA
    MOV DS,AX
    
     
     
    LEA DX,FMSG
    MOV AH,9
    INT 21H
    
   
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
     
    MOV AH,2 
    MOV DL, 0DH
    INT 21H
    MOV DL,0AH
    INT 21H  
   
     
    LEA DX,SMSG
    MOV AH,9
    INT 21H 
   
     
    MOV AH,1
    INT 21H
    
    MOV CL,AL 
        
    MOV AH,2 
    MOV DL, 0DH
    INT 21H
    MOV DL,0AH
    INT 21H  
        
     
    MOV AH,2 
    MOV DL, 0DH
    INT 21H
    MOV DL,0AH
    INT 21H 
    
    
    CMP BH,'a'
    
    
    JE G 
     
    CMP BH,'s'
   
     
          G:
    
    
    LEA DX,AD
    MOV AH,9
    INT 21H 
  
     add BL,CL
     sub BL, 30H
       
      
     MOV AH,2
     MOV DL,BL
     INT 21H
  
     JMP END_IF

        
     MOV AH,2
     MOV DL,CH
     INT 21H      
      
      END_IF:
     
       MAIN ENDP
   END MAIN
