.model small
.stack 100h
.data  
.code
msg0 db "i/p lower case: $"
msg00 db 10,13,"converted: $"
msg1 db 10,13,"i/p upper case: $"
msg11 db 10,13,"converted: $"
main proc
    mov ax,@data
    mov ds, ax
    
    mov ah, 9
    lea dx, msg0
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
    sub bl, 32
    
    mov ah, 9
    lea dx, msg00
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    mov ah, 9
    lea dx, msg1
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
    add bl, 32
    
    mov ah, 9
    lea dx, msg11
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
    
    
    