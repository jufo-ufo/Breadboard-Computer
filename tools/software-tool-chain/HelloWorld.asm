;
; This Code is written for an 16x2 LCD display with an 1602A Controller
;

#define Display-Port 0x0000
mov IP main

string:
    db "The answer is 42" 0x00

main:
    MOV A ZERO
    MOV B Display-Port

    ; Initialing LCD
    IOUT B 0b00001111 ; Setting Cursor
    IOUT B 0b00111100 ; Setting Data Length + Display Dimensions
    IOUT B 0b00000001 ; Return To Home
    IOUT B 0b00000010 ; Clear Display

    ; Printing HelloWorld!
loop:
    LD C A string
    ADD A A 1
    TEST C 0x0000
    ME IP loop_end
    DOUT B C
    MOV IP loop

    ; Jumping into Infinity Loop!

loop_end:
    db 0xffff 0xffff
    mov IP loop_end