org[0x100]  ;Adding 10 integers to the ax

mov bx,num1
mov ax,0
mov cx,10

l1: add ax,[bx]
    add bx,2
    sub cx,1
    jnz l1
mov [total],ax
mov ax,0x4c00
int 0x21


num1: dw 12,23,34,54,56,1,2,3,4,5
total: dw 0

