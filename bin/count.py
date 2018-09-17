#!/usr/bin/env python3
import sys

def count(filename):
	ff = open(filename,"r",encoding="gbk");
	inComment = False
	counter = 0
	for line in ff:
		if line.isspace():
			#print(line,end='');
			continue
		if line.find("//")==0:
			continue
		if line.find("//")>=0 and line[0:line.find("//")].isspace():
			#print(line,end='');
			continue
		if line.find("/*")>=0:
			#print(line,end='');
			if line.find("*/")<0:
				inComment = True
			continue
		if inComment and line.find("*/") >= 0:
			#print(line,end='');
			inComment = False
			continue
		counter+=1
		#print(line,end="")
	print("{0:5} {1}".format(counter,filename));
	return counter

def main():
	cc = 0
	for filename in sys.argv[1:]:
		cc+=count(filename)
	print("{0:5}".format(cc))

main()
