org 0x0100

mov si, 6
mov di, 0
mov cx, 7

loop1:
mov al, [arr + si]
mov [reverse + di], al
sub si, 1
add di, 1
loop loop1

mov ax, 0x4c00
int 0x21

arr: db 10, 20, 30,30, 40, 50, 60
reverse: db 0, 0, 0, 0, 0, 0
