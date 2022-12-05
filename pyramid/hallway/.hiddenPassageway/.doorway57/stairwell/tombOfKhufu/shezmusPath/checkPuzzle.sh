#!/bin/bash

if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else
wineVar=`ls -la wineShelf | grep wine | wc -l`
#echo $wineVar
perfumeVar=`ls -la perfumeShelf | grep perfume | wc -l`
#echo $perfumeVar
ointmentVar=`ls -la ointmentShelf | grep ointment | wc -l`
#echo $ointmentVar


if [ $wineVar -eq 3 -a $perfumeVar -eq 3 -a $ointmentVar -eq 3 ]; then
	echo -e "\n\"You've done it! Thank you kindly. Here is my key.\"\n"
	holeInWallAllowedShezmu="true"
else
	echo -e "\n\"Incorrect. Maybe you should check for ones that may be hidden in the corners of the room...\"\n"
fi
fi
