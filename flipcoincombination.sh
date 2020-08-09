#!/bin/bash -x
#flip coin combination
declare -A dict
count=0
heads=0
tails=0
for i in {1..20}
do
	check=$(( RANDOM%2 ))
	if [[ $check -eq 1 ]]
	then
		dict[$count]="Heads"
		heads=$(( $heads + 1 ))
	else
		dict[$count]="Tails"
		tails=$(( $tails + 1 ))
	fi
	count=$(( $count + 1))
done
percentageHead=$(( $heads * 100 ))
percentageTail=$(( $tails * 100 ))
echo "Head Percentage: $(( percentageHead/20 ))%"
echo "Tail Percentage: $(( percentageTail/20 ))%"
