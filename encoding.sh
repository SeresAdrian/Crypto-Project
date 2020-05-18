#!/bin/bash
#!/usr/bin/python
clear
while :
do
        echo
        echo "Please enter a number from [00..09]"
        echo -e "\e[32m======================================\e[0m"
        echo -e " [ 01 ] \e[93mBase64 encode\e[0m"
        echo -e " [ 02 ] \e[93mUTF-16 encode\e[0m"
        echo -e " [ 03 ] \e[93mAscii At The Power Of Binary Code\e[0m "
        echo -e " [ 04 ] \e[93mBinary encode\e[0m"
        echo -e " [ 05 ] \e[93mHexadecimal encode\e[0m"
        echo -e " [ 06 ] \e[93mOctal encode\e[0m"
        echo -e " [ 07 ] \e[93mA1Z26 encode\e[0m"
        echo -e " [ 08 ] \e[93mMorse encode\e[0m"
        echo -e "\e[32m======================================\e[0m"
        echo " [ 00 ]: Back"
        echo
        echo -n "Enter your choice:"
        read x
        case $x in
                 01)
                        python2 encryption\ files/encoding/base64enc.py
                        ;;
                 02)
                        python3 encryption\ files/encoding/utf-16enc.py
                        ;;
                 03)
                        python3 encryption\ files/encoding/powerofminuszero.py
                        ;;
                 04)
                        python3 encryption\ files/encoding/binaryenc.py
                        ;;

                 05)
                        python3 encryption\ files/encoding/hexenc.py
                        echo
                        ;;
                 06)
                        python3 encryption\ files/encoding/octalenc.py
                        ;;
                 07)
                        python3 encryption\ files/encoding/a1z26enc.py
                        ;;
                 08)
                        python3 encryption\ files/encoding/morseenc.py
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


