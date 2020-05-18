#!/bin/bash
#!/usr/bin/python
clear
while :
do
        echo
        echo "Please enter a number from [00..05]"
        echo -e "\e[32m======================================\e[0m"
        echo -e " [ 01 ] \e[93mBase64 encode\e[0m"
        echo -e " [ 02 ] \e[93mUTF-16 encode\e[0m"
        echo -e " [ 03 ] \e[93mAscii At The Power Of Binary Code\e[0m "
        echo -e " [ 04 ] \e[93mBinary encode\e[0m"
        echo -e " [ 05 ] \e[93mHexadecimal encode\e[0m"
        echo -e "\e[32m======================================\e[0m"
        echo " [ 00 ]: Back"
        echo
        echo -n "Enter your choice:"
        read x
        case $x in
                 01)
                        python2 encoding/base64enc.py
                        ;;
                 02)
                        python3 encoding/utf-16enc.py
                        ;;
                 03)
                        python3 encoding/powerofminuszero.py
                        ;;
                 04)
                        python3 encoding/binaryenc.py
                        ;;

                 05)
                        python3 encoding/hexenc.py
                        echo
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


