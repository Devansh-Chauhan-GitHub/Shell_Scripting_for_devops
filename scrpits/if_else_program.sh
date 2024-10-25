#!/bin/bash
read -p "Enter name : " name
if [[ $name == "ABC" ]];
then 
	echo "NAME IS ABC"
else
	echo "NAME IS NOT ABC"
fi
