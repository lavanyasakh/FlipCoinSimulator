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
	if [[ $count1 == 21 || $count2 == 21 ]]
	then
		break
	fi	
done
if [ $count1 == 21 ]
then
	echo "Head has won over tail with diffrence of: " $(($count1-$count2))
else
   echo "Tail has won over head with diffrence of: " $(($count2-$count1))
fi
