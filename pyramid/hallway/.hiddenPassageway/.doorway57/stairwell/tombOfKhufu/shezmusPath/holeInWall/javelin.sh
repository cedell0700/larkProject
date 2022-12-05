#!/bin/bash

if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else
if [ $turn -eq 0 ]; then
Damage=6

BossHealth=$(( $BossHealth-$Damage ))


turn=1

source ../../../../../../../../gameScripts/Shezmu/Status.sh
else
	echo -e "\nYou can't use this yet.\n"
fi
fi
