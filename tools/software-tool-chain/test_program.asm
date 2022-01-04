
#define X 5
#include some_raw_data.asm
hello_world_string:
    db "Let's print \"Hello World\""
    db 0xff 0x00 0xff 0x00

; Multiplies 2 with 3
mov A '\t'
add A A Y
mov B 0x0003
mov C ZERO

loop:
    add C C B
    test A 0x0000
    me IP loop

dout C 0x0000; Outputting Result
