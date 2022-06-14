.model small
.stack 100h
.data
.code
msg db "ILY$"
main proc          
    ; 1: single keyinput
    ; 2: single char input
    ; 9: char string output
    mov ax, @data
    mov ds, ax    
    
    mov ah, 9h
    lea dx, msg
    int 21h 
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
    
    
    