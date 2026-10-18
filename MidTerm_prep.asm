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


; Code task (Max): An array arr DB 5, 12, 3, 20, 8 has 5 elements. Write assembly
; code that finds the largest element and stores it in AL

org 0x0100
jmp start
arr: DB 5, 12, 3, 20, 8
max: DB 0

start:
mov al,[arr+0] ;5 is initialized as max
mov bx,1
mov cl,5

loop1:
cmp al,[arr+bx]
jae next
mov al,[arr+bx]



next:
inc bx
cmp bl,cl
jnz loop1

exit:
mov [max],al
mov ax,0x4c00
int 0x21