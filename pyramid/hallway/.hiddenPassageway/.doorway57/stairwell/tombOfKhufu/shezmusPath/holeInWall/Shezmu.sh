#!/bin/bash
if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else
	if [ $ammitPathAllowed = "true" ]; then
		echo -e "\nYou've already defeated Shezmu.\n"
	else
		source ../../../../../../../../gameScripts/Shezmu/Shezmu.sh
	fi
fi
