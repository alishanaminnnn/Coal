    org 0x100
    jmp start
arr:
    dw 5,2,8,1,3
start:

    mov cl,0
outer:

    mov bx,0

inner:
    mov ax,[arr+bx]
    cmp ax,[arr+bx+2]

    jna noSwap

    mov dx,[arr+bx+2]
    mov [arr+bx],dx
    mov [arr+bx+2],ax

noSwap:
    add bx,2
    cmp bx,8
    jnz inner
    inc cl

    cmp cl,5
    jnz outer

    mov ax,0x4c00
    int 21h