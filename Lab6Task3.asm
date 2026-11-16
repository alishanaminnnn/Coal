org 0x0100
jmp start

number: dw 124

start:
    mov ax,[number]
    mov bx,ax

    shl ax,1       
    shl bx,4      

    add ax,bx     
    add ax,[number]

    mov ax,0x4c00
    int 0x21
