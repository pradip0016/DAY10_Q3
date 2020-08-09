#!/bin/bash -x
#flip coin combination
echo " flip coin  combination "

check=$(( RANDOM%2 ))
if [[ $check -eq 1 ]]
then
	echo "Heads"
else
	echo "Tails"
fi
