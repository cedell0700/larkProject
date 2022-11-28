#!/bin/bash

echo "Button 2 pressed."
buttonCombination+=2;
echo "Current combination: $buttonCombination"

if [ `echo $buttonCombination | wc -c` -eq 5 -a $buttonCombination = "4232" ]
	then
		echo -e "\nThe combination worked! The gate rises before you, leading to a set of stairs.\nClimb them to reach the second floor of this mysterious structure.\n"
		#mkdir stairwell
		stairwellAllowed="true"
	elif [ `echo $buttonCombination | wc -c` -eq 5 ]
		then
			echo -e "\nHmm, that didn't seem to work. Try again.\n"
			buttonCombination="";
fi

