#!/bin/bash
if [[ $1 -ge $2 ]]; then 
	if [[ $1 -ge $3 ]]; then 
		echo "$1 is greatest"
	else
		echo "$3 is greatest"
	fi
elif [[ $2 -ge $3 ]]; then 
	echo "$2 is greatest"
else
	echo "$3 is greatest"
fi
