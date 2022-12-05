#!/bin/bash

if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
	echo "This encounter must be run as either '. ${BASH_SOURCE[0]}' or 'source ${BASH_SOURCE[0]}'."
else
cp ../../../../../../../gameScripts/apophisTablet tablet && echo -e "\nPuzzle successfully reset.\n"
fi
