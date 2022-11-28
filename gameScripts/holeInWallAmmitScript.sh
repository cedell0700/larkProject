#!/bin/bash

if [ $holeInWallAllowedAmmit = "false" ]; then
	echo -e "\nYou aren't allowed here yet.\n"
	cd ..
elif [ $holeInWallAllowedAmmit = "true" ]; then
	holeInWallEnteredAmmit="true"
fi
