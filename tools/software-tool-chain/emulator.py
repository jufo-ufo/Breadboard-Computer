from typing import List, Tuple, Dict, Literal
import re
import sys
import os
import traceback
import random

from instruction_coding import INSTRUCTIONS, REGISTERS, ENDIANNESS

INSTRUCTION_NAMES = list(INSTRUCTIONS.keys()) + ["??"] * 64
INSTRUCTION_NAMES = INSTRUCTION_NAMES[:64]

random.seed(0x1337)

if len(sys.argv) < 2:
    print("Usage: <input_file>", file=sys.stderr)
    exit(1)

INPUT_FILE = sys.argv[1]

if not os.path.exists(INPUT_FILE):
    print(f"File {INPUT_FILE} does not exist!", file=sys.stderr)
    exit(1)


def disassemble(instruction: int) -> str:
    ins_name = INSTRUCTION_NAMES[instruction & 0b111111]
    if ins_name == "??":
        return ins_name

    res = "" + ins_name
    data_enable = instruction & 0b1000000 != 0
    res += " " + REGISTERS[(instruction & 0b1110000000) >> 7] if INSTRUCTIONS[ins_name][0] != "" else ""
    res += " " + REGISTERS[(instruction & 0b1110000000000) >> 10] if INSTRUCTIONS[ins_name][1] != "" else ""
    if data_enable:
        res += " 0x{:04x}".format((instruction & 0xffff0000) >> 16)
    else:
        res += " " + REGISTERS[(instruction & 0b1110000000000000) >> 13] if INSTRUCTIONS[ins_name][2] != "" else ""

    return res


class ComputerState:

    def __init__(self):
        self.memory = [random.randint(0, 0xffff) for i in range(2**15)]
        self.banks = []
        self.bank_id1 = 0
        self.bank_id2 = 0
        self.register = [0 for i in range(8)]  # Register in this Order: ZERO, A, B, C, D, IP, SP, FLAG

    def load_from_file(self, filename: str, offset=0, limit=None):
        self.register[7] |= (1 << 15)
        with open(filename, "rb") as f:
            value = f.read(2)
            n = 0
            while n < 2**15 and value and (limit is None or n < limit):
                self.store_memory(n + offset, int.from_bytes(value, byteorder=ENDIANNESS))
                value = f.read(2)

    def append_banks(self, bank_id: int):
        for i in range(max(0, self.bank_id - len(self.banks))):
            self.banks.append([random.randint(0, 0xffff) for i in range(16384)])

    def is_sup(self) -> bool:
        return self.register[7] & (1 << 16) == 1

    def load_memory(self, address: int) -> int:
        if address < 0x8000:
            if is_sup():
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
                return self.memory[address]
            else:
                return 0x0000

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

    def advance(self):
        instruction = self.load_memory(self.register[5])
        self.register[5] += 1
        instruction |= self.load_memory(self.register[5]) << 16

        op_code = instruction & 0b111111
        op1_reg = (instruction & 0b1110000000) >> 7
        op2 = self.register[(instruction & 0b1110000000000) >> 10]
        op3 = self.register[(instruction & 0b1110000000000000) >> 13]

        if instruction & 0b1000000 != 0:
            op3 = (instruction & 0xffff0000) >> 16

        match op_code:
            case 0x01:
                self.write_register(op1_reg, op3)
            case 0x02:
                self.write_register(op1_reg, (op2 + op3) % 2**16)
            case 0x03:
                self.write_register(op1_reg, (op2 - op3) % 2**16)
            case 0x04:
                self.write_register(op1_reg, (op2 * op3) % 2**16)
            case 0x05:
                self.write_register(op1_reg, op2 // op3)
            case 0x06:
                self.write_register(op1_reg, op2 ^ op3)
            case 0x07:
                self.write_register(op1_reg, op2 & op3)
            case 0x08:
                self.write_register(op1_reg, op2 | op3)
            case 0x09:
                self.write_register(op1_reg, ~op3)
            case _:
                pass


state = ComputerState()
state.load_from_file(INPUT_FILE)
