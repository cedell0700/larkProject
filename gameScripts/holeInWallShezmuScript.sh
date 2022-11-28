#!/bin/bash

if [ $holeInWallAllowedShezmu = "false" ]; then
	echo -e "\nYou aren't allowed here yet.\n"
	cd ..
elif [ $holeInWallAllowedShezmu = "true" ]; then
	holeInWallEnteredShezmu="true"
fi
