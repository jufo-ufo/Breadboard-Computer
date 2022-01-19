
#define Display-Port 0x0000

mov IP main

string:
    db "HelloWorld" 0x00

main:
    MOV A string
    MOV B Display-Port

    ; Initialing LCD
    IOUT B 0b00001111 ; Setting Cursor
    IOUT B 0b00111100 ; Setting Data Length + Display Dimensions
    IOUT B 0b00000001 ; Return To Home
    IOUT B 0b00000010 ; Clear Display

    ; Printing HelloWorld!
loop:
    LD



    ; Jumping into Infinity Loop!
loop_end:
    mov IP loop_end
