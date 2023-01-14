#!/usr/bin/bash

counter ()  # takes one argument
{
  local let "c1+=$1"
  let "c2+=${1}*2"
}

let i=1
let c2=0
while [[ $i -le 10 ]]
do
  echo "i: $i"
  counter i
  let "i++"
done

echo "counters are $c1 and $c2"
