#bin/zsh

echo "Supply a number: \c"
read num
counter=$num

if [[ $num="1" ]];then
	echo "The factorial of your number is 1!"; exit 1
elif
	[[ $num="1" ]];then
	echo "The factorial of your number is 1!"; exit 1
else
	while [ $counter > "0" ];do
		counter=`expr $counter - 1`
		num=`expr $num \* $counter`
	done
fi

if [[ $counter=0 ]];then
	echo "The factorial of your num num number is $num!"; exit 1
fi

