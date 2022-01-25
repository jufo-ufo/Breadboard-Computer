from emulator import *

import curses
import time

BASE_DELAY = 0.001
CLK_DELAY = 0.5


def print_frame(window: curses.window, x: int, y: int, width: int, height: int):
    for i in range(width-1):
        window.addstr(y, x + i + 1, "─")
        window.addstr(y + height, x + i + 1, "─")

    for i in range(height-1):
        window.addstr(y + i + 1, x, "│")
        window.addstr(y + i + 1, x + width, "│")

    window.addstr(y, x, "┌")
    window.addstr(y, x + width, "┐")
    window.addstr(y + height, x, "└")
    window.addstr(y + height, x + width, "┘")


def main(stdscr: curses.window):
    c_state = ComputerState()
    c_state.load_from_file("HelloWorld.asm.bin")

    global BASE_DELAY
    global CLK_DELAY

    clk_start = time.time()

    stdscr.clear()
    stdscr.nodelay(True)
    stdscr.keypad(True)
    curses.noecho()

    i = 0

    SIZE_Y, SIZE_X = stdscr.getmaxyx()[0] - 1, stdscr.getmaxyx()[1] - 1
    stdscr.addstr(SIZE_Y, 0, "[Q]uit [C]ontinue [S]top [R]eset [M]odify".ljust(SIZE_X+1)[:SIZE_X], curses.A_REVERSE)

    print_frame(stdscr, 0, 5, SIZE_X // 2, (SIZE_Y-6) // 2)
    print_frame(stdscr,
                (SIZE_X - (SIZE_X // 2)*2) + SIZE_X // 2, 5,
                -(SIZE_X - (SIZE_X // 2)*2) + SIZE_X // 2, (SIZE_Y-6) // 2
                )

    string_in_enable = False
    string_in_max_size = 32
    string_in = ""

    stdscr.refresh()

    while True:
        try:
            pressed_key = stdscr.getkey()
            stdscr.addstr(SIZE_Y, SIZE_X - 8, repr(pressed_key)[:7], curses.A_REVERSE)
            stdscr.refresh()
        except Exception:
            pressed_key = None

        if not string_in_enable:
            if pressed_key == "q" or pressed_key == "Q":
                break
            elif pressed_key == "c" or pressed_key == "C":
                pass
            elif pressed_key == "s" or pressed_key == "S":
                pass
            elif pressed_key == "r" or pressed_key == "R":
                pass
            elif pressed_key == "m" or pressed_key == "M":
                pass
        else:
            if pressed_key == "\n":
                string_in_enable = False
            elif pressed_key == curses.KEY_BACKSPACE and len(string_in) > 0:
                string_in = string_in[:-1]
            elif pressed_key:
                string_in = (string_in + str(pressed_key))[:string_in_max_size]

        if time.time() - clk_start >= CLK_DELAY:
            clk_start = time.time()
            stdscr.addstr(0, 0, str(i))
            i = i ^ 1
            stdscr.refresh()


if __name__ == "__main__":

    curses.wrapper(main)
    exit()
