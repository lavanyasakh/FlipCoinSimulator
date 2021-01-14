#!/bin/bash -x

#variables
count1=0
count2=0

#Constants
IS_HEADS=1
VALUE=21
VALUE1=25

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

	if [[ $count1 -gt $VALUE && $count2 -gt $VALUE ]]
	then
		 if [[ $count1 -gt $VALUE1 || $count2 -gt $VALUE1 ]]
       then
				break
		 fi	 	
	fi	
done

if [ $count1 -gt $count2 ]
then
	echo "Head has won over tail with diffrence of: " $(($count1-$count2))
else
   echo "Tail has won over head with diffrence of: " $(($count2-$count1))
fi
echo $count1
echo $count2
