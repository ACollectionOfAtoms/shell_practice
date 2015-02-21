#!/bin/zsh
echo "Supply a number: \c"
read num
counter=$num
ints='^[0-9]+$'
if [[ $num > 1 ]];then
	while ! [ $counter = 0 ];do
		counter=`expr $counter - 1`
		num=`expr $num \* $counter`
		if [[ $counter = 1 ]];then
			echo "The factorial of your number is $num!"; exit 1
		fi
	done
elif [[ $num = 1 ]] || [[ $num = 0 ]];then
	echo "The factorial of your number is 1!"; exit 1
elif [[ $num = "" ]] || ! [[ $num =~ $ints ]];then
	echo "Error: You must supply a number! EXITING!" >&2; exit 1
fi

