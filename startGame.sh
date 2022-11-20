ear
cat .pyramidPhoto1
read -p "                                    Press [RETURN] to begin." "startGame"
cat <<introScript

Following rumors of an unexplored pyramid in the desert, you begin your journey with a car ride out of the city.

You then saddle up on your camel and begin combing the desert for hours.

Hours became days.

Days became weeks.

Finally, just as you were about to give up and head back, a triangle-shaped shadow appears in the distance.

You hop off of your camel, and peer up at the massive building towering above you.

Use "cd placeName" to move between areas.
	+ "cd" is the command you use to move between "rooms" (folders).
	+ The "placeName" after the command is an argument, which is something the command needs to be provided.
	+ In this case, cd needs to be provided the name of the place (folder) you want to move to.
	+ For example, use "cd pyramid" to enter the pyramid.

introScript

if [ -d pyramid ]
	then
		rm -rf pyramid
fi
mkdir pyramid

enteredPyramid="false"
enteredHallway="false"
enteredHiddenPassageway="false"
enteredDoorway="false"
buttonCombination=""
climbedFirstStairwell="false"

function cd() { # Redefine cd so that it prints desired messages when the user first enters a room.
	command cd "$@" || return

	if [ `pwd | grep pyramid$ | wc -l` -eq 1 -a $enteredPyramid = "false" ] # User enters pyramid for first time
		then
			source ../gameScripts/entryScript.sh
	fi

	if [ `pwd | grep pyramid/hallway$ | wc -l` -eq 1 -a $enteredHallway = "false" ] # User enters hallway for first time
		then
			source ../../gameScripts/hallwayScript.sh
	fi
	if [ `pwd | grep pyramid/hallway/.hiddenPassageway$ | wc -l` -eq 1 -a $enteredHiddenPassageway = "false" ]
		then
			source ../../../gameScripts/hiddenPassagewayScript.sh
	fi
	if [ `pwd | grep pyramid/hallway/.hiddenPassageway/doorway57$ | wc -l` -eq 1 -a $enteredDoorway = "false" ]
		then
			source ../../../../gameScripts/doorwayScript.sh
	fi
	if [ `pwd | grep pyramid/hallway/.hiddenPassageway/doorway57/stairwell$ | wc -l` -eq 1 -a $climbedFirstStairwell = "false" ]
		then
			source ../../../../../gameScripts/stairwellScript.sh
	fi
}

