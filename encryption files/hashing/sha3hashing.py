#!/usr/bin/python

import sha3
data=raw_input("Please enter the plaintext : ")
s=sha3.sha3_224(data.encode('utf-8')).hexdigest()
print "The hexadecimal equivalent of hash is : ",s
