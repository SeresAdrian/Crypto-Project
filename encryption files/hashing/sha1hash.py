#!/usr/bin/python

import hashlib

string=input("Please enter tha plaintext : ")

result = hashlib.sha1(string.encode())
print("The hexadecimal equivalent of hash is : ", result.hexdigest())
