#!/bin/bash

if [ $helpedAssan = "true" ]
	then
		echo -e "\n\"THANK YOU FOR HELPING ME IN MY SEARCH.\"\n"
elif [ $helpedAssan = "false" ]
	then
		read -p "\"MY NAME IS ASSAN SYED. IN WHAT TOMB DOES MY FATHER LIE?\" " "userInput"
		if [ `echo $userInput | wc -c` -eq 4 -a $userInput = "LFN" ]
			then
				echo -e "\nAssan feebly walks over to crypt $userInput.\n\n\"AFTER ALL THESE YEARS OF SEARCHING, YOU HAVE FOUND HIM. THANK YOU. YOU MAY PASS.\"\n\n"
				helpedAssan="true"
		elif [ `echo $userInput | wc -c` -eq 4 ]
			then
				echo -e "\n\"THIS IS NOT MY FATHER. WHY DO YOU MISLEAD ME?\"\n"
		else
			echo -e "\n\"FOOLISH EXPLORER, THAT IS NOT THE NAME OF A CRYPT.\"\n"
		fi
fi
