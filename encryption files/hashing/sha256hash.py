#!/usr/bin/python

import hashlib

string=input("Please enter tha plaintext : ")

result = hashlib.sha256(string.encode())
print("The hexadecimal equivalent of hash is : ", result.hexdigest())

