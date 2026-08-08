#!/usr/bin/env bash

main() {
    number=$1
    digits=${#number}
    result=0

    for ((i=0; i<digits; i++)); do
        num=${number:$i:1}
        (( result += num ** digits ))
    done

    if [[ $result -eq $number ]]; then
        echo "true"
    else
        echo "false"
    fi
}

main "$@"
