org 0x0100
jmp start
arr : dw 7,-2,15,4,-8,10,0,3
swapCount : db 0

start:
    mov cx, 7              

outer:
    mov bx, 0
    mov si, 0              

inner:
    mov ax, [arr+bx]
    mov dx, [arr+bx+2]
    cmp ax, dx
    jge noswap             

    mov [arr+bx], dx
    mov [arr+bx+2], ax
    inc byte [swapCount]
    mov si, 1

noswap:
    add bx, 2
    cmp bx, 14
    jl  inner

    cmp si, 0
    je  exit
    loop outer

exit:
    mov ax, 0x4C00
    int 21h