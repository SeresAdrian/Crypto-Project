#!/usr/bin/python

from Crypto.Hash import MD4

h = MD4.new()
h.update(input("Please enter the plaintext : " ))
print("The hexadecimal equivalent of hash is : ",h.hexdigest())
