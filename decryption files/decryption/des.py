import pyDes


d = input ("Please enter the ciphertext: ")
d = d.encode()
k = pyDes.des("DESCRYPT", pyDes.CBC, "\0\0\0\0\0\0\0\0", pad=None, padmode=pyDes.PAD_PKCS5)
print ("Decrypted: %r" % k.decrypt(d))

