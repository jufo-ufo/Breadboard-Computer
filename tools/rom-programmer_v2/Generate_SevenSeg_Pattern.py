
numbers = {
    " " : 0b11111111,
    "0" : 0b10001000,
    "1" : 0b10111011,
    "2" : 0b10010100,
    "3" : 0b10010001,
    "4" : 0b10100011,
    "5" : 0b11000001,
    "6" : 0b11000000,
    "7" : 0b10011011,
    "8" : 0b10000000,
    "9" : 0b10000001
}

with open("SegPettern.bin", "wb") as f:
    for j in range(4):
        for i in range(0, 256):
            n = list("{:4}".format(i))[j]
            d = numbers[n].to_bytes(1, "big")
            f.write(d)
            print(j, i, d, n)