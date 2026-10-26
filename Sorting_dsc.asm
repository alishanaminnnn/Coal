    org 0x0100

    jmp start
arr:
    dw  13,12,5,17,10,9,8,20


start:
    mov cx,14
    mov si,0


outer:
    mov bx,0

loop1:
    mov ax,[arr+bx]
    cmp ax,[arr+bx+2]
    jge noSwap
    mov dx,[arr+bx+2]
    mov [arr+bx],dx
    mov [arr+bx+2],ax


noSwap:
    add bx,2
    cmp cx,bx
    jnz loop1


exit:
    inc si
    cmp si,7
    jnz outer




    mov ax,0x4c00
    int 21h