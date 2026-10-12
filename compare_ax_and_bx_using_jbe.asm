; Task: Compare AX and BX (unsigned). If AX ≤ BX → set CX = 1. Otherwise → CX = 0.
; Jump to use: JBE (Below or Equal)

org 0x0100

mov ax,10
mov bx,12
mov cx,1

cmp ax,bx
jbe toggle
mov cx,0

toggle:
mov ax,0x4c00
int 0x21
