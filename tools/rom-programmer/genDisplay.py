rom = [None for i in range(2**14)]

numbers = {
    " ": 0xff, 
    "0": 0b10000100, 
    "1": 0b10110111, 
    "2": 0b11000010, 
    "3": 0b10010010, 
    "4": 0b10110001, 
    "5": 0b10011000, 
    "6": 0b10001000, 
    "7": 0b10110110, 
    "8": 0b10000000, 
    "9": 0b10010000
    }

for i in range(2**8):
    n = [" "]*4 + list(str(i))
    n = n[-4:]
    n.reverse()
    for p,j in enumerate(n):
        rom[(p<<8) + i] = numbers[j]

while None in rom:
    rom.remove(None)

with open("7-segment-display.hex", "w") as f:
    i = 0
    while len(rom) > 64:
        s = hex(i) + ":"
        for j in range(64):
            s += " " + hex(rom[j])
        f.write(s + "\n")
        rom = rom[64:]
        i += 1

    s = hex(i) + ":"
    for j in rom:
        s += " " + hex(j)
    f.write(s)

