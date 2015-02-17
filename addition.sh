#bin/zsh
ints='^[0-9]+$'
echo "Go ahead, enter a number: \c"
read num1

if  [[ "$num1" = "" ]] || ! [[ "$num1" =~ $ints ]];then
	echo "Error: This Program is for ADDITION, not whatever you're trying to use it for, man." >&2; exit 1
fi

echo "And another: \c"
read num2

if  [[ "$num2" = "" ]] || ! [[ "$num2" =~ $ints ]];then
	echo "Error: This Program is for ADDITION, not whatever you're trying to use it for, man." >&2; exit 1
fi

declare -i sum
sum=$num1+$num2
echo "The sum of your numbers is: $sum"
