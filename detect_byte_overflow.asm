org 0x0100

mov bl,0
mov si,0
mov al,0

loop1:add bl,[arr+si]
jo overflow
add si,1

overflow:
add al,1

mov 0x4c00
int 0x21

arr: db 100, 50, 30, 20