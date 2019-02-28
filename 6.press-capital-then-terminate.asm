.MODEL SMALL
.STACK 100H
.DATA



.CODE
MAIN PROC
    
  
  
  MOV AH,1
  
  R:
  
  INT 21H 
  MOV BL,AL
  CMP BL,'A'
  
  JL R
  
  CMP BL,'Z'
  
  JG R
  
  STOP:
  
  MAIN ENDP
END MAIN
    
       