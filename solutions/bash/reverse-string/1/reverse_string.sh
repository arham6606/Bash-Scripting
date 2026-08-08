#!/usr/bin/env bash

main () {
    local word="$1"
    local length=${#word}
    local reversed=""

    if [ "$length" -gt 0 ]; then
        for (( i=length-1; i>=0; i-- )); do
            reversed+="${word:$i:1}"
        done
    fi

    # Just print the reversed string (or empty string)
    echo -n "$reversed"
}

main "$@"
