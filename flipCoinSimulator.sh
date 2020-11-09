#!/bin/bash -x

echo "WELCOME TO FLIP COIN SIMULATOR"

declare -A COUNT
HEADS=0;
TAILS=0;
ten=10;
hundred=100;
for (( i=0; $i<10; i++ ))
do
#checking HEADS OR TAILS
flipCoinCheck=$((RANDOM%2))

if [ $flipCoinCheck -eq 0 ]
then
	echo "HEADS";
	COUNT[HEADS]=$((HEADS++))
else
	echo "TAILS";
	COUNT[TAILS]=$((TAILS++))
fi
	
done
#calculating singlet combination percentage
singletHeadsPercentage=$(($HEADS*100/10));
singletTailsPercentage=$(($TAILS*100/10));
