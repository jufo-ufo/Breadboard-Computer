from typing import List
import io
import sys
import re

KEYWORDS = [""]
WHITESPACE = [" ", "\t", "\n", "\r"]
EOF_SYMBOL = ""
COMMENT_SYMBOL = ";"
REGISTERS = ["zero", "ip", "sp", "a", "b", "c", "d", "flag"]

INSTRUCTION_NAMES = [
    "nop", "mov", "add", "sub", "mul", "div", "xor", "and", "or", "not", "str", "ld", "bnk1", "bnk2", "push", "pop",
    "call", "ret", "test", "me", "mof", "mg", "ml", "ms", "iout", "dout", "din", "aio", "din", "int", "tm1", "tm2",
    "sstl1", "sstl2", "ssth1", "ssth2", "cfl", "cfh"
]


class Token:
    def __init__(self):
        self.line: int = -1
        self.char: int = -1
        self.value: str | int = ""
        self.type: str = "unknown"
        self.pos: int = -1

    def __str__(self):
        res = "{:3} {:3} : ".format(self.line, self.char)
        match self.type:
            case "Literal":
                res += "{} 0x{:04x}".format(self.type, self.value)
            case _:
                res += "{} {}".format(self.type, self.value)
        return res

    def __repr__(self):
        return f"Token(\'{self.__str__()}\')"


class Lexer:

    def __init__(self, input_file_path: str):
        self.input_file = open(input_file_path, "r")
        self.label_table = {}

        self.line_count = 1
        self.char_count = 1
        self.token_count = 1

    def __del__(self):
        self.input_file.close()

    def get_next_token_string(self) -> None | Token:
        token_string = ""

        while True:
            last_char = self.input_file.read(1)

            if last_char == "\n":
                self.line_count += 1
                self.char_count = 1
            else:
                self.char_count += 1

            if last_char in WHITESPACE:
                continue
            elif last_char == COMMENT_SYMBOL:  # Skip Comment Line
                while True:
                    last_char = self.input_file.read(1)
                    if last_char == "\n" or last_char == EOF_SYMBOL:
                        break
                self.line_count += 1
                self.char_count = 1
                continue
            token_string += last_char
            break

        token_new = Token()
        token_new.line = self.line_count
        token_new.char = self.char_count

        while True:
            last_char = self.input_file.read(1)

            if last_char in WHITESPACE or last_char == COMMENT_SYMBOL or last_char == EOF_SYMBOL:
                self.input_file.seek(self.input_file.tell() - 1, io.SEEK_SET)
                break
            token_string += last_char

        if len(token_string) > 0:
            self.token_count += 1
            token_new.value = token_string
            return token_new

    def analyse_token(self, token_raw: Token) -> Token:
        token_new = Token()
        token_new.line = token_raw.line
        token_new.char = token_raw.char
        token_new.pos = token_raw.pos
        v = token_raw.value

        if re.match("0x[0-9a-f]{1,4}", v):  # Hex Digit Literal
            token_new.type = "Literal"
            token_new.value = int(v, 16)
        elif re.match("0b[0-1]{1,4}", v):  # Binary Digit Literal
            token_new.type = "Literal"
            token_new.value = int(v, 2)
        elif re.match("[0-9]{1,5}", v):  # Decimal Digit Literal
            token_new.type = "Literal"
            token_new.value = int(v, 10)
        elif re.match("\'[:ascii:]\'", v):  # Char literal with ascii
            token_new.type = "Literal"
            token_new.value = ord(v[1])
        elif re.match("'\\\\x[0-9a-f]{1,2}'", v):  # Char literal with \x
            token_new.type = "Literal"
            token_new.value = int(v[3:-1], 16)
        elif re.match("'\\\\[tnr\\\\\'\"]'", v):  # Char Literal with \t \n \r \\ \' \"
            token_new.type = "Literal"
            match v[2:-1]:
                case "t":
                    token_new.value = ord("\t")
                case "n":
                    token_new.value = ord("\n")
                case "r":
                    token_new.value = ord("\r")
                case "\\":
                    token_new.value = ord("\\")
                case "'":
                    token_new.value = ord("\'")
                case "\"":
                    token_new.value = ord("\"")
        elif v.lower() in REGISTERS:
            token_new.type = "Register"
            token_new.value = v.upper()
        elif v.lower() in INSTRUCTION_NAMES:
            token_new.type = "Instruction"
            token_new.value = v
        elif re.match("[:ascii:]*:", v):
            token_new.type = "Label"
            token_new.value = v[:-1]
            self.label_table.update({token_new.value: token_new})
        else:
            token_new.type = "Reference"
            token_new.value = token_raw.value

        return token_new

    def analyse_all(self) -> List[Token]:
        token_list = []
        token = lexer.get_next_token_string()
        while token:
            token_list.append(self.analyse_token(token))
            token = lexer.get_next_token_string()
        return token_list


lexer = Lexer(sys.argv[1])
tokens = lexer.analyse_all()
print(tokens)
