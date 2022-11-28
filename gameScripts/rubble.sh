#!/bin/bash

rubbleAmount=$(($rubbleAmount-1))
if [ $rubbleAmount -ge 1 ]; then
	echo -e "\nYou clear a rock. There are $rubbleAmount rock(s) remaining.\n"
elif [ $rubbleAmount -le 0 -a $rubbleAmount -ge -100 ]; then
	echo -e "\nAll the rocks have been cleared! You may now move forward.\n"
	holeInWallAmmitAllowed="true"
else
	echo -e "\nYou've cleared all the rocks, but it seems your for loop indices may have been incorrect. Use \"CTRL+C\" to exit your loop."
fi
