from typing import Dict, Tuple

INSTRUCTIONS: Dict[str, Tuple[str, str, str, int]] = {
    "nop": ("", "", "", 0x00),
    "mov": ("r", "", "rc", 0x01),
    "add": ("r", "r", "rc", 0x02),
    "sub": ("r", "r", "rc", 0x03),
    "mul": ("r", "r", "rc", 0x04),
    "div": ("r", "r", "rc", 0x05),
    "xor": ("r", "r", "rc", 0x06),
    "and": ("r", "r", "rc", 0x07),
    "or": ("r", "r", "rc", 0x08),
    "not": ("r", "", "rc", 0x09),

    "str": ("r", "r", "rc", 0x0a),
    "ld": ("r", "r", "rc", 0x0b),
    "bnk1": ("", "", "rc", 0x0c),
    "bnk2": ("", "", "rc", 0x0d),
    "push": ("", "r", "rc", 0x0e),
    "pop": ("", "r", "", 0x0f),
    "call": ("", "", "rc", 0x10),
    "ret": ("", "", "", 0x11),

    "test": ("r", "r", "rc", 0x12),
    "me": ("r", "r", "rc", 0x13),
    "mg": ("r", "", "rc", 0x14),
    "ml": ("r", "", "rc", 0x15),
    "ms": ("r", "", "rc", 0x16),
    "mi": ("r", "", "rc", 0x17),
    "mofadd": ("r", "", "rc", 0x18),

    "iout": ("", "r", "rc", 0x1a),
    "dout": ("", "r", "rc", 0x1b),
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
    "EXIT_EMULATOR": ("", "", "", 0x3f)
}

WHITESPACE = [" ", "\t", "\r"]
REGISTERS = ["zero", "ip", "sp", "a", "b", "c", "d", "flag"]
ENDIANNESS = "big"
MODULUS = 2**16
