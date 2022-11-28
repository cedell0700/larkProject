#!/bin/bash

if [ $WineCounter -lt  6 && $(($WineCounter % 2)) -eq 1 ]
then
BossDamage=$(( $BossDamage+2 ))
WineCounter=$(( $WineCounter+1 ))

else if [ $WineCounter -lt  6 && $(($WineCounter%2)) -eq 0 ]
then
BossDamage=$(( $BossDamage+2 ))
WineCounter=$(( $WineCounter+1 ))
./charge.sh

else
skip=1
WineCounter=0
fi

