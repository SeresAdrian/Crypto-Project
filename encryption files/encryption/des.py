import pyDes

# For Python3, you'll need to use bytes, i.e.:
#   data = b"Please encrypt my data"
#   k = pyDes.des(b"DESCRYPT", pyDes.CBC, b"\0\0\0\0\0\0\0\0", pad=None, padmode=pyDes.PAD_PKCS5)

data = input("Please enter the text: ")
k = pyDes.des("DESCRYPT", pyDes.CBC, "\0\0\0\0\0\0\0\0", pad=None, padmode=pyDes.PAD_PKCS5)
d = k.encrypt(data)
print ("Encrypted: %r" % d)
print ("Decrypted: %r" % k.decrypt(d))
