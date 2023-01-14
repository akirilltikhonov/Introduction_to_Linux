#!/usr/bin/bash

gsd ()  # M N
{
  local gcd="GCD is "
  let "M=$1"
  let "N=$2"
  if [[ $M -eq $N ]]
  then
    echo "${gcd}$1"
  elif [[ $M -gt $N ]]
  then
    gsd $(( $M-$N )) $N
  else
    gsd $M $(( $N-$M ))
  fi 
}

while :
do
  read -p "Enter two numbers: " M N
  if [[ -z $M ]]; then echo "bye"; exit; fi;
  gsd $M $N
done

