#!/usr/bin/env bash


   main ()
   {
      color=("black" "brown" "red" "orange" "yellow" "green" "blue" "violet" "grey" "white")
      
      value=({0..9})
      
      color1=$1 
      color2=$2

      



      
      if [[ ! " ${color[*]} " =~ " $color1" && " ${color[*]} " =~ " $color2 " ]]; then
          echo "invalid color"
          exit 1
      fi

     if [[  " ${color[*]} " =~ " $color1" && ! " ${color[*]} " =~ " $color2 " ]]; then
          echo "invalid color"
          exit 1
      fi

      if [ $# -lt 2 ]; then
          echo "invalid color"
          exit 1
      fi

      
      
      
      color_range1=0
      color_range2=0
      
      
      for (( i=0; i<=9; i++)); do
          if [[ "${color[$i]}" == $color1 ]]; then
              color_range1=$i
              break
          fi
      done

      for (( i=0; i<=9; i++)); do
          if [[ ${color[$i]} == $color2 ]]; then
              color_range2=$i
              break
          fi
      done

    code1=${value[color_range1]}
    code2=${value[color_range2]}
    if [ $code1 -eq 0 ]; then
        echo "$code2"
    else
        echo "$code1$code2"
    fi
   }


   main "$@"

