#!/bin/bash
#!/usr/bin/python
clear
while :
do
	echo
	echo "Please enter a number from [00..15]"
	echo -e "\e[32m======================================\e[0m"
	echo -e " [ 01 ] \e[93mCaesar Cipher\e[0m"
	echo -e " [ 02 ] \e[93mVigenere(modified) Cipher\e[0m"
	echo -e " [ 03 ] \e[93mReverse string\e[0m"
	echo -e " [ 04 ] \e[93mBaconian Cipher\e[0m"
	echo -e " [ 05 ] \e[93mXor Cipher\e[0m"
	echo -e " [ 06 ] \e[93mAffine Cipher\e[0m"
	echo -e " [ 07 ] \e[93mBase64 encode\e[0m"
	echo -e " [ 08 ] \e[93mUTF-16 encode\e[0m"
	echo -e " [ 09 ] \e[93mAscii At The Power Of Binary Code\e[0m "
	echo -e " [ 10 ] \e[93mBinary encode\e[0m"
	echo -e " [ 11 ] \e[93mMorse code encryption\e[0m"
	echo -e " [ 12 ] \e[93mHexadecimal encode\e[0m"
	echo -e " [ 13 ] \e[93mSubstitution Cipher\e[0m"
	echo -e " [ 14 ] \e[93mMD5 hashing\e[0m"
	echo -e " [ 15 ] \e[93mRSA encryption\e[0m"
        echo -e "\e[32m======================================\e[0m"
	echo " [ 00 ]: Back"
	echo
	echo -n "Enter your choice:"
	read x
	case $x in
		 01)
			dual=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz
			echo -n "Please enter a string: "
			read phrase
			pphrase=${phrase,,}
			echo -n "Please enter the integer number for shiftting letters: "
			read rot
	#		if [[ $rot =~ ^[+-]?[0-9]+\.?[0-9]*$ ]];
	#		then
	#			echo "Please try again later. Floating point it is not accepted."
	#			break
	#		fi
			if [ $rot -lt 0 ]
			then	
				rot=$(( ${rot}%26))
				rot=$((${rot}+26))
				newphrase=$(echo $pphrase | tr "${dual:0:26}" "${dual:${rot}:26}")
			else
				rot=$((rot%26))
				newphrase=$(echo $pphrase | tr "${dual:0:26}" "${dual:${rot}:26}")
			fi
			for i in $(seq 1 ${#phrase})
			do
				if [[ ${phrase:i-1:1} == [A-Z] ]];
				then
					echo -n "${newphrase:i-1:1}" | perl -ne 'print "\U$_"'
				else
					echo -n "${newphrase:i-1:1}"
				fi
			done
			echo
			;;
		 02)
			./vigenere.sh +-x
			;;
		 03)
			read -p "Enter string:" string
			echo -n "Reversed string:"
			for (( i = ${#string} -1; i>=0 ; i-- ))
				do
				echo -n "${string:$i:1}"
				done
			echo
			;;
		 04)
			python3 baconianenc.py
			;;
		 05)
			python3 xorenc.py
			;;
		 06)
			python3 affineenc.py
			;;
		 07)
			python2 base64enc.py
			;;
		 08)
			python3 utf-16enc.py
			;;
		 09)
			python3 powerofminuszero.py
			;;
		 10)
			python3 binaryenc.py
			;;
		 11)
			python3 morseenc.py
			;;
		 12)
			python3 hexenc.py
			echo
			;;
		 13)
			python3 substituioncipherenc.py
			;;
		14)
			python3 md5hash.py
			;;
		15)
			python2 rsa.py
			;;
		 00)
			clear
			exit 1
			break
			;;
		 *)
			echo "Sorry, wrong command"
			;;
	esac
done
