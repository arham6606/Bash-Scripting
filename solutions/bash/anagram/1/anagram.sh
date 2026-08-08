#!/usr/bin/env bash

main () {
    target=$1
    shift
    candidates=($@)  

    #echo "$target"
    #echo "$candidates"

    target_sorted=$(echo "$target" | tr '[:upper:]' '[:lower:]' | grep -o . | sort | tr -d '\n')
    
    #echo "$target_sorted"
    #echo "........................."
    result=()
    for word in "${candidates[@]}"; do
        word_sorted=$(echo "$word" | tr '[:upper:]' '[:lower:]' | grep -o . | sort | tr -d '\n')
        
     #   echo "$word"
      #  echo "$word_sorted"

        # must match sorted target AND not be identical to target
        if [[ "$word_sorted" == "$target_sorted" && "${word,,}" != "${target,,}" ]]; then
            result+=("$word")
        fi
    done

    echo "${result[@]}"
}

main "$@"
