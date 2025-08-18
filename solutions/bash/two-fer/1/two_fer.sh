#!/usr/bin/env bash


   main () {
   name=$1
if [ "$name" = "" ]; then
     name="you"
fi

echo -n "One for $name, one for me." 

   }


   main "$@"
