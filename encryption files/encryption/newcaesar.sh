while true
do

                        dual=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz
                        echo -n "Please enter a string: "
                        read phrase
                        pphrase=${phrase,,}
                        echo -n "Please enter the integer number for shiftting letters: "
                        python fibo.py
			read rot
#                        if [[ $rot =~ ^[+-]?[0-9]+\.?[0-9]*$ ]];
 #                      then
  #                             echo "Please try again later. Floating point it is not accepted."
   #                            break
    #                   fi
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
done
