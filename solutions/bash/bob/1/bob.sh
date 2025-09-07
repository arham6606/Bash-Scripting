#!/usr/bin/env bash

main() {
    string="$1"

    # Trim surrounding whitespace
    string="${string#"${string%%[![:space:]]*}"}"
    string="${string%"${string##*[![:space:]]}"}"

    if [[ -z $string ]]; then
        echo "Fine. Be that way!"
    elif [[ $string == "${string^^}" && $string != "${string,,}" && $string == *"?" ]]; then
        echo "Calm down, I know what I'm doing!"
    elif [[ $string == "${string^^}" && $string != "${string,,}" ]]; then
        echo "Whoa, chill out!"
    elif [[ $string == *"?" ]]; then
        echo "Sure."
    else
        echo "Whatever."
    fi
}

main "$@"
