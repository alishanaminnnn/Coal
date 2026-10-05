org 0x0100

mov SI,0
mov AL,0
mov CX,4

label:
add AL,[num1+SI]
add SI,1
sub CX,1
JNZ label
mov [total],AL
mov ax,0x4c00
int 0x21


num1: db 1,2,3,4
total: dw 0