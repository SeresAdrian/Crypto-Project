#!/bin/bash
#!/usr/bin/python
clear
while :
do
        echo
        echo "Please enter a number from [00..06]"
        echo -e "\e[32m======================================\e[0m"
	echo -e " [ 01 ] \e[93mMD2    Hashing\e[0m"	
	echo -e " [ 02 ] \e[93mMD4    Hashing\e[0m"
        echo -e " [ 03 ] \e[93mMD5    Hashing\e[0m"
	echo -e " [ 04 ] \e[93mSha1   Hashing\e[0m"
        echo -e " [ 05 ] \e[93mSha224 Hashing\e[0m" 
        echo -e " [ 06 ] \e[93mSha256 Hashing\e[0m" 
        echo -e " [ 07 ] \e[93mSha3   Hashing\e[0m" 
        echo -e " [ 08 ] \e[93mSha384 Hashing\e[0m" 
        echo -e " [ 09 ] \e[93mSha512 Hashing\e[0m" 
 
        echo -e "\e[32m======================================\e[0m"
        echo " [ 00 ]: Back"
        echo
        echo -n "Enter your choice:"
        read x
        case $x in
                  01) 
                     python3 hashing/md2hash.py
                     ;;
                  02) 
                     python3 hashing/md4hash.py
                     ;;
		  03) 
		     python3 hashing/md5hash.py
		     ;;
		  04)
                     python3 hashing/sha1hash.py
                     ;;
                  05) 
                     python3 hashing/sha224hash.py
                     ;;
                  06) 
                     python3 hashing/sha256hash.py
                     ;;
                  07) 
                     python  hashing/sha3hashing.py
                     ;;	
                  08) 
                     python3 hashing/sha384hash.py
                     ;;
                  09) 
                     python3 hashing/sha512hash.py
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


