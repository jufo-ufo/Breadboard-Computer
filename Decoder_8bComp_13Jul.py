
bina = []
reg = {"a":"00", "b":"01", "ip":"10", "sp":"11"}

Fin = open("instr.txt", "r")
Fout = open("bin.txt", "w")
Fdeb = open("deb.txt", "w")


def Nop(instr):
    return "0000" + "000000000000"

def Add(instr):
    if instr[2] == "a" or instr[2] == "b" or instr[2] == "ip" or instr[2] == "sp":
        return "0001" + reg[instr[0]] + reg[instr[1]] + reg[instr[2]] + "110011"
    else:
        return "0001" + reg[instr[0]] + reg[instr[1]] + bin(int(instr[2])).replace("0b" ,"").zfill(8)

def Sub(instr):
    if instr[2] == "a" or instr[2] == "b" or instr[2] == "ip" or instr[2] == "sp":
        return "0010" + reg[instr[0]] + reg[instr[1]] + reg[instr[2]] + "110011"
    else:
        return "0010" + reg[instr[0]] + reg[instr[1]] + bin(int(instr[2])).replace("0b", "").zfill(8)

def Xor(instr):
    if instr[2] == "a" or instr[2] == "b" or instr[2] == "ip" or instr[2] == "sp":
        return "0011" + reg[instr[0]] + reg[instr[1]] + reg[instr[2]] + "110011"
    else:
        return "0011" + reg[instr[0]] + reg[instr[1]] + bin(int(instr[2])).replace("0b" ,"").zfill(8)

def Ld(instr):
    return "0100" + reg[instr[0]] + "00" + bin(int(instr[1])).replace("0b" ,"").zfill(8)

def Str(instr):
    return "0101" + "00" + reg[instr[0]] + bin(int(instr[1])).replace("0b" ,"").zfill(8)

def Pop(instr):
    return "0110" + reg[instr[0]] + "0000000000"

def Push(instr):
    return "0111" + "00" + reg[instr[0]] + "0000000000"

def Call(instr):
    return "1000" + "0000" + bin(int(instr[0])).replace("0b" ,"").zfill(8)

def Ret(instr):
    return "1001" + "000000000000"

def Je(instr):
    return "1010" + "0000" + bin(int(instr[0])).replace("0b" ,"").zfill(8)

def Jo(instr):
    return "1011" + "0000" + bin(int(instr[0])).replace("0b" ,"").zfill(8)

def In(instr):
    return "1100" + reg[instr[0]] + "0000000000"

def Out(instr):
    if instr[1] == "a" or instr[1] == "b" or instr[1] == "ip" or instr[1] == "sp":
        return "1101" + "00" + reg[instr[0]] + reg[instr[1]] + "110011"
    else:
        return "1101" + "00" + reg[instr[0]] + bin(int(instr[2])).replace("0b" ,"").zfill(8)


def Test(instr):
    return "1110" + "00" + reg[instr[0]] + reg[instr[1]] + "000000"

def Mov(instr):
    if instr[1] == "a" or instr[1] == "b" or instr[1] == "ip" or instr[1] == "sp":
        return "1111" + reg[instr[0]] + "00" + reg[instr[1]] + "110011"
    else:
        return "1111"  + reg[instr[0]] + "00" + bin(int(instr[1])).replace("0b", "").zfill(8)



ins = {"nop":Nop, "add":Add, "sub":Sub, "xor":Xor, "ld":Ld, "str":Str,"pop":Pop,"push":Push, "call":Call,"ret":Ret,"je":Je, "jo":Jo, "in":In, "out":Out, "test":Test, "mov":Mov}

def Transcoder(instr):
    part = instr.split(" ")
    bina = ins[part[0]](part[1:])

    return bina


fin = Fin.read()
all_ins = fin.split("\n")

for i in all_ins:
    bina.append(Transcoder(i))

for j in bina:
    Fout.write(str(j))
    Fdeb.write(str(j))
    Fdeb.write("\n")

Fin.close()
Fout.close()
Fdeb.close()

print("Wrote ", len(bina), "Instructions to File")