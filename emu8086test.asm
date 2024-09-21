data segment
        message db "hello$"
ends
code segment
    assume DS:DATA CS:CODE

start:
    mov ax, data
    mov ds, ax
    lea dx, message
    mov ah, 9
    int 21h
    mov ah, 4ch
    int 21h
    
ends
end start
    