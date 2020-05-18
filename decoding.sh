#!/bin/bash
#!/usr/bin/python
clear
while :
do
        echo
        echo "Please enter a number from [00..09]"
        echo -e "\e[32m======================================\e[0m"
        echo -e " [ 01 ] \e[93mBase64 Decoding\e[0m"
        echo -e " [ 02 ] \e[93mBinary Decoding\e[0m"
        echo -e " [ 03 ] \e[93mOctal  Decoding\e[0m"
        echo -e " [ 04 ] \e[93mA1Z26  Decoding\e[0m"
        echo -e " [ 05 ] \e[93mMorse  Decoding\e[0m"
        echo -e "\e[32m======================================\e[0m"
        echo " [ 00 ]: Back"
        echo
        echo -n "Enter your choice:"
        read x
        case $x in
                 01)
                        python3 decryption\ files/decoding/base64dec.py
                        ;;
                 02)
                        python3 decryption\ files/decoding/binarydec.py
                        ;;
                 03)
                        python3 decryption\ files/decoding/octaldec.py
                        ;;
                 04)
                        python3 decryption\ files/decoding/a1z26dec.py
                        ;;
                 05)
                        python3 decryption\ files/decoding/morsedec.py
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




