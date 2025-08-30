#!/usr/bin/env bash

main () {
    string=$1

    if [ $# -eq 0 ]; then
        exit 0
    fi

    array1=("G" "C" "T" "A")
    array2=("C" "G" "A" "U")

    result=""

    # Loop through each character of the string (not $#)
    for (( i=0; i<${#string}; i++ )); do
        character=${string:i:1}   # extract one character

        # validate nucleotide
        if [[ ! " ${array1[*]} " =~ $character ]]; then
            echo "Invalid nucleotide detected."
            exit 1
        fi

        # map character
        for (( j=0; j<4; j++ )); do
            if [[ $character == "${array1[$j]}" ]]; then
                result+=${array2[$j]}
            fi
        done
    done

    echo "$result"
}

main "$@"
