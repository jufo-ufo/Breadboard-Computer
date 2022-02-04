import instruction_coding

WRITE_REG = 1 << 3
WRITE_MEMORY = 2 << 3
WRITE_BID = 3 << 3
WRITE_IR = 5 << 3
WRITE_IO = 6 << 3

READ_ALU = 1 << 3
READ_MEMORY = 2 << 3
READ_INT_CONTROLLER = 4 << 3

ALU_MODE_PASS_A = 0b000
ALU_MODE_PASS_B = 0b001
ALU_MODE_ADD = 0b010
ALU_MODE_SUB = 0b011
ALU_MODE_XOR = 0b100
ALU_MODE_AND = 0b101
ALU_MODE_ME = 0b110
ALU_MODE_TEST = 0b111

BID_MODE_1 = 0b000
BID_MODE_2 = 0b001

IR_MODE_L = 0b000
IR_MODE_H = 0b001

CONFIG_R_SUP = 0b00000001
CONFIG_Zero_One = 0b00000010
CONFIG_Reg_In_IP = 0b00000100
CONFIG_Ink = 0b00001000

WE1 = [0 for i in range(2**8)]
WE2 = [0 for i in range(2**8)]
RE1 = [0 for i in range(2**8)]
RE2 = [0 for i in range(2**8)]
CONFIG = [0 for i in range(2**8)]


def add_instruction(name: str, step: int, we1: int, we2: int, re1: int, re2: int, config: int):
    WE1[(instruction_coding.INSTRUCTIONS[name][3] << 2) + step] = we1
    WE2[(instruction_coding.INSTRUCTIONS[name][3] << 2) + step] = we2
    RE1[(instruction_coding.INSTRUCTIONS[name][3] << 2) + step] = re1
    RE2[(instruction_coding.INSTRUCTIONS[name][3] << 2) + step] = re2
    CONFIG[(instruction_coding.INSTRUCTIONS[name][3] << 2) + step] = config


for i in range(2**6):
    WE1[(i << 2) + 0] = WRITE_REG
    WE2[(i << 2) + 0] = WRITE_IR | IR_MODE_H
    RE1[(i << 2) + 0] = READ_INT_CONTROLLER
    RE2[(i << 2) + 0] = READ_MEMORY
    CONFIG[(i << 2) + 0] = CONFIG_Reg_In_IP | CONFIG_Ink

    WE1[(i << 2) + 1] = WRITE_REG
    WE2[(i << 2) + 1] = WRITE_IR | IR_MODE_L
    RE1[(i << 2) + 1] = READ_ALU | ALU_MODE_PASS_B
    RE2[(i << 2) + 1] = READ_MEMORY
    CONFIG[(i << 2) + 1] = CONFIG_Reg_In_IP | CONFIG_Ink


add_instruction("mov", 2, WRITE_REG, 0, READ_ALU | ALU_MODE_PASS_B, 0, 0)
add_instruction("add", 2, WRITE_REG, 0, READ_ALU | ALU_MODE_ADD, 0, 0)
add_instruction("sub", 2, WRITE_REG, 0, READ_ALU | ALU_MODE_SUB, 0, 0)
add_instruction("xor", 2, WRITE_REG, 0, READ_ALU | ALU_MODE_XOR, 0, 0)
add_instruction("and", 2, WRITE_REG, 0, READ_ALU | ALU_MODE_AND, 0, 0)
add_instruction("me", 2, WRITE_REG, 0, READ_ALU | ALU_MODE_ME, 0, 0)
add_instruction("test", 2, WRITE_REG, 0, READ_ALU | ALU_MODE_TEST, 0, 0)
add_instruction("str", 2, WRITE_MEMORY, 0, READ_ALU | ALU_MODE_ADD, READ_ALU | ALU_MODE_PASS_B, 0)
add_instruction("ld", 2, 0, WRITE_REG, READ_ALU | ALU_MODE_ADD, READ_MEMORY, 0)



add_instruction("iout", 2, WRITE_IO, 0, READ_ALU | ALU_MODE_PASS_A, READ_ALU | ALU_MODE_PASS_B, 0)
add_instruction("dout", 2, WRITE_IO | 1, 0, READ_ALU | ALU_MODE_PASS_A, READ_ALU | ALU_MODE_PASS_B, 0)

with open("WE1_ROM.hex", "w") as WE1_ROM_HEX, open("WE1_ROM.bin", "wb") as WE1_ROM_BIN:
    for i in WE1:
        WE1_ROM_HEX.write("{:02x}\n".format(i))
        WE1_ROM_BIN.write(int.to_bytes(i, 1, "big"))

with open("WE2_ROM.hex", "w") as WE2_ROM_HEX, open("WE2_ROM.bin", "wb") as WE2_ROM_BIN:
    for i in WE2:
        WE2_ROM_HEX.write("{:02x}\n".format(i))
        WE2_ROM_BIN.write(int.to_bytes(i, 1, "big"))

with open("RE1_ROM.hex", "w") as RE1_ROM_HEX, open("RE1_ROM.bin", "wb") as RE1_ROM_BIN:
    for i in RE1:
        RE1_ROM_HEX.write("{:02x}\n".format(i))
        RE1_ROM_BIN.write(int.to_bytes(i, 1, "big"))

with open("RE2_ROM.hex", "w") as RE2_ROM_HEX, open("RE2_ROM.bin", "wb") as RE2_ROM_BIN:
    for i in RE2:
        RE2_ROM_HEX.write("{:02x}\n".format(i))
        RE2_ROM_BIN.write(int.to_bytes(i, 1, "big"))

with open("Config_ROM.hex", "w") as CONFIG_ROM_HEX, open("Config_ROM.bin", "wb") as CONFIG_ROM_BIN:
    for i in CONFIG:
        CONFIG_ROM_HEX.write("{:02x}\n".format(i))
        CONFIG_ROM_BIN.write(int.to_bytes(i, 1, "big"))

