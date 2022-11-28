#!/bin/bash
if [ $tombSequenceBegun = "false" ]; then
tput smcup
clear
tput setab 1
clear
sleep 1
tput setab 4
clear
sleep 1
tput setab 3
clear
sleep 1
tput setab 6
clear
sleep 1
tput setab 2
clear
sleep 1
tput setab 5
clear
sleep 1
tput setab 0
clear
tput rmcup

cat<<tombOpening

The ground shakes as you open the tomb.

In a flash, three spirits fly out of the tomb, crashing into the walls of the crypt.

You are rightfully in shock; but as the dust settles, you see the precious treasures inside glisten from the light of your torch.

The loot you've traveled all this way for is so close... for a moment, it distracts you from all that just happened...

However, the tomb's lid moves no further, at which point you notice three keyholes within Khufu's resting place.

You realize you need to track down the three spirits and defeat them if you want to access the riches within.

The only thing you're able to reach within the tomb is a shiny dagger, which you promptly grab.

Track down and defeat the spirits, then return here (and run "openTomb.sh") again once you have all three keys.

tombOpening

tombSequenceBegun="true"
shezmuPathAllowed="true"

elif [ $tombSequenceBegun = "true" ]; then
	if [ $ammitKeyCollected = "true" -a $shezmuKeyCollected = "true" -a $apophisKeyCollected = "true" ]; then
		echo -e "\nYou got all the keys! You insert them all into their respective slots, and crack open Khufu's crypt to gain your riches.\n"
	else
		echo -e "\nYou haven't collected all the keys yet. Come back when you have them all!\n"
	fi
fi
