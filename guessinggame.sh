#!/usr/bin/env bash

echo " Game : Guessing the number of files "
read response

function gettoknow
{
	local num=$(ls -a | wc -l)
	echo $num

}

numfiles=$(gettoknow)

while [[ $response -ne $numfiles ]]
do
	if  ! [[ $response =~ ^[\-0-9]+$ ]] && (( A < 0));
	then
		echo " Positive valid Integers only"
	elif  [[ $response -lt $numfiles ]]
	then
		echo "Low"

	else
	        echo "High"
	fi
	echo "Guess again"
	read response
done

echo " Correct answer has been entered -- Congratulations "
echo " Game over"
