    org  0x100
    jmp  start

multiplicand:
    db 00000101b
multiplier:
    db 00000011b

start:
    mov  dx,0
    mov  al,[multiplicand]
    mov  cl,[multiplier]
    mov  bl,8

loop1:
    test cl,1
    jz   shifter
    add  dx,ax

shifter:
    shl  al,1
    shr  cl,1
    dec  bl

    jnz  loop1

    mov  ax,0x4c00
    int  21h