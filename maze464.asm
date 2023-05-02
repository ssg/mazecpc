; This is the 14-byte Amstrad CPC464 version
; because CPC464 is missing the firmware call
; for RND.

org	&4000
write "maze464.bin"
write direct "maze464.bin"

CHAR        equ &CC
TXT_WR_CHAR equ &BB5D

run $
loop:  
	ld    a, r
	rrca
	rrca
	rrca
	and   1
	or    CHAR
	call  TXT_WR_CHAR  
	jr    loop

result:

close