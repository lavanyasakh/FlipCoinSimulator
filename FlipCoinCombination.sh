#!/bin/bash -x

FlipCoin=$(( RANDOM%2 ))
IsHeads=1

if [ $FlipCoin -eq $IsHeads ]
then
	echo "Heads"
else
	echo "Tails"
fi
