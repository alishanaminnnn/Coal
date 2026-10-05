org 0x0100

mov si, 6
mov al, 0

loop1:
mov [reverse+al],[arr+si]
add al,1
sub si,1
jnz loop1
    
mov ax, 0x4c00
int 0x21

arr: db 10, 20, 30,30 40, 50, 60
reverse: db 0
