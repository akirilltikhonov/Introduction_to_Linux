#!/usr/bin/bash

bye='bye'
isActive=1
while [[ isActive -eq 1 ]]
do
  echo 'enter your name:'
  read name
  if [[ -z $name ]]
  then
    echo $bye
    exit
  fi

  echo 'enter your age:'
  read age
  if [[ $age -eq 0 ]]
  then
    echo $bye
    exit
  fi

  if [[ age -le 16 ]]
  then
    group='child'
  elif [[ age -ge 17 && age -le 25 ]]
  then
    group='youth'
  else
    group='adult'
  fi
  
  echo "$name, your group is $group"
done
