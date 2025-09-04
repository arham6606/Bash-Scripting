#!/usr/bin/env bash

main () 
{
    # Convert "[1, 2, 3]" -> "1 2 3"
    clean1=$(echo "$1" | sed -e 's/[][]//g' -e 's/,//g')
    clean2=$(echo "$2" | sed -e 's/[][]//g' -e 's/,//g')

    # Build arrays
    list1=($clean1)
    list2=($clean2)

    # Handle empty cases
    if [[ $1 == "[]" && $2 == "[]" ]]; then
        echo "equal"; exit 0
    fi
    if [[ $1 == "[]" && $2 != "[]" ]]; then
        echo "sublist"; exit 0
    fi
    if [[ $1 != "[]" && $2 == "[]" ]]; then
        echo "superlist"; exit 0
    fi

    # Equal check
    if (( ${#list1[@]} == ${#list2[@]} )); then
        equal="true"
        for (( i=0; i<${#list1[@]}; i++ )); do
            if [[ ${list1[i]} != ${list2[i]} ]]; then
                equal="false"
                break
            fi
        done
        [[ $equal == "true" ]] && { echo "equal"; exit 0; }
    fi

    # Sublist check
    if (( ${#list1[@]} < ${#list2[@]} )); then
        for (( start=0; start<=${#list2[@]}-${#list1[@]}; start++ )); do
            match="true"
            for (( i=0; i<${#list1[@]}; i++ )); do
                if [[ ${list1[i]} != ${list2[start+i]} ]]; then
                    match="false"
                    break
                fi
            done
            [[ $match == "true" ]] && { echo "sublist"; exit 0; }
        done
    fi

    # Superlist check
    if (( ${#list1[@]} > ${#list2[@]} )); then
        for (( start=0; start<=${#list1[@]}-${#list2[@]}; start++ )); do
            match="true"
            for (( i=0; i<${#list2[@]}; i++ )); do
                if [[ ${list2[i]} != ${list1[start+i]} ]]; then
                    match="false"
                    break
                fi
            done
            [[ $match == "true" ]] && { echo "superlist"; exit 0; }
        done
    fi

    echo "unequal"
}

main "$@"
