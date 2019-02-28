.stack 100h 
.model small
.data 
  
    
.code
    main proc
        mov ax,@data
        mov ds,ax
         
                
        mov ah,1
        
        R:
        int 21h
        cmp al,'Y'
        jne R
        exit:
        
        
       
        
        
        
        mov ah,4ch
        main endp
    end main
        