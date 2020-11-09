#!/bin/bash -x

echo "WELCOME TO FLIP COIN SIMULATOR"

#checking HEADS OR TAILS
flipCoinCheck=$((RANDOM%2))

if [ $flipCoinCheck -eq 0 ]
then
	echo "HEADS";
else
	echo "TAILS";
fi
