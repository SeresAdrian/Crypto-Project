#!/usr/bin/python

import random
alphabet = 'abcdefghijklmnopqrstuvwxyz.,! '

key = 'nu.t!iyvxqlf,bcjrodhkaew spzgm'

ciphertext = input("Please enter the plaintext : ")

def makeKey(alphabet):
        alphabet = list(alphabet)
        random.shuffle(alphabet)
        return ''.join(alphabet)
def decrypt(cipher,key,alphabet):
       keyIndices = [key.index(k) for k in cipher]
       return ''.join(alphabet[keyIndex] for keyIndex in keyIndices)


print("This is the decrypted data : " + decrypt(ciphertext,key,alphabet))














