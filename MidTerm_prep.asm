; 1. MOV AX, 10 and MOV BX, 10 , then CMP AX, BX . What is
;  ZF? Which of these jumps will happen: JE , JNE , JA , JB ?
org 0x100
mov ax,10
mov bx,10
cmp ax,bx

jz exit  ; The jz will be triggered because the cmp will sub the ax
; and bx then it will trigger the flags(zeo flag) which will be one
;in this case
exit:
mov ax,0x4c00
int 0x21





; 2. MOV AL, 127 then ADD AL, 1 . What is the new value of AL? 
; Which flags change to 1 (think about OF and SF)? Will JO jump?
org 0x100
mov al,127
add al,1

; here the sf and of ; both will be triggered
mov ax,0x4c00
int 0x21


