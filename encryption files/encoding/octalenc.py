#!/usr/bin/python
string=input("Please enter the plaintext : ")
for c in string:
	print(oct(int(ord(c)))[2:],end="")
	print(" ",end="")
print()
