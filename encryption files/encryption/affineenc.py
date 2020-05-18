def affine_encrypt(text, key): 
    ''' 
    C = (a*P + b) % 26 
    '''
    return ''.join([ chr((( key[0]*(ord(t) - ord('A')) + key[1] ) % 26)  
                  + ord('A')) for t in text.upper().replace(' ', '') ]) 
  
  
def main(): 
    # declaring text and key 
    text = input("Please enter the plaintext :")
    key = [17, 20] 
  
    # calling encryption function 
    affine_encrypted_text = affine_encrypt(text, key) 
  
    print('Encrypted Text: {}'.format( affine_encrypted_text )) 

  
if __name__ == '__main__': 
    main() 
