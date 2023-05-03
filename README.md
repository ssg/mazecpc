# mazecpc 1.2

Maze CPC is a maze generator in 12 bytes for Amstrad CPC664/6128 8-bit computers.

![screen shot](https://raw.githubusercontent.com/ssg/mazecpc/master/screenshot.png)

# history

There is a book called "[10 PRINT CHR$ (205.5 + RND (1)); : GOTO 10](http://10print.org/)". Yes that's the title. It's about a small code piece in BASIC language that generates a maze. An interesting read for programmers. It delves into attempts to create it in assembly as small as possible, which [seems to have become a trend](http://csdb.dk/release/?id=113300) in Commodore 64 demoscene.

I saw [a blog post from Trixter](http://trixter.oldskool.org/2012/12/17/maze-generation-in-thirteen-bytes/) who tried to port it to PC. It eventually got down to 10 bytes.

Tonight I wanted to give it a shot on Amstrad CPC and here it is, <s>11</s> <s>14</s> 12-bytes maze generator, created in a couple of hours.

# technical notes

I found it very hard to produce a series of "random bits" on a Z80 CPU. There is R register which increases every cycle but naturally deterministic in loops. To keep the code short, however, I relied on it and interrupts to introduce a slight entropy. I'm sure there is room for improvement.

_Update Dec 29th, 2018: I made the random generator much better by sacrificing 3 more bytes. It's a 14-byte maze generator now._

_Update May 2nd, 2023: I resorted to using firmware call for RND to get the random number,
saving another 2 bytes. But, the code doesn't run on CPC464 now due to missing firmware call. The 14-byte CPC464 version still exists in [`maze464.asm`](https://github.com/ssg/mazecpc/blob/main/maze464.asm)._

SSG / arteffect, March 24th 2015
