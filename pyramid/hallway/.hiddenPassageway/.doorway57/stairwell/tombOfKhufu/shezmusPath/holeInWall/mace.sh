#!/bin/bash
if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else
if [ $turn -eq 0 ]; then
Bleed=$(( RANDOM % 2 ))
case $Bleed in
        0)Bleed=2;;
        1)Bleed=0;;
esac

Damage=$(( 3+$Bleed ))

BossHealth=$(( $BossHealth-$Damage ))


turn=1

source ../../../../../../../../gameScripts/Shezmu/Status.sh
else
	echo -e "\nYou can't use this yet.\n"
fi
fi
