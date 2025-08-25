#!/usr/bin/env bash


   main () {
    number=$1
    span=$2
    
    result=0
    digits=${#number}
    largest=()

    if [ $span -gt $digits ]; then
        echo "span must not exceed string length"
        exit 1
    fi
    
    if [[ ! $number =~ ^[0-9]+$ ]]; then
        echo "input must only contain digits"
        exit 1
    fi

    if [ $span -lt 0 ]; then
        echo "span must not be negative"
        exit 1
    fi

    
    
    for ((i=0; $i<$digits;i++)); do
        if [ $span -eq 2 ]; then
            d1=${number:i:1}
            d2=${number:i+1:1}
            (( result = d1 * d2 ))
            largest+=("$result")
        
        elif [ $span -eq 3 ]; then
            d1=${number:i:1}
            d2=${number:i+1:1}
            d3=${number:i+2:1}
            (( result = d1 * d2 * d3 ))
            largest+=("$result")

         elif [ $span -eq 5 ]; then
            d1=${number:i:1}
            d2=${number:i+1:1}
            d3=${number:i+2:1}
            d4=${number:i+3:1}
            d5=${number:i+4:1}
            (( result = d1 * d2 * d3 * d4 * d5 ))
            largest+=("$result")

        elif [ $span -eq 6 ]; then
            d1=${number:i:1}
            d2=${number:i+1:1}
            d3=${number:i+2:1}
            d4=${number:i+3:1}
            d5=${number:i+4:1}
            d6=${number:i+5:1}
            (( result = d1 * d2 * d3 * d4 * d5 *d6 ))
            largest+=("$result")
        fi
    done
    
    large=${largest[0]}
    
    for num in "${largest[@]}"; do
        if (( num > large)); then
            large=$num
        fi
    done

echo "$large"
       
   }


   main "$@"
