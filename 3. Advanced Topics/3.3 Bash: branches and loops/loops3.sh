#!/usr/bin/bash

for str in $1 $2 $3 $4 $5
do
  echo "start"
  if [[ $str > "c" ]]
  then
    continue
  fi
  echo "finish"
done
