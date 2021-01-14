#!/bin/bash
echo  "enter n :"
read n
declare -A coin
for (( i=1; i<=$n; i++ ))
do
	coin1=$(( RANDOM%2 ))
	coin2=$(( RANDOM%2 ))
if [[ $coin1 -eq 1 && $coin2 -eq 1 ]]
then
	coin[$i]="HH"

elif [[ $coin1 -eq 1 && $coin2 -eq 0 ]]
then
        coin[$i]="HT"

elif [[ $coin1 -eq o && $coin2 -eq 1 ]]
then
        coin[$i]="TH"

elif [[ $coin1 -eq 0 && $coin2 -eq 0 ]]
then
        coin[$i]="TT"
fi
done
 echo "Doublet ::"${coin[@]}
