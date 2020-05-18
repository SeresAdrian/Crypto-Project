print(b'\xff\xfeh\x00e\x00l\x00l\x00o\x00'.decode("utf-16"))
unicode=input("Please enter the ciphertext : ")
q=str.encode(unicode)
print ("The encrypted data is:" + q.decode("utf-16","ignore"))

