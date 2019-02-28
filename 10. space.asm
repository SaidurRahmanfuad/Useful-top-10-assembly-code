.stack 100h
.model small
.data

.code
main proc
   
   mov ax,@data
   mov ds,ax
   
   xor cx,cx
   xor bh,bh
   mov ah,1
   int 21h
   
   while:
   cmp al,0dh
   je pop_
   cmp al,'0'
   je kk
   
     jmp ll
   
   ll:
   int 21h
   jmp while
   
  
   
  
   
   kk:
    inc cl
   jmp ll 
   
   pop_:
   call newline
    mov ah,2
    int 21h
     add cl,48
    mov dl,cl
    int 21h
  
   ;loop pop_
  
    jmp stop
  
   
 
   
   stop:
   
   jmp end_if
   
   
   end_if: 
   
   
   
   main endp

   Newline proc
       
   mov ah,2
   mov dl,0ah
   int 21h
   mov dl,0dh
   int 21h
   
   ret
   
   Newline endp
   
end main
