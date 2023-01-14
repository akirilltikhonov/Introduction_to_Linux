#!/usr/bin/bash

out="$1 students"

if [[ $1 -ge 0 ]]
then
 case $1 in
   0)
     echo "No students"
     ;;
   1)
     echo "$1 student"
     ;;
   2)
     echo "$out"
     ;;
   3)
     echo "$out"
     ;;
   4)
     echo "$out"
     ;;
   *)
     echo "A lot of students"
  esac
fi
