#!/usr/bin/bash

#declare -i n=0
read n
while (( n != 42))
do
    echo "$n"
    read n
done