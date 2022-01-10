from typing import List, Tuple, Dict, Literal
import re
import sys
import traceback

WHITESPACE = [" ", "\t", "\r"]
REGISTERS = ["zero", "ip", "sp", "a", "b", "c", "d", "flag"]
ENDIANNESS = "big"

INSTRUCTIONS = {
    "nop": ("", "", "", 0x00),
    "mov": ("r", "", "rc", 0x01),
    "add": ("r", "r", "rc", 0x02),
    "sub": ("r", "r", "rc", 0x03),
    "mul": ("r", "r", "rc", 0x04),
    "div": ("r", "r", "rc", 0x05),
    "xor": ("r", "r", "rc", 0x06),
    "and": ("r", "r", "rc", 0x07),
    "not": ("r", "", "rc", 0x08),
    "or": ("r", "r", "rc", 0x09),

    "str": ("r", "r", "rc", 0x0a),
    "ld": ("r", "r", "rc", 0x0b),
    "bnk1": ("", "", "rc", 0x0c),
    "bnk2": ("", "", "rc", 0x0d),
    "push": ("", "r", "rc", 0x0e),
    "pop": ("", "r", "", 0x0f),
    "call": ("", "", "rc", 0x10),
    "ret": ("", "", "", 0x11),

    "test": ("r", "", "rc", 0x12),
    "me": ("r", "", "rc", 0x13),
    "mg": ("r", "", "rc", 0x14),
    "ml": ("r", "", "rc", 0x15),
    "ms": ("r", "", "rc", 0x16),
    "mi": ("r", "", "rc", 0x17),
    "mofadd": ("r", "", "rc", 0x18),
    "mofsub": ("r", "", "rc", 0x19),

    "iout": ("r", "", "rc", 0x1a),
    "dout": ("r", "", "rc", 0x1b),
    "din": ("r", "", "r", 0x1c),
    "aio": ("r", "", "", 0x1d),
    "dio": ("r", "", "", 0x1e),

    "int": ("", "", "", 0x1f),
    "tm1": ("", "", "rc", 0x20),
    "tm2": ("", "", "rc", 0x21),
    "sstl1": ("", "", "rc", 0x22),
    "sstl2": ("", "", "rc", 0x23),
    "ssth1": ("", "", "rc", 0x24),
    "ssth2": ("", "", "rc", 0x25),
    "cfl": ("r", "", "", 0x26),
    "cfh": ("r", "", "", 0x27),
}


class LiteralValue:

    def __init__(self):
        self.bin_value: bytes = b""
        self.int_value: int = 0
        self.str_value: str = ""
        self.type: Literal["address", "data"] = "data"

    def parse(self, literal_string: str, line: int, filename: str, silent=False) -> bool:
        self.str_value = literal_string
        if re.match("0x[0-9a-f]{1,4}", self.str_value):  # Hex Digit Literal
            self.int_value = int(self.str_value, 16)
        elif re.match("0b[0-1]{1,4}", self.str_value):  # Binary Digit Literal
            self.int_value = int(self.str_value, 2)
        elif re.match("[0-9]{1,5}", self.str_value):  # Decimal Digit Literal
            self.int_value = int(self.str_value, 10)
        elif re.match("\'[:ascii:]\'", self.str_value):  # Char literal with ascii
            self.int_value = ord(self.str_value[1])
        elif re.match("'\\\\x[0-9a-f]{1,2}'", self.str_value):  # Char literal with \x
            self.int_value = int(self.str_value[3:-1], 16)
        elif re.match("'\\\\[tnr\\\\\'\"]'", self.str_value):  # Char Literal with \t \n \r \\ \' \"
            match self.str_value[2:-1]:
                case "t":
                    self.int_value = ord("\t")
                case "n":
                    self.int_value = ord("\n")
                case "r":
                    self.int_value = ord("\r")
                case "\\":
                    self.int_value = ord("\\")
                case "'":
                    self.int_value = ord("\'")
                case "\"":
                    self.int_value = ord("\"")
        else:
            if not slice:
                throw_error("\'{}\' is not a valid literal!".format(literal_string), line, filename)
            else:
                return False

        self.bin_value = (self.int_value % 2**16).to_bytes(2, ENDIANNESS)
        return True

    def __str__(self):
        return "LiteralValue{}({}, {})".format(self.type, self.int_value, self.bin_value)

    def __repr__(self):
        return self.__str__()


class Token:

    def __init__(self):
        self.line: int = 0
        self.file: str = ""
        self.number: int = 0

        self.value: List[str] = []
        self.type: Literal["unknown", "instruction", "data", "preprocessor"] = "unknown"

        self.offset: int = 0
        self.size: int = 0
        self.binary_data: bytes = b""

    def __str__(self):
        return "Token{}({}, {}) at line {} in {} offset {}".format(
            self.type.upper(), self.number,
            self.value if len(self.binary_data) <= 0 else self.binary_data,
            self.line, self.file, self.offset
        )

    def __repr__(self):
        return self.__str__()


def throw_error(error_msg: str, line: int, filename: str, char: None | int = None):
    error_msg_text = "line {} in {}: {}".format(line+1, filename, error_msg)
    print(error_msg_text, file=sys.stderr)
    if char:
        print(" "*len(error_msg_text) + " "*char + "^")
    exit(-1)


# Tokenizes raw program by splitting and executing include #statements
def tokenize(program_raw_str: str, filename: str, depth=0) -> Tuple[List[Token], Dict, int]:
    references = {}
    program_tokens = []
    token_number = 0

    for line_number, line_raw in enumerate(program_raw_str.split("\n")):
        line = line_raw.split(";")[0].strip()
        token = Token()
        token.line = line_number
        token.file = filename

        # Splitting Lines while respecting preprocessor statements and quotes
        if len(line) <= 0:
            continue
        elif line[0] == "#":
            token.value.append(line)
        else:
            token_string = ""
            last_char = ""
            quoted = False
            ignore_quoted = False

            for char in line:

                if char == "\"" and not ignore_quoted:
                    quoted = not quoted

                if char == "\\":
                    ignore_quoted = not ignore_quoted
                else:
                    ignore_quoted = False

                if char in WHITESPACE and not quoted:
                    if last_char not in WHITESPACE:
                        token.value.append(token_string)
                        token_string = ""
                else:
                    token_string += char

                last_char = char

            if len(token_string) > 0:
                token.value.append(token_string)

        if token.value[0] == "db":
            token.type = "data"

        # Dealing with special cases like labels and preprocessor statements
        elif token.value[0][-1] == ":":
            references.update({token.value[0][:-1]: token_number})
            del(token.value[0])

        elif token.value[0][0] == "#":
            preprocessor_string = token.value[0]

            if re.match("#include .*", preprocessor_string):
                if depth >= 256:
                    throw_error("""Reached max recursive include depth at 256! 
                    Please stop messing with this, a poor programmer has to fix this now, and he won't be happy. Please 
                    keep in mind every bug you report and encounter the develop has to fix, so DON'T tell me about this 
                    issue it would const me hours to fix and a lot of headache. SO SIMPLY DON'T DO THIS AGAIN OR ELSE.
                    By the way, how did get her, seriously, either you are just dum and process that error by including
                    the wrong freaking fucking file (And yes this is Alliteration, please learn your stylistic devices)
                    or you did this on purpose, the you are an evil person, an very evil, a person how would tell me
                    about this bug. Person how likes to put pineapple on there pizza, a person how likes killing little
                    baby kittens. Like I would kill, and you would not only die, but it will hurt very very much, 
                    I promise, you if you would report this bug to me and I would have to fix it
                    (By the way to not get any lawsuits, because some people are just dum and don't understand irony if
                    it would jump into there face. The Part about killing, THIS WAS FUCKING IRONY DON'T SUW ME! YOU 
                    ALREADY MAD ALOT OF TROUBLE BY CAUSING THIS ERROR, I DON'T FANCY MEETING YOU EVER AGAIN IF YOU SUW 
                    OR TELL ME ABOUT THIS BUG). AND PLEASE, I KNOW MY SPEELLING IS WORSE THEN EVERYTHING ELSE, BUT IF
                    YOU TELL ME THAT I WILL BE VERY UPSAD. AND BEING UP SAD MEANS I WILL HEAT YOU UNTIL YOU DIE, WTICH
                    WILL BE SONER THEN YOU THINK, IF YOU DON'T STOP TELLING ME THAT I'AM DOING A BAD JOB!"""
                                , line_number, filename)

                include_file_name = "".join(preprocessor_string.split(" ")[1:])

                with open(include_file_name, "r") as include_file:
                    include_tokens, include_references, include_token_number = tokenize(
                        include_file.read(), include_file_name, depth=depth+1
                    )

                program_tokens = program_tokens + include_tokens
                references.update(include_references)
                token_number += include_token_number
                del (token.value[0])

            else:
                token.type = "preprocessor"
                token.value = [preprocessor_string]

        else:
            token.type = "instruction"

        token.number = token_number

        if len(token.value) > 0:
            program_tokens.append(token)

            if token.type != "preprocessor":
                token_number += 1

    return program_tokens, references, token_number


INPUT_FILE = "test_program.asm"

with open(INPUT_FILE) as f:
    program_raw = f.read()

# Tokenization
program, references_index, _ = tokenize(program_raw, INPUT_FILE)

# Evaluating db Sections and calculating sizes
for i, token in enumerate(program):
    if token.type == "data":
        for j in token.value[1:]:
            if re.match("\".*\"", j):  # String Literal
                for char in j[1:-1]:
                    char_bin = b"\x00" + char.encode("utf-8")
                    program[i].binary_data += char_bin[-2:]
                program[i].size += len(token.binary_data)
            else:
                new_literal = LiteralValue()
                new_literal.parse(j, token.line, token.file)
                program[i].binary_data += new_literal.bin_value
                program[i].size += 2
    elif token.type == "instruction":
        program[i].size = 2

# Calculating Offsets
offset = 0

for i, token in enumerate(program):
    if token.type != "preprocessor":
        program[i].offset = offset
        offset += program[i].size

# Evaluating references
for ref, value in references_index.items():
    address_value = list(filter(lambda t: t.number == references_index[ref], program))[0].offset
    new_literal = LiteralValue()
    new_literal.int_value = address_value
    new_literal.bin_value = address_value.to_bytes(2, ENDIANNESS)
    new_literal.type = "data"
    references_index[ref] = new_literal

# Evaluating Preprocessor statements
for i, token in enumerate(program):
    if token.type == "preprocessor":
        preprocessor_string = token.value[0]

        references_index_int_values = {}
        for ref, value in references_index.items():
            references_index_int_values.update({ref: value.int_value})
        print(references_index_int_values)

        if re.match("#define .* .*", preprocessor_string):
            ref_name = preprocessor_string.split(" ")[1]
            try:
                ref_value = str(eval("".join(preprocessor_string.split(" ")[2:]), references_index_int_values))
            except Exception:
                traceback.print_exc()
                throw_error("An error occurred while evaluating preprocessor statement".format(),
                            token.line, token.file)

            new_literal = LiteralValue()
            new_literal.parse(ref_value, token.line, token.file)
            references_index.update({ref_name: new_literal})

# Applying all references and Evaluating Literal Values in Instructions
for i, token in enumerate(program):
    for j, token_fragment in enumerate(token.value):
        new_literal = LiteralValue()
        parseable = new_literal.parse(token_fragment, token.line, token.file, silent=True)

        if parseable:
            program[i].value[j] = new_literal
        elif token_fragment in references_index.keys():
            program[i].value[j] = references_index[token_fragment]

# Converting Instruction to binary


# Writing stuff to Output file
with open("output_file.bin", "wb") as f_bin, open("output_file.hex", "w") as f_hex:
    for i in program:
        if i.type == "instruction" or i.type == "data":
            f_bin.write(i.binary_data)
            f_hex.write(i.binary_data.hex() + "\n")

# TODO Add "User Interface" aka sys.args to input in/output file
