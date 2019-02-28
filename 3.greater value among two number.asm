
                                     .STACK 100H
.MODEL SMALL
.DATA
    FMSG DW "PLEASE ENTER NUMBER1  :  $" 
    SMSG DW "PLEASE ENTER NUMBER2  :  $"
    TMSG DW "THE TOW NUMBER IS EQUAL. $"
    FOMSG DW "THE GREATER NUMBER IS : $"
.CODE
    MAIN PROC 
        MOV AX,@DATA
        MOV DS,AX
   
   LEA DX,FMSG
   MOV AH,9
   INT 21H     
  
  MOV AH,1 
  INT 21H
 
  MOV BL,AL
   
  
  
  MOV AH,2
  MOV DL,0DH
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
  MOV DL,0DH
  INT 21H
  MOV DL,0AH
  INT 21H
    
    
  CMP BL,CL
  
  JG T
      
  CMP BL,CL
  
  JL F 
  
  
  CMP BL,CL
  
  JE G
  
  
   
     
    T:
   LEA DX,FOMSG
   MOV AH,9
   INT 21H 
       
  
  MOV AH,2
  MOV DL,BL
  INT 21H 
   
   JMP END_IF
     G:
      
  
   LEA DX,TMSG
   MOV AH,9
   INT 21H 
    JMP END_IF
    
        
        F:
   LEA DX,FOMSG
   MOV AH,9
   INT 21H 
       
  
  MOV AH,2
  MOV DL,CL
  INT 21H 
   
   JMP END_IF
    
    END_IF: 
    MAIN ENDP
    
     

END MAIN




