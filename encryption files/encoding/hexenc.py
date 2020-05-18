#!/bin/bash

string = input("Please enter the plaintext : ")
print ("The equivalent of hexadecimal enocoded text is: ",end="")
for x in string:
	print (hex(ord(x))[2:],end="")

