#!/usr/bin/env bash


   main ()
   {
       code=$1
       color=$2
       if [[ $code == "code" ]]; then

           case $color in
               black) echo "0";;
               white) echo "9";;
               orange) echo "3";;
               *) echo "invalid color" ; exit 1 ;;
            
            esac
       
       elif [[ $code == "colors" ]]; then
          
           echo "black"
           echo "brown" 
           echo "red"
           echo "orange"
           echo "yellow"
           echo "green"
           echo "blue"
           echo "violet"
           echo "grey"
           echo "white"
           
            
           
       
       fi
   }


   main "$@"

