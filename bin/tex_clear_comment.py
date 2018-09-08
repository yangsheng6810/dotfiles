#!/usr/bin/env python3
import re
import fileinput

def main():
    match = re.compile(r"(?<!\\)%[^\n]*")
    with fileinput.input(inplace=True) as f:
        for line in f:
            print(match.sub(r" ", line))

if __name__ == '__main__':
    main()
