#!/bin/bash  
echo "Enter n:"
read n
Heads=0
Tails=0
unit=1
declare -A coin
for(( i=1; i<=$n; i++ ))
do
	flipCoin=$(( RANDOM%2 ))
		if [[ $flipCoin -eq 1 ]]
		then
			Heads=$(($Heads+$unit))
			coin[$i]="Heads"
		else 
			 coin[$i]="Tails"
		fi
done
echo "All flips :: " ${coin[@]}
if [[ $Heads -gt $Tails ]]
then
	echo Heads Won
	Res=$(($Heads-$Tails))
	echo By $Res Heads Won
	percentage=$(($Heads*10/100))
	echo percentage=$percentage
elif [[ $Tails -gt $Heads ]]
then
	echo Tails Won
	Res=$(($Tails-$Heads))
	echo By $Res Tails Won
	 percentage=$(($Tails*10/100))
        echo percentage=$percentage

elif [[ $Heads -eq $Tails ]]
then
	echo Tails and Heads are Tie
fi
