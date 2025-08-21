#!/usr/bin/env bash


   main () {

   if [ "$1" = "total" ]; then
        echo "18446744073709551615"
        exit 0
    fi

   if [ $1 -eq 0 ]; then
       echo "Error: invalid input"
       exit 1
   elif [ $1 -lt 1 ]; then
       echo "Error: invalid input"
       exit 1 
    elif [ $1 -ge 65 ]; then
        echo "Error: invalid input"
        exit 1
   
   fi
   
   result=1
   for ((i=1; i<$1; i++)); do
       result=$(echo "$result + $result" | bc)
done
   
   echo "$result"
   
   }

   main "$@"

