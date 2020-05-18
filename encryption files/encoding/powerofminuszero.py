#!/bin/python

def countSetBits(num):
	binary = bin(num)
	setBits = [ones for ones in binary[2:] if ones=='1']
	return len(setBits)
def iterative_power(a,b):
	result = 1
	while b>0:
		result = result * a
		b = b  - 1
	return result

if __name__ == "__main__":
	string = input("Please enter the plaintext : ")
	for c in string:
		num=ord(c)
		if num != 32:
			x=countSetBits(num)
			print(iterative_power(num,x),end=" ")
	print()
