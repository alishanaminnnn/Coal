org 0x0100
jmp start:
arr : dw 7,-2,15,4,-8,10,0,3
swapCount : dw 0

start:
mov bx,0
mov cx,9

l1:
cmp [arr+bx]+[arr+bx+1]
jge noSwap
mov ax,[arr+bx]
mov dx,[arr+bx+1]
mov [arr+bx],dx
mov [arr+bx+1],ax

inc bx
cmp bx,cx
jnz l1
jmp exit

noSwap:
inc bx
cmp bx,cx
jnz l1

exit:
mov ax,0x4c00
int 21h