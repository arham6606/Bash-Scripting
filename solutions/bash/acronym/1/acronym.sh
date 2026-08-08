#!/usr/bin/env bash



   main ()
   {
       string=$1
       string=${string,,}
       #echo "$string"

       length=${#string}
       #echo "$length"
       result=""

       for ((i=0; i<length; i++ )); do

            if (( i== 0 )); then
                result+=${string:$i:1}
            fi

            if [[ ${string:$i:1} == " " ]]; then

                if [[ ${string:$((i+1)):1} =~ [a-z] ]]; then
                    digit=${string:$((i+1)):1}
                    result+=$digit
                fi

            elif [[ ${string:$i:1} == "-" ]]; then

                if [[ ${string:$((i+1)):1} =~ [a-z] ]]; then
                    digit=${string:$((i+1)):1}
                    result+=$digit
                fi
            
            elif [[ ${string:$i:1} == "_" ]]; then

                if [[ ${string:$((i+1)):1} =~ [a-z] ]]; then
                    digit=${string:$((i+1)):1}
                    result+=$digit
                fi

            

            fi

       done
        result=${result^^}
        echo "$result"
   }

   main "$@"

