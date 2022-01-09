
string:
    db "HelloWorld" 0x00

mov C 0xdead
mov A 0x00
iout C 0x0003

loop:
    ld B A string
    dout C B
    test B 0x00
    mg IP loop
