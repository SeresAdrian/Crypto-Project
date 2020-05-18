MORSE_CODE_DICT = { 'A':'.-', 'B':'-...', 
                    'C':'-.-.', 'D':'-..', 'E':'.', 
                    'F':'..-.', 'G':'--.', 'H':'....', 
                    'I':'..', 'J':'.---', 'K':'-.-', 
                    'L':'.-..', 'M':'--', 'N':'-.', 
                    'O':'---', 'P':'.--.', 'Q':'--.-', 
                    'R':'.-.', 'S':'...', 'T':'-', 
                    'U':'..-', 'V':'...-', 'W':'.--', 
                    'X':'-..-', 'Y':'-.--', 'Z':'--..', 
                    '1':'.----', '2':'..---', '3':'...--', 
                    '4':'....-', '5':'.....', '6':'-....', 
                    '7':'--...', '8':'---..', '9':'----.', 
                    '0':'-----', ', ':'--..--', '.':'.-.-.-', 
                    '?':'..--..', '/':'-..-.', '-':'-....-', 
                    '(':'-.--.', ')':'-.--.-'} 
def decrypt(message): 
  
    # extra space added at the end to access the 
    # last morse code 
    message += ' '
  
    decipher = '' 
    citext = '' 
    for letter in message: 
  
        # checks for space 
        if (letter != ' '): 
  
            # counter to keep track of space 
            i = 0
  
            # storing morse code of a single character 
            citext += letter 
  
        # in case of space 
        else: 
            # if i = 1 that indicates a new character 
            i += 1
  
            # if i = 2 that indicates a new word 
            if i == 2 : 
  
                 # adding space to separate words 
                decipher += ' '
            else: 
  
                # accessing the keys using their values (reverse of encryption) 
                decipher += list(MORSE_CODE_DICT.keys())[list(MORSE_CODE_DICT 
                .values()).index(citext)] 
                citext = '' 
  
    return decipher 
  
# Hard-coded driver function to run the program 
def main(): 
    message = input ("Enter the ciphertext : ")
    result = decrypt(message) 
    print ("The decrypted data is " , result) 
  
# Executes the main function 
if __name__ == '__main__': 
    main() 
