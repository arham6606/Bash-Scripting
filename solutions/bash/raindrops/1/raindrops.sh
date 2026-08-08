#!/usr/bin/env bash


   main () {
    num=$1
    if [ $(($num % 3)) -eq 0 ] && [ $(($num % 5)) -eq 0 ] && [       $(($num % 7)) -eq 0 ]; then
        echo "PlingPlangPlong"
    
    elif [ $(($num % 3)) -eq 0 ] && [ $(($num % 5)) -eq 0 ]; then
        echo "PlingPlang"
    
    elif [ $(($num % 3)) -eq 0 ] && [ $(($num % 7)) -eq 0 ]; then
        echo "PlingPlong"
    
    elif [ $(($num % 5)) -eq 0 ] && [ $(($num % 7)) -eq 0 ]; then
        echo "PlangPlong"
    
    elif [ $(($num % 3)) -eq 0 ]; then
        echo "Pling"
    
    elif [ $(($num % 5)) -eq 0 ]; then
        echo "Plang"
    
    elif [ $(($num % 7)) -eq 0 ]; then
        echo "Plong"
    
    else 
        echo "$num"
    fi  
           }

  
   main "$@"

