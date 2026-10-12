; a program to add three numbers using memory variables
[org 100h]
mov ax, [num1]
mov bx, [num2]
add ax, bx
mov bx, [num3]
add ax, bx
mov [num4], ax
mov ax, 4c00h
int 21h
num1: dw 5
num2: dw 10
num3: dw 15
num4: dw 0