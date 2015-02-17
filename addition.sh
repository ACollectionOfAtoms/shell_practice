#/bin/zsh
echo "Go ahead, enter a number: \c"
read num1
echo "And another: \c"
read num2
declare -i sum
sum=$num1+$num2
echo "The sum of your numbers is: $sum"
