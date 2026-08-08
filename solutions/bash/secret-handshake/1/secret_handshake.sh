#!/usr/bin/env bash

main() {
    num=$1
    actions=()

    if (( num & 1 )); then
        actions+=("wink")
    fi

    if (( num & 2 )); then
        actions+=("double blink")
    fi

    if (( num & 4 )); then
        actions+=("close your eyes")
    fi

    if (( num & 8 )); then
        actions+=("jump") 
    fi

    if (( num & 16 )); then
        mapfile -t actions < <(printf '%s\n' "${actions[@]}" | tac)
    fi

    IFS=,
    echo "${actions[*]}"
}

main "$@"
