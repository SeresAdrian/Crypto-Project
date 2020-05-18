import os
def A1Z26_decrypt(cistring):
# Decrypt string by converting each number to a letter
    string = ""     # Placeholder variable
    data = cistring.split() # Split string at " "
 
    for char in data:   # Loop through each character
        if int(char) == 27:
                string += ' '
        else:
                char = chr(int(char) + 96)  # Convert number to letter
                string += char  # Add character to string
    return(string)      # Return cipher string

cis=input("Enter the ciphertext : ")
print ("This is the decrypted data : ",A1Z26_decrypt(cis))
