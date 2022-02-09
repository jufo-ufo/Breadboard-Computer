
MOV SP 0x7fff
MOV IP main

main:
    MOV A 0x4
    CALL func1

end_loop:
    db 0xffff 0xffff
    MOV IP end_loop


func1:
    ADD A A A
    RET