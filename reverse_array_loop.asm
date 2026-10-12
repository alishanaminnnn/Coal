org 0x0100
mov al,6
mov di,0
mov si,5
mov dl,0

loop1:
mov dl,[arr+si]
mov [reverse+di],dl
inc di
dec si
cmp di,al
jnz loop1

mov ax, 0x4c00
int 0x21

arr: db 10, 20, 30, 40, 50, 60
reverse: db 0, 0, 0, 0, 0, 0
