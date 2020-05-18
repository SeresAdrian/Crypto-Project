lookup = {'A':'aaaaa', 'B':'aaaab', 'C':'aaaba', 'D':'aaabb', 'E':'aabaa', 
        'F':'aabab', 'G':'aabba', 'H':'aabbb', 'I':'abaaa', 'J':'abaab', 
        'K':'ababa', 'L':'ababb', 'M':'abbaa', 'N':'abbab', 'O':'abbba', 
        'P':'abbbb', 'Q':'baaaa', 'R':'baaab', 'S':'baaba', 'T':'baabb', 
        'U':'babaa', 'V':'babab', 'W':'babba', 'X':'babbb', 'Y':'bbaaa', 'Z':'bbaab'} 
  
# Function to encrypt the string according to the cipher provided 
def encrypt(message): 
    cipher = '' 
    for letter in message: 
        # checks for space 
        if(letter != ' '): 
            # adds the ciphertext corresponding to the  
            # plaintext from the dictionary 
            cipher += lookup[letter] 
        else: 
            # adds space 
            cipher += ' '
  
    return cipher 

def main(): 
    message = input("Please enter the plaintext : ")
    result = encrypt(message.upper()) 
    print (result) 
  
  
#Executes the main function 
if __name__ == '__main__': 
    main() 
