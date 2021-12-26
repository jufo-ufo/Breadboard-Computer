
; Multiplies 2 with 3
mov A '\t'
mov B 0x0003
mov C ZERO

loop:
    add C C B
    test A 0x0000
    me IP loop

dout C 0x0000; Outputting Result
