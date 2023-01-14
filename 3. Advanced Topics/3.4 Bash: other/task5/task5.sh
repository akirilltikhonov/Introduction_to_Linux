#!/usr/bin/bash

calc ()  # a operand b
{
  let "a=$1"
  operand=$2
  let "b=$3"
  let "res=$a $operand $b"
  echo "$res"
}

check_param () #a operand #b
{
  a=$1 
  operand=$2
  b=$3

  valid="[0-9]+"
  validOperand="[+-/*///%(/*/*)]{1}"
  if [[ ! ( $a =~ $valid && $b =~ $valid && $operand =~ $validOperand ) ]]
  then
    echo "error"
    exit
  fi
}

while :
do
  read -p "" a operand b
  if [[ $a == 'exit' ]]; then echo "bye"; exit; fi;
  check_param "$a" "$operand" "$b"
  calc "$a" "$operand" "$b"
done

