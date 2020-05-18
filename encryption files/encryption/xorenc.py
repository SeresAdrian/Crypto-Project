def encryptDecrypt(inpString): 
  
    # Define XOR key 
    # Any character value will work 
    xorKey = 'P'; 
  
    # calculate length of input string 
    length = len(inpString); 
  
    # perform XOR operation of key 
    # with every caracter in string 
    for i in range(length): 
      
        inpString = (inpString[:i] + 
             chr(ord(inpString[i]) ^ ord(xorKey)) +
                     inpString[i + 1:]); 
        print(inpString[i], end = ""); 
      
    return inpString; 
  
# Driver Code 
if __name__ == '__main__': 
    sampleString = input("Please enter the plaintext : ")
  
    # Encrypt the string 
    print("\nEncrypted String: ", end = ""); 
    sampleString = encryptDecrypt(sampleString); 
    print("\n"); 
