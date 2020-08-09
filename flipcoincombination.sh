#!/bin/bash -x
#flip coin combination

check=0
HH=0
HT=0
TH=0
TT=0
counter=0

declare -A dict


for i in {1..20}
do
	check1=$((RANDOM%2))
	check2=$((RANDOM%2))

	if [[ $check1 -eq 1 &&  $check2 -eq 1 ]]
	then
		((HH++))
                echo "HH"
	elif [[ $check1 -eq 0 && $check2 -eq 1 ]]
	then
		(( TH++ ))
            	echo "TH" 

        elif [[ $check1 -eq 1 && $check2 -eq 0 ]]
	then
		(( HT++ ))
		echo "HT"
	else
		(( TT++ ))
		echo "TT"
		fi

			dict[HH]="HH"
			dict[HT]="HT"
			dict[TH]="TH"
			dict[TT]="TT"

done

percentageHH=$(( $HH*100 ))
percentageHT=$(( $HT*100 ))
percentageTH=$(( $TH*100 ))
percentageTT=$(( $TT*100 ))

echo "HH Percentage: $(( percentageHH/20 ))%"
echo "HT Percentage: $(( percentageHT/20 ))%"
echo "TH Percentage: $(( percentageTH/20 ))%"
echo "TT Percentage: $(( percentageTT/20 ))%"

echo "Double Combination" ${dict[@]}
