    org 0x0100
    jmp start
number:
    dw  10111011
result:
    db  1

start:
    mov dx,4
    mov ax,[number]

loop1:
    shl ax,1
    dec dx
    jnz loop1

    shl ax,1
    jc  exit
    mov byte [result],0

exit:
    mov ax, 0x4c00
    int 0x21