#!/bin/bash
#!/usr/bin/python
clear
while :
do
        echo
        echo "Please enter a number from [00..09]"
        echo -e "\e[32m======================================\e[0m"
        echo -e " [ 01 ] \e[93mCaesar Cipher\e[0m"
        echo -e " [ 02 ] \e[93mVigenere(modified) Cipher\e[0m"
        echo -e " [ 03 ] \e[93mReverse string\e[0m"
        echo -e " [ 04 ] \e[93mBaconian Cipher\e[0m"
        echo -e " [ 05 ] \e[93mXor Cipher\e[0m"
        echo -e " [ 06 ] \e[93mAffine Cipher\e[0m"
	echo -e " [ 07 ] \e[93mAtbash Cipher\e[0m"
        echo -e " [ 08 ] \e[93mSubstitution Cipher\e[0m"
        echo -e " [ 09 ] \e[93mRSA encryption\e[0m"
        echo -e " [ 10 ] \e[93mAES encryption\e[0m"
        echo -e " [ 11 ] \e[93mDES encryption\e[0m"
        echo -e "\e[32m======================================\e[0m"
        echo " [ 00 ]: Back"
        echo
        echo -n "Enter your choice:"
        read x
        case $x in
                 01)
                        dual=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz
                        echo -n "Please enter a plaintext : "
                        read phrase
                        pphrase=${phrase,,}
                        echo -n "Please enter the integer number for shiftting letters: "
                        read rot
        #               if [[ $rot =~ ^[+-]?[0-9]+\.?[0-9]*$ ]];
        #               then
        #                       echo "Please try again later. Floating point it is not accepted."
        #                       break
        #               fi
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
			./encryption\ files/encryption/vigenere.sh +-x
                        ;;
                 03)
                        read -p "Enter string : " string
                        echo -n "Reversed string : "
                        for (( i = ${#string} -1; i>=0 ; i-- ))
                                do
                                echo -n "${string:$i:1}"
                                done
                        echo
                        ;;
                 04)
                       python3 encryption\ files/encryption/baconianenc.py 
                        ;;
                 05)
			python3 encryption\ files/encryption/xorenc.py 
                        ;;
                 06)
                        python3 encryption\ files/encryption/affineenc.py
                        ;;
		 07)
                        python3 encryption\ files/encryption/atbashenc.py

			;;
		 08)
                        python3 encryption\ files/encryption/substituioncipherenc.py
                        ;;
		 09)
                        python2 encryption\ files/encryption/rsa.py
                        ;;
                 10)
                        read -p "Enter text : " text
			sudo echo $text | openssl aes-256-cbc -a -salt
                        ;;
                 11)
                        python3 encryption\ files/encryption/des.py
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


