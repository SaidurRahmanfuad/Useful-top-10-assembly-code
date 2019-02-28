.stack 100h 
.model small 
.data

.code
main proc
        
    
    mov ah,1
    int 21h                      
    mov bl, al   
    
    mov ah,1
    int 21h
    mov cl,al
    
    cmp bl,cl
    jg great
    
        
             
    mov ah,2
    mov dl, cl
    int 21h
    jmp end_if
    
    great:
    
    mov ah,2
    mov dl, bl
    int 21h
         
    end_if:


main endp
end main