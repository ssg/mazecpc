; This is the 12-byte CPC664/CPC6128 version.

org         &4000
write "maze.bin"
write direct "maze.bin"

CHAR        equ &CC
TXT_WR_CHAR equ &BB5D
REAL_RND    equ &BD7F ; CPC464 doesn't have this endpoint.

run $
loop:  
	; REAL_RND call normally works on the memory at HL register
	; we ignore that and use the destroyed A value because somehow
	; it also varies quite randomly, saving us 2 bytes in the end.
	; This trick causes RND to output junk pixels to the scroll 
	; position due to HL value destroyed by TXT_WR_CHAR, but it 
	; gets painted over anyway.
	call  REAL_RND
	and   1
	or    CHAR
	call  TXT_WR_CHAR  
	jr    loop

result:

close