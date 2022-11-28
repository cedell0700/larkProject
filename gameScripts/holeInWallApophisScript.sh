#!/bin/bash

if [ $holeInWallApophisAllowed = "false" ]; then
	echo -e "\nYou aren't allowed here yet.\n"
	cd ..
elif [ $holeInWallApophisAllowed = "true" ]; then
	holeInWallEnteredApophis="true"
fi
