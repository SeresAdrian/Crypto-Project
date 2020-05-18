#!/usr/bin/python

from Crypto.Hash import MD2

h = MD2.new()
h.update(input("Please enter the plaintext : " ))
print("The hexadecimal equivalent of hash is : ",h.hexdigest())

