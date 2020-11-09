#!/bin/bash -x

echo "WELCOME TO FLIP COIN SIMULATOR"

declare -A COUNT
declare -A COUNT1
HH=0;
TT=0;
HT=0;
TH=0;

for (( i=0; $i<10; i++ ))
do
#checking doublet combination HH,TT.TH.HT
flipCoinCheck=$((RANDOM%2))
flipCoinCheck1=$((RANDOM%2))
if [ $flipCoinCheck -eq 1 ] && [ $flipCoinCheck1 -eq 1 ]
then
	echo "HH";
	COUNT[HH]=$((HH++))
elif [ $flipCoinCheck -eq 0 ] && [ $flipCoinCheck1 -eq 0 ]
then
	echo "TT";
	COUNT[TT]=$((TT++))
elif [ $flipCoinCheck -eq 0 ] && [ $flipCoinCheck1 -eq 1 ]
then
	echo "TH";
	COUNT[TH]=$((TH++))
else
	echo "HT";
	COUNT[HT]=$((HT++))
fi
	
done
#calculating doublet combination percentage
COUNT[doubletHHPercentage]=$(($HH*100/10));
COUNT[doubletTTPercentage]=$(($TT*100/10));
COUNT[doubletTHPercentage]=$(($TH*100/10));
COUNT[doubletHTPercentage]=$(($HT*100/10));

