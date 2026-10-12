org 0x100    ; Write code that compares AX and BX. If they are equal, set CX = 1. Otherwise, set CX = 0.

mov ax,10
mov bx,20
mov cx,0

cmp ax,bx ;z=1 if ax and bx are equal bc ax-bx=0

je equal ; jumps to equal and cx=1 if z=1
jmp done   ; if z=0 then program ends


equal:mov cx,1



done:
mov ax,0x4c00
int 0x21