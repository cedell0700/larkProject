cat .pyramidPhoto1
read -p "                                    Press [RETURN] to begin." "startGame"
#cat <<introScriptOld

#Following rumors of an unexplored pyramid in the desert, you begin your journey with a car ride out of the city.

#You then saddle up on your camel and begin combing the desert for hours.

#Hours became days.

#Days became weeks.

#Finally, just as you were about to give up and head back, a triangle-shaped shadow appears in the distance.

#You hop off of your camel, and peer up at the massive building towering above you.

#introScriptOld
cat<<introScript

The year is 2286 B.C.

You are Abdelkader Nuru, a lawless scavenger searching for treasures to sell in the market.

You're scouring the deserts of Egypt looking for treasures to steal, when you come across a massive pyramid.

This is not just any pyramid.

This is the great pyramid of Khufu, constructed some 500 years ago in the Old Kingdom of Egypt.

You've heard tales of this place.

Anyone who has ever entered the pyramid has never returned.

Regardless, you approach the massive structure, which is now towering above you.

#Use "cd placeName" to move between areas.
	+ "cd" is the command you use to move between "rooms" (folders).
	+ The "placeName" after the command is an argument, which is something the command needs to be provided.
	+ In this case, cd needs to be provided the name of the place (folder) you want to move to.
	+ For example, use "cd pyramid" to enter the pyramid.

introScript

#if [ -d pyramid ]
	#then
		#rm -rf pyramid
#fi
#mkdir pyramid

enteredPyramid="false"
enteredHallway="false"
hiddenPassagewayAllowed="false"
enteredHiddenPassageway="false"
doorwayAllowed="false"
enteredDoorway="false"
buttonCombination=""
stairwellAllowed="false"
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

