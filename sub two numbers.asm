.model small
.stack 100h
.data
.code
msg0 db "frst num: $"
msg1 db "scnd num: $"
msg2 db "rslt: $"
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, msg0
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 9
    lea dx, msg1
    int 21h
    
    mov ah, 1
    int 21h
    mov bh, al
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 9
    lea dx, msg2
    int 21h
                
    sub bl, bh
    add bl, 48
    
    mov ah, 2
    mov dl, bl
    int 21h 
                
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main