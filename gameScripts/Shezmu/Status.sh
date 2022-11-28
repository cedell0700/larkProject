#!/bin/bash

if [ $Health -eq 0 ]
then
cat<<Message
You have been slain by Shezmu, the deity of Blood and Wine

"Poor little thief, you should learn to not mess with gods."
Message

elif [ $BossHealth -eq 0 ]
then
cat<<Message
You have slained Shezmu, the deity of Blood and Wine

"Your punishment with arrive in time Adbelkader" says Shezmu

You finish him by cutting his head off and kicking it away
Message
shezmuKeyCollected="true"
ammitPathAllowed="true"
else
num=$(( RANDOM % 4 ))
case $num in
        0) echo "The battle persists";;
        1) echo "The battle continues";;
        2) echo "There's no end to this";;
        3) echo "There's still more fighting to do";;
        4) echo "The fight rages on!" ;;
esac
fi

turn=1
case $turn in
	0)cat<<you
Your Turn
you
;;
	1)cat<<boss
It's Shezmu's Turn
boss
source ../../../../../../../../gameScripts/Shezmu/shezOffense/shezAttack.sh
;;
esac
