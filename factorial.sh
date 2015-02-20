#bin/zsh
echo "Supply a number: \c"
read num
counter=$num
ints='^[0-9]+$'

#if [[ "$num" = "" ]] || ! [[ "$num" =~ $ints ]];then
#	echo "Error: You failed to supply a number. Good day!" >&2; exit 1
#elif [[ $num==1 ]] || [[ $num==0 ]];then
#	echo "The factorial of your number is 1!"; exit 1
#fi

if [[ "$num" > "1" ]];then
	while ! [ "$counter" = 0 ];do
		counter=`expr $counter - 1`
		echo $num
		num=`expr $num \* $counter`
	done
	echo "The factorial of your num num number is $num!"; exit 1
fi
