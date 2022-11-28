#!/bin/bash

echo ""
read -p "What is the password? " userResponse

if [ $userResponse = "SHAPESHIFTER" ]; then
	echo -e "\nThe chest pops open, revealing your third and final key!\n"
	apophisKeyCollected="true"
else
	echo -e "\nIncorrect.\n"
fi
