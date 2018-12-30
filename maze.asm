org         &4000
write direct "maze.bin"

CHAR        equ &cc
TXT_WR_CHAR equ &bb5d

run $

.loop:  
  ld    a, r
  rrca
  rrca
  rrca
  and   1
  or    CHAR
  call  TXT_WR_CHAR  
  jr    loop  

