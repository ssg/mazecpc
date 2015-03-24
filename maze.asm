org         &4000
char        equ &cc
TXT_WR_CHAR equ &bb5d

run $

.loop:  
  ld    a, r
  and   1
  or    char  
  call  TXT_WR_CHAR  
  jr    loop
  