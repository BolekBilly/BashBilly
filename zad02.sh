#!/usr/bin/bash

#declare -i n=0
read nrloop
for (( i=1; i<=$nrloop; i++ ))
do
    read first second
    for (( j=$first; j<=$second; j++))
    do 
        echo $j
    done
done
read

# while (( n != 42))
# do
#     echo "$n"
#     read n
# done