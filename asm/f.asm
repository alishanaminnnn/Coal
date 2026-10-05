org 0x100

mov bl, 0
mov si, 0
mov al, 0
mov cx, 4

loop1:
    add bl, [arr + si]
    jo overflow

    add si, 1
    loop loop1
    jmp complete

overflow:
    add al, 1

complete:

    mov ax, 0x4c00
    int 0x21

arr: db 100, 50, 30, 20
