org[0x0100]
mov bx,0
mov ax,0
mov cx,10
l1:add ax,[num1,bx]
add bx,2
sub bx,1
jnz l1
mov [total],ax

mov ax,0x4c00
int 0x21

num1: dw 1,2,3,4,5,6,7,8,6,5
total: dw 0s