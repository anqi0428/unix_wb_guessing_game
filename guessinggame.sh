#!/bin/bash
# A Simple Shell Script To Get The Number of Files in the Current Directory

guessinggame () {

	n_of_files=$(ls -l ./* | wc -l)
	guess="-1"
	 
	while [[ $guess -ne $n_of_files ]]; 
	do
		echo "Please guess the number of files in the current directory:"
		read guess

		if [[ $guess -eq $n_of_files ]]
		then 
			echo "Congratulations! You get the right number!"
		else
			[[ $guess -gt $n_of_files ]] && hint="larger" || hint="smaller"
			echo "Sorry, your number is $hint than the number of files!"		
		fi
	done
}

