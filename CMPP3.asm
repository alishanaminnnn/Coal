org 0x100           ; Set origin to 0x100 (start of .COM program)

; ===== SETUP =====
mov AX, 2           ; AX = 2 (first number to compare)
mov BX, 4           ; BX = 4 (second number to compare)
mov CX, 1           ; CX = 1 (default value: covers the "below" case)

; ===== COMPARISON =====
cmp AX, BX          ; Compare AX with BX (computes AX - BX, sets flags)

; ===== THREE-WAY BRANCHING =====
jz  equal           ; If ZF = 1 (AX == BX), jump to "equal"
ja  above           ; If ZF = 0 AND CF = 0 (AX > BX unsigned), jump to "above"
jb  below           ; If CF = 1 (AX < BX unsigned), jump to "below"

; ===== EQUAL PATH =====
equal:
mov CX, 2           ; AX == BX: set CX = 2
jmp below           ; Skip over the "above" block, jump to "below" (exit point)

; ===== ABOVE PATH =====
above:
mov CX, 3           ; AX > BX: set CX = 3
                    ; (falls through to "below" — no jmp needed)

; ===== BELOW PATH / EXIT POINT =====
below:
                    ; AX < BX: CX = 1 (already set, no change needed)
                    ; Also: all other paths meet here

; ===== EXIT TO DOS =====
mov ax, 0x4c00      ; AH = 4Ch (DOS terminate program), AL = 00h (return code)
int 0x21            ; Call DOS interrupt to exit