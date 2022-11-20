#!/bin/bash

if [ $keyCollected = "false" ]
	then
cat <<keyScript

After a thorough search of the room, you find a rusty metal key laying in the corner.

You pick it up and store it in your pocket.

keyScript

	keyCollected="true"
elif [ $keyCollected = "true" ]
	then
		echo "You've already collected this item."
fi
