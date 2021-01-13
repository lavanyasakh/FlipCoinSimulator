#!/bin/bash -x
#variables
count1=0
count2=0

#Constants
IS_HEADS=1
IS_TAILS=0
read -p "Enter a no time to loop run: " n
for (( i=1; i<=n; i++ ))
do 
FlipCoin=$(( RANDOM%2 ))
	if [ $FlipCoin -eq $IS_HEADS ]
	then
		((count1++))
	else
		((count2++))
	
	fi
done
echo "Head has won $count1 times"
echo "Tail has won $count2 times"
