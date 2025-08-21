#!/usr/bin/env bash



   main () {

if [ $# -eq 0 ]; then
  echo "Usage: error_handling.sh <person>"
  exit 1
elif [ $# -gt 1 ]; then
    echo "Usage: error_handling.sh <person>"
    exit 1
fi
echo "Hello, $1"
   }

     main "$@"
