#!/usr/bin/env python3
from bs4 import BeautifulSoup
import sys

input_file = sys.argv[1]

with open(input_file, "r") as i_file:
    content = i_file.read()

soup = BeautifulSoup(content)
title = soup.find_all("h1")[0].text
# print(title)
body = soup.find_all("div", {"id":"content"})[0].text

output_file = "out_" + input_file
# output_file = title + ".txt"
with open(output_file, "w") as o_file:
    print(body, file=o_file)
