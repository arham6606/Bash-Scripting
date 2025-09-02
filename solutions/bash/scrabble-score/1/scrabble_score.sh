#!/usr/bin/env bash


   main ()
   {
       word=$1
       point1=("A" "E" "I" "O" "U" "L" "N" "R" "S" "T")
       point2=("D" "G")
       point3=("B" "C" "M" "P")
       point4=("F" "H" "V" "W" "Y")
       point5=("K")
       point8=("J" "X")
       point10=("Q" "Z")
       result=0
       word_upper_case=${word^^}


       for (( i=0; i<${#word_upper_case}; i++ )); do
            char="${word_upper_case:$i:1}"

            for element1 in "${point1[@]}"; do 
                if [[ "$char" == "$element1" ]]; then
                    ((result=result+1))
                fi
            done

            for element2 in "${point2[@]}"; do 
                if [[ "$char" == "$element2" ]]; then
                    ((result=result+2))
                fi
            done

            for element3 in "${point3[@]}"; do 
                if [[ "$char" == "$element3" ]]; then
                    ((result=result+3))
                fi
            done

            for element4 in "${point4[@]}"; do 
                if [[ "$char" == "$element4" ]]; then
                    ((result=result+4))
                fi
            done

            for element5 in "${point5[@]}"; do 
                if [[ "$char" == "$element5" ]]; then
                    ((result=result+5))
                fi
            done

            for element8 in "${point8[@]}"; do 
                if [[ "$char" == "$element8" ]]; then
                    ((result=result+8))
                fi
            done

            for element10 in "${point10[@]}"; do 
                if [[ "$char" == "$element10" ]]; then
                    ((result=result+10))
                fi
            done



       done

       echo "$result"

       
   }


   main "$@"
