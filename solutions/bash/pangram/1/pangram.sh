#!/usr/bin/env bash



   main () {
       line=$1
       lower_case=$(echo "$line" | tr '[:upper:]' '[:lower:]' |         tr -cd 'a-z')

        paragram=$(echo "$lower_case" | fold -w1 | sort -u | tr          -d '\n')

        if [ ${#paragram} -eq 26 ]; then
            echo "true"
    
        else
            echo "false"
fi
    
   }

  
   main "$@"
