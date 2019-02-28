.MODEL SMALL
 .STACK 100H

 .DATA
 
    A DW  "***********$"
     b DW "*         *$"
     c DW "*   $"  
    D DW "   *$"
 .CODE
   MAIN PROC
     MOV AX, @DATA           
     MOV DS, AX

     MOV AH, 2                   
     MOV DL, "?"
     INT 21H

     MOV AH, 1                  
     INT 21H

     MOV BL, AL 
      MOV AH, 1                  
     INT 21H

     MOV cL, AL 
      MOV AH, 1                  
     INT 21H

     MOV ch, AL              
        mov ah,2
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h
      ;1 
       lea dx,a
       mov ah,9
       int 21h
        mov ah,2
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h  
        ;2
        lea dx,b
       mov ah,9
       int 21h
        mov ah,2
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h 
        ;3
        lea dx,b
       mov ah,9
       int 21h
        mov ah,2
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h
       ;4
        lea dx,b
       mov ah,9
       int 21h
        mov ah,2
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h 
        ;5
        lea dx,b
       mov ah,9
       int 21h
        mov ah,2
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h              
          ;6
           lea dx,c
       mov ah,9
       int 21h
       
       
       mov ah,2
       mov dl,bl
       int 21h
        mov ah,2
       mov dl,cl
       int 21h
        mov ah,2
       mov dl,ch
       int 21h
        
        lea dx,D
       mov ah,9
       int 21h

        mov ah,2
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h
       lea dx,b
       mov ah,9
       int 21h  
        mov ah,2
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h
       lea dx,b
       mov ah,9
       int 21h
        mov ah,2
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h
       lea dx,b
       mov ah,9
       int 21h
        mov ah,2
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h
       lea dx,b
       mov ah,9
       int 21h
       
         mov ah,2
       mov dl,0dh
       int 21h
       mov dl,0ah
       int 21h
          
       lea dx,a
       mov ah,9
       int 21h
   MAIN ENDP 

   
 END MAIN
