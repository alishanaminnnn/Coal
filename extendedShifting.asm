org 0x100
jmp start
num: dd 40000   ;0100 0000 0000 0000
start:
;shifting left
shl word [num1+2],1
rcl word [num],1

mov ax,0x4c00
int 0x21
