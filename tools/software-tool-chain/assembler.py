from instruction_coding import INSTRUCTIONS, REGISTERS, WHITESPACE, ENDIANNESS
from typing import List, Tuple, Dict, Literal
import re
import sys
import os
import traceback

if len(sys.argv) < 2:
    print("Usage: <input_file>", file=sys.stderr)
    exit(1)

INPUT_FILE = sys.argv[1]

if not os.path.exists(INPUT_FILE):
    print(f"File {INPUT_FILE} does not exist!", file=sys.stderr)
    exit(1)


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
                    throw_error("""Reached max recursive include depth at 256! Please stop messing with this, 
                    a poor programmer has to fix this now, and he won't be happy. Please keep in mind every bug you 
                    report and encounter the develop has to fix, so DON'T tell me about this issue it would const me 
                    hours to fix and a lot of headache. SO SIMPLY DON'T DO THIS AGAIN OR ELSE. By the way, 
                    how did I get her, seriously, either you are just dum and process that error by including the 
                    wrong freaking fucking file (And yes this is Alliteration, please learn your stylistic devices) 
                    or you did this on purpose, the you are an evil person, an very evil, a person how would tell me 
                    about this bug. Person how likes to put pineapple on there pizza, a person how likes killing 
                    little baby kittens. Like I would kill, and you would not only die, but it will hurt very very 
                    much, I promise, you if you would report this bug to me and I would have to fix it (By the way to 
                    not get any lawsuits, because some people are just dum and don't understand irony if it would 
                    jump into there face. The Part about killing, THIS WAS FUCKING IRONY DON'T SUW ME! YOU ALREADY 
                    MAD ALOT OF TROUBLE BY CAUSING THIS ERROR, I DON'T FANCY MEETING YOU EVER AGAIN IF YOU SUW OR 
                    TELL ME ABOUT THIS BUG). AND PLEASE, I KNOW MY SPEELLING IS WORSE THEN EVERYTHING ELSE, 
                    BUT IF YOU TELL ME THAT I WILL BE VERY UPSAD. AND BEING UP SAD MEANS I WILL HEAT YOU UNTIL YOU 
                    DIE, WITCH WILL BE SONER THEN YOU THINK, IF YOU DON'T STOP TELLING ME THAT I'AM DOING A BAD JOB!
                    Best wishes, 
                    Alex"""
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
                program[i].size += len(j[1:-1])
            else:
                new_literal = LiteralValue()
                new_literal.parse(j, token.line, token.file)
                program[i].binary_data += new_literal.bin_value
                program[i].size += 1
    elif token.type == "instruction":
        program[i].size = 2

# Calculating Offsets
offset = 0

for i, token in enumerate(program):
    if token.type != "preprocessor":
        program[i].offset = offset
        # print(offset, token.size, token)
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
for i, token in enumerate(program):
    if token.type == "instruction":
        instruction_body = INSTRUCTIONS.get(token.value[0].lower())

        if not instruction_body:
            throw_error("Unknown Instruction \"{}\"".format(token.value[0]), token.line, token.file)

        instruction_parameter_order = list(instruction_body)[:-1]
        while "" in instruction_parameter_order:
            instruction_parameter_order.remove("")

        for j in REGISTERS:
            while j in instruction_parameter_order:
                instruction_parameter_order.remove(j)

        if len(token.value) - 1 != len(instruction_parameter_order):
            throw_error("Invalid Amount of parameters! {} requires {}".format(
                token.value[0], "".join(["<{}> ".format(j) for j in instruction_parameter_order])
            ), token.line, token.file)

        for expected, parameter in zip(instruction_parameter_order, token.value[1:]):
            if expected == "r" and type(parameter) == str and parameter.lower() not in REGISTERS:
                throw_error("\"{}\" is not a register, expected register!".format(
                    parameter.value if type(parameter) == LiteralValue else parameter
                ), token.line, token.file)
            elif expected == "c" and type(parameter) != LiteralValue:
                throw_error("\"{}\" is not a literal, expected literal".format(parameter), token.line, token.file)

        instruction_binary = instruction_body[-1]
        j_body = 0
        j_ins = 1

        while j_body < len(instruction_body) - 1:
            token.binary_data = b"\x00\x00"
            if instruction_body[j_body] != "":
                if type(token.value[j_ins]) == LiteralValue:
                    instruction_binary |= 0b1000000
                    token.binary_data = token.value[j_ins].bin_value
                else:
                    if not token.value[j_ins].lower() in REGISTERS:
                        throw_error("Unknown Register: \"{}\"".format(token.value[j_ins]), token.line, token.file)
                    else:
                        instruction_binary |= REGISTERS.index(token.value[j_ins].lower()) << (7 + j_body*3)
                j_ins += 1
            j_body += 1
        token.binary_data = token.binary_data + instruction_binary.to_bytes(2, ENDIANNESS)

# Writing stuff to Output file
with open(INPUT_FILE + ".bin", "wb") as f_bin, open(INPUT_FILE + ".hex", "w") as f_hex:
    # f_bin.write(b"\x00\x00")
    # f_hex.write("0000\n")
    for i in program:
        if i.type == "instruction" or i.type == "data":
            f_bin.write(i.binary_data)
            f_hex.write("".join([i + " " for i in re.findall("....?", i.binary_data.hex())]) + "\n")

print(references_index)