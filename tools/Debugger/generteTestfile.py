import random
data = b""

for i in range(2**9):
    data += int.to_bytes(random.randint(0, 0xff), 1, "big")
    data += int.to_bytes(random.randint(0, 0xff), 1, "big")

with open("test_data", "wb") as f:
    f.write(data)