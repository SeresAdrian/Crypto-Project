# Python3 code to demonstrate working of  
# Converting binary to string 
# Using BinarytoDecimal(binary)+chr() 
   
  
# Defining BinarytoDecimal() function 
def BinaryToDecimal(binary): 
      
    # Using int function to convert to 
    # string    
    string = int(binary, 2) 
      
    return string 
      
# Driver's code 
# initializing binary data 
bin_data = input("Enter the binary data : ")
   
# print binary data 
print("The binary value is:", bin_data) 
   
# initializing a empty string for  
# storing the string data 
str_data =' '
   
# slicing the input and converting it  
# in decimal and then converting it in string 
i=0
while i < len(bin_data) : 
      
    # slicing the bin_data from index range [0, 6] 
    # and storing it in temp_data 
    j=i
    temp_data=''
    while j<len(bin_data) and  ' ' not in bin_data[j]:
    	temp_data =temp_data + bin_data[j]
    	j=j+1
    # passing temp_data in BinarytoDecimal() fuction 
    # to get decimal value of corresponding temp_data 
    decimal_data = BinaryToDecimal(temp_data) 
       
    # Deccoding the decimal value returned by  
    # BinarytoDecimal() function, using chr()  
    # function which return the string corresponding  
    # character for given ASCII value, and store it  
    # in str_data 
    str_data = str_data + chr(decimal_data)  
    i=j+1
# printing the result 
print("The Binary value after string conversion is : ",str_data) 

