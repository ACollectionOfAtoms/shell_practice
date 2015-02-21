#!/bin/zsh

ints='^[0-9]+$'
echo "At this time, it is advised that you enter 3 numbers; space-delimited: \c"
read num1 num2 num3
nums=($num1 $num2 $num3)
if [[ "$num1" = "" ]] || ! [[ "$num1" =~ $ints ]];then
	echo "ERROR: You have failed your country. You must enter 3 integers for comparison purposes." >&2; exit 1
fi

if [[ "$num2" = "" ]] || ! [[ "$num2" =~ $ints ]];then
	echo "ERROR: You have failed your country. You must enter 3 integers for comparison purposes." >&2; exit 1
fi

if [[ "$num3" = "" ]] || ! [[ "$num3" =~ $ints ]];then
	echo "ERROR: You have failed your country. You must enter 3 integers for comparison purposes." >&2; exit 1
fi

max=0

for i in $nums; do
	if [[ $i > $max || $i = $max ]];then
		max=$i
	fi
done

echo "The largest number in the set is $max. Incredible work!"
