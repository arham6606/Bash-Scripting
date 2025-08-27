#!/usr/bin/env bash


   main () {
   year=$1
     if [[ $year =~ ^-?[0-9]*\.[0-9]+$ ]]; then
         echo "Usage: leap.sh <year>"
         exit 1
     fi

     if [[ $year =~ [a-zA-Z] ]]; then
         echo "Usage: leap.sh <year>"
         exit 1
     fi
     if [ $# -eq 0 ]; then
         echo "Usage: leap.sh <year>"
         exit 1
    fi
    if [ $# -gt 1 ]; then
         echo "Usage: leap.sh <year>"
         exit 1
     fi
    
    if (( year % 400 == 0 )); then
        echo "true"
    elif (( year % 100 == 0 )); then
        echo "false"
    elif (( year % 4 == 0 )); then
        echo "true"
    else
        echo "false"
    fi
               }

   main "$@"

