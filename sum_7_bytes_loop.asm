org[0x100]  ;Adding 7 integers to the ax
mov cl,0
mov al,7
mov ah,0
loop1:
add ah,[nums+cl]
inc cl
cmp al,cl
jnz loop1
mov total,ah

mov ax,0x4c00
int 0x21

nums: db 1,2,3,4,5,6,7
total: dw 0