#!/usr/bin/env python3

import sh
import sys
XBACKLIGHT = sh.Command("xbacklight")

def get_lightness():
    return float(XBACKLIGHT("-get"))

def set_lightness(value:float):
    XBACKLIGHT("-set", value)

def update_lightness(value_diff:float):
    if value_difference > 0:
        return XBACKLIGHT("-inc", value_diff)
    else:
        return XBACKLIGHT("-dec", -value_diff)

def smart_update_lightness(direction):
    c_lightness = get_lightness()
    step = 1
    if c_lightness + direction > 5:
        step = 5
    if c_lightness + direction > 20:
        step = 10
    if c_lightness + direction > 60:
        step = 20
    set_lightness(c_lightness + step * direction)
    print("Lightness is %f" % get_lightness())


def main():
    if len(sys.argv) < 2 or sys.argv[1] not in ("inc", "dec"):
        print("Need a parameter of inc or dec")
        exit(1)
    op = sys.argv[1]
    dd = {"inc": 1, "dec": -1}
    direction = dd[op]

    smart_update_lightness(direction)


if __name__ == '__main__':
    main()
