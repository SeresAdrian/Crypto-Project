#!/usr/bin/python

cistring = input ("PLease enter the plaintext : ")
string = ""
cistring = cistring.lower()
#cistring  = "".join(cistring.split())
for x in cistring:
	if ord(x) == 32:
		print(27,end=" ")
	else:
		char  = ord(x)-96
		if char > 0 and char <=26:
			print (char,end=" ")
print()
