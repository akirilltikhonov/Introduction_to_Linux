#!/usr/bin/bash

if [[ -e $0 ]]
then
 echo "True1"
fi

if [[ -z "" ]]
then
 echo "True2"
fi

if [[ -z " " ]]
then
 echo "True3"
fi

if [[ 5 -ge 5 ]]
then
 echo "True4"
fi

if [[ $# -ge 0 ]]
then
 echo "True5"
fi

if [[ $var1 == $var2 ]]
then
 echo "True6"
fi

if [[ "" ]]
then
 echo "True7"
fi
