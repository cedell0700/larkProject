#!/bin/bash

if [ $helpedAssan = "false" ]
		then
			echo "\nAssan is blocking your way. You must help him find his father. Perhaps you should search for his last name?\n"
elif [ $helpedAssan = "true" ]
		then
cat<<tombScript

Story elements about entering the tomb and how luxurious it is.

The sarcophagus lies in the center of the room.

Just describe the room here, the stuff that happens when the tomb is opened is within the "openTomb.sh" script.

tombScript

enteredTomb="true"
fi
