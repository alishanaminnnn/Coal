org 0x100

jmp start

num: dd 40000

start:
    shr word [num+2],1
    rcr word [num],1

mov ax,0x4c00
int 21h





org 0x100

jmp start

num: dd 40000

start:
    shr word [num],1
    rcl word [num+2],1

mov ax,0x4c00
int 21h