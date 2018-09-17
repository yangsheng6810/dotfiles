#!/usr/bin/env python
import sys
import os


def titleize(old_file):
    """Rename a file to uppercase first letter of words"""
    directory, filename = os.path.split(old_file)
    basename, extension = os.path.splitext(filename)
    new_file = os.path.join(directory, basename.title() + extension)
    os.rename(old_file, new_file)


def main():
    for file in sys.argv[1:]:
        titleize(sys.argv[1])


if __name__ == '__main__':
    main()
