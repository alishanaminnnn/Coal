org 0x0100
jmp start
multiplicand: dw 22
multiplier: dw 3
result: dw 0
start:
mov ax,[multiplicand]
mov cx,[multiplier]
mov dx,8

l1:
shr cx,1
jnc skip_addition
add [result],ax

skip_addition:
shl ax,1
dec dx
cmp dx,0
jnz l1

mov ax,0x4c00
int 0x21






