#!/bin/bash -x 

n=21
unit=1
Heads=0
Tails=0
for (( i=1; i<=$n; i++ ))
do
	flipCoin=$(( RANDOM%2 ))
		if [[ $flipCoin -eq 1 ]]
		then
			Heads=$(($Heads+$unit))
		else 
			 Tails=$(($Tails+$unit))
		fi
done
if [[ $Heads -gt $Tails ]]
then
	echo Heads Won
	Res=$(($Heads-$Tails))
	echo By $Res Heads Won
elif [[ $Tails -gt $Heads ]]
then
	echo Tails Won
	Res=$(($Tails-$Heads))
	echo By $Res Tails Won
elif [[ $Heads -eq $Tails ]]
then
	echo Tails and Heads are Tie
fi
