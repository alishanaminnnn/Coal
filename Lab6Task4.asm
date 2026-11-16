mov al,10010111b

; Check Write permission without modifying AL
test al,00000010b

; Enable Execute and Print permissions
or al,00010100b

; Disable Delete permission
and al,11110111b