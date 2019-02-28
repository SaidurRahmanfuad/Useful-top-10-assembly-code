.stack 100h
.model small
.data
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov cx,80
        mov ah,2
        mov dl,'*'
        
        
        top:
        int 21h 
        loop top
        
        mov ah,4ch 
        int 21h
        main endp
    end main