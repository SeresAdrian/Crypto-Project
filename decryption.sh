  GNU nano 4.5                                                         encryption.sh                                                                    
#!/bin/bash
#!/usr/bin/python
clear
while :
do
        echo
        echo "Please enter a number from [00..09]"
        echo -e "\e[32m======================================\e[0m"
        echo -e " [ 01 ] \e[93mCaesar Decipher\e[0m"
        echo -e " [ 02 ] \e[93mVigenere(modified) Decipher\e[0m"
        echo -e " [ 03 ] \e[93mBaconian Decipher\e[0m"
        echo -e " [ 04 ] \e[93mXOR Decipher\e[0m"
        echo -e " [ 05 ] \e[93mAffine Decipher\e[0m"
        echo -e " [ 06 ] \e[93mAtbash Decipher\e[0m"
        echo -e " [ 07 ] \e[93mSubstitution Decipher\e[0m"
        echo -e " [ 10 ] \e[93mRSA Decipher \e[0m"
        echo -e "\e[32m======================================\e[0m"
        echo " [ 00 ]: Back"
        echo
        echo -n "Enter your choice:"
        read x
        case $x in
                 01)
                        python3 decryption\ files/decryption/caesardec.py
                        ;;

                 02)
                        ./decryption\ files/decryption/vigenere.sh -+x
                        ;;
                 03)
                        python3 decryption\ files/decryption/baconiandec.py
                        ;;
                 04)
                        python3 decryption\ files/decryption/xordec.py
                        ;;
                 05)
                        python3 decryption\ files/decryption/affinedec.py
                        ;;
                 06)
                        python3 decryption\ files/decryption/atbashdec.py
                        ;;
                 07)
                        python3 decryption\ files/decryption/substitutiondec.py
                        ;;




                 10)
		   read -p "Enter cipher:" cip
		   sudo echo $cip | openssl aes-256-cbc -a -d -salt 
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



