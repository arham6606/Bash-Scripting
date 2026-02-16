#!/usr/bin/env bash

operation=$1
number=$2

square_of_sum() {
    local n=$1
    local sum=0
    for ((i=1; i<=n; i++)); do
        ((sum+=i))
    done
    echo $((sum * sum))
}

sum_of_squares() {
    local n=$1
    local total=0
    for ((i=1; i<=n; i++)); do
        ((total+=i * i))
    done
    echo "$total"
}

difference() {
    local n=$1
    local sos
    local sumsq
    sos=$(square_of_sum "$n")
    sumsq=$(sum_of_squares "$n")
    echo $((sos - sumsq))
}

case $operation in
    square_of_sum) square_of_sum "$number" ;;
    sum_of_squares) sum_of_squares "$number" ;;
    difference) difference "$number" ;;
    *) echo "Invalid operation"; exit 1 ;;
esac
