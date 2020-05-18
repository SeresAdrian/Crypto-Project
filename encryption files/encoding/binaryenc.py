#!/bin/python

string = input("Please enter the plaintext : ")
print(' '.join(format(ord(x),'b') for x in string))
