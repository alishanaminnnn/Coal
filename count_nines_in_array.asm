org 0x0100
mov ax,8
mov cx,0
mov bx,0

loop1:
cmp [arr+bx],9
jz counter
inc bx
cmp bx,ax
jz end
jmp loop1



counter:
inc cx
inc 
cmp bx, ax     
jz end   
jmp loop1


end:
mov ax, 0x4c00
int 0x21

arr: db 3, 9, 3, 9, 3, 2, 7, 3
