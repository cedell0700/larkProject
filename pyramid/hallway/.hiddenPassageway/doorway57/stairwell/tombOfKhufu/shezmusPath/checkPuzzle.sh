#!/bin/bash

wineVar=`ls -la wineShelf | grep wine | wc -l`
#echo $wineVar
perfumeVar=`ls -la perfumeShelf | grep perfume | wc -l`
#echo $perfumeVar
ointmentVar=`ls -la ointmentShelf | grep ointment | wc -l`
#echo $ointmentVar


if [ $wineVar -eq 3 -a $perfumeVar -eq 3 -a $ointmentVar -eq 3 ]; then
	echo -e "\n\"You've done it! Thank you kindly. Here is my key.\"\n"
	holeInWallAllowedShezmu="true"
	ammitPathAllowed="true"
	shezmuKeyCollected="true"
else
	echo -e "\n\"Incorrect. Maybe you should check for ones that may be hidden in the corners of the room...\"\n"
fi
