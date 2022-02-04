from typing import List, Tuple, Dict, Literal
import re
import sys
import os
import traceback
import random
import time

from instruction_coding import INSTRUCTIONS, REGISTERS, ENDIANNESS, MODULUS

INSTRUCTION_NAMES = ["??"] * 64
for key, value in INSTRUCTIONS.items():
    INSTRUCTION_NAMES[value[3]] = key


def disassemble(ins: int) -> str:
    ins_name = INSTRUCTION_NAMES[ins & 0b111111]
    if ins_name == "??":
        return ins_name

    res = "" + ins_name
    data_enable = ins & 0b1000000 != 0
    res += " " + REGISTERS[(ins & 0b1110000000) >> 7] if INSTRUCTIONS[ins_name][0] != "" else ""
    res += " " + REGISTERS[(ins & 0b1110000000000) >> 10] if INSTRUCTIONS[ins_name][1] != "" else ""
    if data_enable:
        res += " 0x{:04x}".format((ins & 0xffff0000) >> 16)
    else:
        res += " " + REGISTERS[(ins & 0b1110000000000000) >> 13] if INSTRUCTIONS[ins_name][2] != "" else ""

    return res


class ComputerState:

    def __init__(self):
        self.memory = [random.randint(0, 0xffff) for i in range(2**15)]
        self.banks = []

        self.bank_id1 = 0
        self.bank_id2 = 0
        self.timer1_mod = 0
        self.timer2_mod = 0
        self.timer1_counter = 0
        self.timer2_counter = 0
        self.clock_freq = 1000

        self.register = [0 for i in range(8)]  # Register in this Order: ZERO, IP, SP, A, B, C, D, FLAG

    def load_from_file(self, filename: str, offset=0, limit=None):
        self.register[7] |= (1 << 15)
        with open(filename, "rb") as f:
            value = f.read(2)
            n = 0
            while n < 2**15 and value and (limit is None or n < limit):
                self.store_memory(n + offset, int.from_bytes(value, byteorder=ENDIANNESS))
                value = f.read(2)
                n += 1
        self.register[7] |= (1 << 15)

    def append_banks(self, bank_id: int):
        for i in range(max(0, bank_id - len(self.banks))):
            self.banks.append([random.randint(0, 0xffff) for i in range(16384)])

    def is_sup(self) -> bool:
        return self.register[7] & (1 << 15) > 0

    def load_memory(self, address: int) -> int:
        if address < 0x8000:
            if self.is_sup():
                return self.memory[address]
            else:
                return 0x0000

        elif 0x4000 <= address < 0xc000:
            self.append_banks(self.bank_id1)
            return self.banks[self.bank_id1][address-0x4000]

        elif 0xc000 <= address <= 0xffff:
            self.append_banks(self.bank_id2)
            return self.banks[self.bank_id2][address-0xc000]

    def store_memory(self, address: int, data: int):
        if address < 0x8000:
            if self.is_sup():
                self.memory[address] = data

        elif 0x4000 <= address < 0xc000:
            self.append_banks(self.bank_id1)
            self.banks[self.bank_id1][address-0x4000] = data

        elif 0xc000 <= address <= 0xffff:
            self.append_banks(self.bank_id2)
            self.banks[self.bank_id2][address-0xc000] = data

    def write_register(self, reg_address: int, data: int):
        if 0 < reg_address < 7:
            self.register[reg_address] = data
        elif reg_address == 7:
            if self.is_sup():
                self.register[7] = data
            else:
                new_flag = self.register[7] & 0xff00
                new_flag |= data & 0x00ff
                self.register[7] = new_flag

    def advance(self) -> bool:
        instruction = self.load_memory(self.register[1]) << 16
        self.register[1] += 1
        instruction |= self.load_memory(self.register[1])
        self.register[1] += 1

        op_code = instruction & 0b111111
        op1_reg = (instruction & 0b1110000000) >> 7
        op2 = self.register[(instruction & 0b1110000000000) >> 10]
        op3 = self.register[(instruction & 0b1110000000000000) >> 13]

        if instruction & 0b1000000 != 0:
            op3 = (instruction & 0xffff0000) >> 16

        match op_code:
            case 0x01:  # MOV
                self.write_register(op1_reg, op3)
            case 0x02:  # ADD
                self.write_register(op1_reg, (op2 + op3) % MODULUS)
            case 0x03:  # SUB
                self.write_register(op1_reg, (op2 - op3) % MODULUS)
            case 0x04:  # MUL
                self.write_register(op1_reg, (op2 * op3) % MODULUS)
            case 0x05:  # DIV
                self.write_register(op1_reg, op2 // op3)
            case 0x06:  # XOR
                self.write_register(op1_reg, op2 ^ op3)
            case 0x07:  # AND
                self.write_register(op1_reg, op2 & op3)
            case 0x08:  # OR
                self.write_register(op1_reg, op2 | op3)
            case 0x09:  # NOT
                self.write_register(op1_reg, ~op3)
            case 0x0a:  # STR
                self.store_memory((op2 + op3) % MODULUS, self.register[op1_reg])
            case 0x0b:  # LD
                self.write_register(op1_reg, self.load_memory((op2 + op3) % MODULUS))
            case 0x0c:  # BNK1
                if self.is_sup():
                    self.bank_id1 = op3
            case 0x0d:  # BNK2
                if self.is_sup():
                    self.bank_id2 = op3
            case 0x0e:  # PUSH
                self.store_memory((self.register[2] + 1) % MODULUS, op3)
                self.write_register(2, (self.register[2] + 1) % MODULUS)
            case 0x0f:  # POP
                self.write_register(op1_reg, (self.register[2] - 1) % MODULUS)
                self.write_register(2, (self.register[2] - 1) % MODULUS)
            case 0x10:  # CALL
                self.store_memory((self.register[2] + 1) % MODULUS, self.register[1])
                self.write_register(2, (self.register[2] + 1) % MODULUS)
                self.write_register(1, op3)
            case 0x11:  # RET
                self.write_register(1, (self.register[2] - 1) % MODULUS)
                self.write_register(2, (self.register[2] - 1) % MODULUS)
            case 0x12:  # TEST
                new_flags = self.register[7] & 0xff00
                new_flags |= (1 if op2 != op3 else 0) << 0
                new_flags |= (1 if op2 == op3 else 0) << 1
                new_flags |= (1 if op2 > op3 else 0) << 2
                new_flags |= (1 if op2 < op3 else 0) << 3
                new_flags |= (1 if (op2 + op3) >= MODULUS else 0) << 4
                self.write_register(op1_reg, new_flags)
            case 0x13:  # ME
                if self.register[7] & 0b0010 > 0:
                    self.write_register(op1_reg, op3)
                else:
                    self.write_register(op1_reg, op2)
            case 0x14:  # MG
                if self.register[7] & 0b0100 > 0:
                    self.write_register(op1_reg, op3)
                else:
                    self.write_register(op1_reg, op2)
            case 0x15:  # ML
                if self.register[7] & 0b1000 > 0:
                    self.write_register(op1_reg, op3)
                else:
                    self.write_register(op1_reg, op2)
            case 0x16:  # MS
                if self.register[7] & 0b0001 > 0:
                    self.write_register(op1_reg, op3)
                else:
                    self.write_register(op1_reg, op2)
            case 0x17:  # MI
                if self.register[7] & 0b0001 > 0:
                    self.write_register(op1_reg, op3)
                else:
                    self.write_register(op1_reg, op2)
            case 0x18:  # MOFadd
                if self.register[7] & 0b10000 > 0:
                    self.write_register(op1_reg, op3)
                else:
                    self.write_register(op1_reg, op2)
            case 0x1a:  # IOUT
                print("Instruction Out: {:04x}".format(op3))
            case 0x1b:  # DOUT
                print("Data Out: {:04x}".format(op3))
            case 0x1c:  # DIN
                pass
            case 0x1d:  # AIO
                pass
            case 0x1e:  # DIO
                pass
            case 0x1f:  # INT
                pass
            case 0x20:  # TM1
                if self.is_sup():
                    self.timer1_mod = op3
            case 0x21:  # TM2
                if self.is_sup():
                    self.timer2_mod = op3
            case 0x22:  # SSTL1
                if self.is_sup():
                    pass
            case 0x23:  # SSTL2
                if self.is_sup():
                    pass
            case 0x24: # SSTH1
                if self.is_sup():
                    pass
            case 0x25:  # SSTH2
                if self.is_sup():
                    pass
            case 0x25:  # CFL
                self.write_register(op1_reg, self.clock_freq & 0b1111111111111111)
            case 0x26:  # CFH
                self.write_register(op1_reg, self.clock_freq & 0b11111111111111110000000000000000)
            case 0x3f:  # Exit Emulator
                return False
            case _:
                pass
        return True


if __name__ == "__main__":

    state = ComputerState()
    state.load_from_file("HelloWorld.asm.bin")

    for i in range(1000):
        instruction = (state.load_memory(state.register[1]) << 16) | state.load_memory(state.register[1] + 1)
        print("{:04x} {:032b} {:02x}".format(
            state.register[1], instruction, (instruction & 0b111111)), disassemble(instruction)
        )

        if not state.advance():
            break
