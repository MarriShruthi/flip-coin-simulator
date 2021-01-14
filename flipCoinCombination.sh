#!/bin/bash

echo  "enter n :"
read n
declare -A coin
for (( i=1; i<=$n; i++ ))
do
	coin1=$(( RANDOM%2 ))
	coin2=$(( RANDOM%2 ))
	coin3=$(( RANDOM%2 ))
if [[ $coin1 -eq 1 && $coin2 -eq 1 && $coin3 -eq 1 ]]
then
	coin[$i]="HHH"

elif [[ $coin1 -eq 1 && $coin2 -eq 1 && $coin3 -eq 0 ]]
then
        coin[$i]="HHT"

elif [[ $coin1 -eq 1 && $coin2 -eq 0 && $coin3 -eq 1 ]]
then
        coin[$i]="HTH"

elif [[ $coin1 -eq 0 && $coin2 -eq 1 && $coin3 -eq 1 ]]
then
        coin[$i]="THH"

elif [[ $coin1 -eq 0 && $coin2 -eq 0 && $coin3 -eq 0 ]]
then
        coin[$i]="TTT"

elif [[ $coin1 -eq 0 && $coin2 -eq 0 && $coin3 -eq 1 ]]
then
        coin[$i]="TTH"

elif [[ $coin1 -eq 0 && $coin2 -eq 1 && $coin3 -eq o ]]
then
        coin[$i]="THT"

elif [[ $coin1 -eq 1 && $coin2 -eq 0 && $coin3 -eq 0 ]]
then
        coin[$i]="HTT"

fi
done
 echo "Doublet ::"${coin[@]}
