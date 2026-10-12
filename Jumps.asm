; Write an assembly program that compares AX and BX (both signed numbers):
; If AX == BX → set CX = 2
; If AX > BX → set CX = 3
; If AX < BX → set CX = 1
org 0x100

mov AX, 2
mov BX, 4
mov CX, 1
cmp AX, BX

jz  equal
jg  greater        
jl  lower

equal:
mov CX, 2
jmp lower

greater:             
mov CX, 3

lower:
mov ax, 0x4c00
int 0x21