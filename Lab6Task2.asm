    org 0x0100
    jmp start

dividend:
    dw 124
divisor:
    dw 32

start:
    mov ax,[dividend]
    mov si,[divisor]
    mov bx,0
    mov cx,16

loop1:
    shl ax,1
    rcl bx,1

    cmp bx,si
    jb  skip_subtraction

    sub bx,si
    or  ax,1

skip_subtraction:
    dec cx
    jnz loop1
    mov ax, 0x4c00
    int 0x21