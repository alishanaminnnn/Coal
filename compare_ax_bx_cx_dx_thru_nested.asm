; Compare AX and BX (both signed numbers):
; If AX > BX → then compare BX and CX:
; If BX > CX → set DX = 1
; Otherwise (BX ≤ CX) → set DX = 2
; If AX ≤ BX → set DX = 3

org 0x0100

mov ax,10
mov bx,12
mov cx,14
mov dx,3

cmp ax,bx
jg cmp1
jmp cmp2

cmp1:
cmp bx,cx
jg assigner1


assigner1:
mov dx,1

assigner2:
mov dx,2


cmp2:
cmp ax,bx
jbe assigner2
jge end



end:
mov ax,0x4c00
int 0x21