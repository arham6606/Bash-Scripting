#!/usr/bin/env bash

   main ()
   {
        num=$1
        series=$2
        length=${#num}
        result=()

        if [[ -z $num ]]; then
            echo "series cannot be empty"
            exit 1
        fi
        
        if ((series < 0 )); then
            echo "slice length cannot be negative"
            exit 1
        fi
        
        if ((series == 0 )); then
            echo "slice length cannot be zero"
            exit 1
        fi
        
        if (( series > length )); then
            echo "slice length cannot be greater than series length"
            exit 1
        fi

        for (( i=0; i<=length-series; i++ )); do
            result+=("${num:$i:$series}")
        done

        echo "${result[*]}"
   }

   main "$@"
