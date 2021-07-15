data = ""

for i in range(2**8):
    data += hex(i) + ":"
    for i in range(64):
        data += " 0x0"
    data += "\n"

with open("clear.hex", "w") as f:
    f.write(data)
