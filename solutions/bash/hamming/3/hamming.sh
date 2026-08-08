#!/usr/bin/env bash
    
    
  main () {
       if [ $# -ne 2 ]; then
            echo "Usage: hamming.sh <string1> <string2>"
            exit 1
        fi
       DNA_1=$1
       DNA_2=$2
       result=0

       # if lengths differ → error
       if [ ${#DNA_1} -ne ${#DNA_2} ]; then
           echo "Error: strands must be of equal length"
           exit 1
       elif [ ${#DNA_1} -eq 0 ] && [ ${#DNA_2} -eq 0 ]; then
           echo "$result"
           exit 0
       fi

       terminator=${#DNA_1}
       i=0
       j=0
       while [ "$terminator" -gt 0 ]; do
           character_1=${DNA_1:$i:1}
           character_2=${DNA_2:$j:1}
           
           if [[ "$character_1" != "$character_2" ]]; then
               ((result++))
           fi

           ((i++))
           ((j++))
           ((terminator--))
       done

       echo "$result"
   }


   main "$@"


