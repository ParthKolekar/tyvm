ORG         0x7c00 ; Origin 
BITS        16

mov         si, ty
mov         ah, 0xe

loop:       lodsb
    or      al, al
    jz      doNothing
    int     0x10
    jmp 	loop

doNothing: 
    jmp         $

ty db "Thank You", 0

times 510 - ($ - $$) db 0
dw 0xaa55
