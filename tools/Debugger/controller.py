import serial
import sys
import time

if len(sys.argv) < 3:
    sys.stderr.write("Usage: [port] [mode]\n")
    sys.stderr.flush()
    exit(-1)

mode = sys.argv[2]

if mode != "w" and mode != "r":
    sys.stderr.write(f"Invalid mode '{mode}'\n")
    sys.stderr.flush()
    exit(-1)

if mode == "w":
    if len(sys.argv) < 5:
        sys.stderr.write("Usage: [port] w [inputfile] [delay]\n")
        sys.stderr.flush()
        exit(-1)
    
    delay = int(sys.argv[4])

    with open(sys.argv[3], "rb") as f:
        data = f.read()

    if len(data) % 2 != 0:
        sys.stderr.write("Invalid Aliment of 2 bytes\n")
        sys.stderr.flush()
        exit(-1)

start = time.time()

sys.stdout.write("[ ] Connecting...")
sys.stdout.flush()

conn = serial.Serial(sys.argv[1], baudrate=9600)
time.sleep(2)

sys.stdout.write("\r[ ] Waiting for sync...")
sys.stdout.flush()

conn.write(b"Sync")
conn.read_until(b"ack")

print("\r[X] Board connected!           ")

if mode == "w":
    sys.stdout.write("[ ] Uploading Data...")
    sys.stdout.flush()


    conn.write(b"w" + int.to_bytes(len(data), 4, "big") + int.to_bytes(delay, 4, "big"))
    conn.read_until(b"ok")
    conn.write(data)
    conn.read_until(b"ok")

    sys.stdout.write(f"\r[X] Uploaded {len(data)} bytes\n")
    sys.stdout.flush()


    conn.write(b"k")
    sys.stdout.write(f"\r[ ] Writing data...")
    sys.stdout.flush()

    
    conn.read_until(b"done")

    sys.stdout.write(f"\r[X] Written Data    \n")
    sys.stdout.flush()

else:
    conn.write(b"r")

    try:
        while True:
            if conn.in_waiting >= 1:
                conn.read(2)
                data = list(conn.read(2))
                print("[{:9.3f}] {:02x} {:02x} {:08b} {:08b} {:6s} {:6s}".format(time.time() - start, 
                        data[0], data[1], data[0], data[1], repr(chr(data[0])), repr(chr(data[1]))))

    except KeyboardInterrupt:
        pass

    conn.write(b"X")



print("\nFinisied after {:.3f}s".format(time.time() - start))