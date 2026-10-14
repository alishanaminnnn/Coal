org 0x0100

jmp start:
data: dw 60, 55, 45, 50, 40, 35, 25, 30, 10, 0

start:
mov bx,0
mov cx,0

loop1:
mov dx,[data+bx]
cmp dx,[data+bx+2]
jbe noswap
mov ax,[data+bx+2]
mov [data+bx+2],dx
mov [data+bx],ax
add bx,2
inc cx
cmp cx,9
jnz loop1
jz exit

noswap:
add bx,2
inc cx
cmp cx,9
jnz loop1

exit:
mov ax,0x4c00
int 0x21