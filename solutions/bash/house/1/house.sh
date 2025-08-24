#!/usr/bin/env bash


   main () {
     
    poem=(
    "house that Jack built."
    "malt"
    "rat"
    "cat"
    "dog"
    "cow with the crumpled horn"
    "maiden all forlorn"
    "man all tattered and torn"
    "priest all shaven and shorn"
    "rooster that crowed in the morn"
    "farmer sowing his corn"
    "horse and the hound and the horn"
)

actions=(
    "lay in"
    "ate"
    "killed"
    "worried"
    "tossed"
    "milked"
    "kissed"
    "married"
    "woke"
    "kept"
    "belonged to"
)

first=$1
second=$2

if [[ $first -lt 1 || $first -gt $second || $second -gt 12  ]]; then
    echo "invalid"
    exit 1
fi

for ((v=$first; v<=$second; v++)); do 
    if [[ $v -ne $first ]]; then
        echo
    fi
    echo "This is the ${poem[$v - 1]}"
    for (( i=$v - 2; i>=0; i--)); do
        echo "that ${actions[$i]} the ${poem[$i]}"
    done

done
     
   }

 
   main "$@"


