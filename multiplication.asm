org 0x100
jmp start

; Data Section
multiplicand: dw 25         ; 16-bit multiplicand
multiplier:   dw 13         ; 16-bit multiplier
result:       dw 0          ; 16-bit result (stores the final product)

; Code Section
start:
    mov cl, 16              ; Loop 16 times (because multiplier is 16-bit)
    mov ax, [multiplicand]  ; AX = 25
    mov dx, [multiplier]    ; DX = 13

check_bits:
    shr dx, 1               ; Shift multiplier right; LSB falls into Carry Flag
    jnc skip_add            ; If Carry Flag = 0, skip addition

    add [result], ax        ; If Carry Flag = 1, add multiplicand to result

skip_add:
    shl ax, 1               ; Shift multiplicand left (double it)
    dec cl                  ; Decrement counter
    jnz check_bits          ; Repeat until 16 bits are processed

    ; Exit
    mov ax, 0x4c00
    int 0x21