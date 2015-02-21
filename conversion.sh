#!/bin/zsh

echo "Enter the temperature to be converted in the form of # F, or # C : \c"
read num mode

if [[ $mode = "C" ]];then
	conv=$(($num * 9/5 + 32))
	echo "$num°$mode is equal to $conv°F"; exit 1
elif
	[[ $mode = "F" ]];then
	conv=$((($num-32)*5/9))
	echo "$num°$mode is equal to $conv°C"; exit 1
else
	echo "Error: you failed to satisfy the given criteria, please attempt to utilize this program another time, perhaps when you are a more capable human-being."; >&2; exit 1
fi
