#!/bin/bash

echo "$?"
var=`pwd`
echo "$?"
var1=`programs.sh`
if [[ $? -ne 127 ]]
then
  echo "$?"
  echo "good"
else
  echo "$?"
  echo "bad"
fi
