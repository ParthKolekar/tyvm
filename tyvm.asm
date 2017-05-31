ORG			0x7c00
BITS		16

mov			si, ty
mov			ah, 0xe

loop:
	lodsb
	or		al, al
	jz		spin
	int		0x10
	jmp		loop

spin: 
	jmp		$

ty DB "Thank You", 0

TIMES 510 - ($ - $$) DB 0
DW 0xaa55
