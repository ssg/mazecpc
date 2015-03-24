# mazecpc
Maze CPC is a maze generator in 11 bytes for Amstrad CPC series 8-bit computers.

# history
There is a book called "[10 PRINT CHR$ (205.5 + RND (1)); : GOTO 10](http://10print.org/)". Yes that's the  title. It's about a small code piece in BASIC language that generates a maze. An interesting read for programmers. It delves into attempts to create it in assembly as small as possible, which [seems to have become a trend](http://csdb.dk/release/?id=113300) in Commodore 64 demoscene.

Recently I saw [a blog post from Trixter](http://trixter.oldskool.org/2012/12/17/maze-generation-in-thirteen-bytes/) who tried to port it to PC. It eventually got down to 10 bytes.

Tonight I wanted to give it a shot on Amstrad CPC and here it is, 11 bytes maze generator, created in couple of hours.

# technical notes
I found it very hard to produce a series of "random bits" on a Z80 CPU. There is R register which increases every cycle but naturally deterministic in loops. To keep the code short, however, I relied on it and interrupts to introduce a slight entropy. I'm sure there is room for improvement.

SSG / arteffect, March 24th 2015
