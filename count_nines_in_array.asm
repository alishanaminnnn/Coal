org 0x0100

mov si, 0
mov cx, 8
mov ax, 0

loop1:
    cmp byte [arr + si], 9
    jne skip
    add ax, 1

skip:
    add si, 1
    loop loop1

mov ax, 0x4c00
int 0x21

arr: db 3, 9, 3, 9, 3, 2, 7, 3
