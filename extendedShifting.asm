org 0x100
jmp start
num: dd 40000   ;0100 0000 0000 0000
num2: dd 80000  ;1000 0000 0000 0000
start:
;shifting left
shl word [num1],1
rcl word [num1+2],1

;shifting right
shr word [num2+2],1
rcr word [num2],1

mov ax,0x4c00
int 0x21
