#!/bin/bash

if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else
if [ `cat tablet | grep -i "The greatest savior is apophis." | wc -l` -eq 149 -a `cat tablet | grep -i "Apophis is the most superior deity." | wc -l` -eq 150 -a `cat tablet | grep -i "All who live must dedicate themselves to the worship of Apophis." | wc -l` -eq 149 -a `cat tablet | grep -i "The great deity Apophis is victorious in all his battles." | wc -l` -eq 149 ]; then
	echo -e "\n\"THANK YOU. YOU MAY NOW FACE ME IN HONORABLE BATTLE.\"\n"
	holeInWallAllowedApophis="true"
else
	echo -e "\nIncorrect. Use restartPuzzle.sh to try again.\n"
fi
fi
