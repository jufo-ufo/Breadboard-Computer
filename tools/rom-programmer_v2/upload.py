import serial
import sys
import time

filename = sys.argv[1]
port = sys.argv[2]

with open(filename, "rb") as f:
    data = f.read()

chunks = []

while len(data) > 16:
    chunks.append(data[:16])
    data = data[16:]
chunks.append(data)

offset = 0

with serial.Serial(port, 9600, timeout=1) as ser:
    time.sleep(2)
    for i in chunks:
        d = offset.to_bytes(2, "big") + len(i).to_bytes(1, "big") + i
        print(d.hex())
        offset += len(i)
        ser.write(d)

        while ser.read() != b"\xff":
            pass