#!/bin/zsh
n=6
u=%
x=6
m=%

for ((i=1;i<n;++i));do
	#printf formats the string to be echoed,
	#by using % to specify formating, * signifys field width
	#is to be modifid by an integer, and \n is the new line char.
	#"$((n+i-1))" supplies the integer. and the next arguement
	#supplies the character, by substitution of % with the i!
	printf '%*s\n' "$((n+i-1))" "${u//\%/$i}"
	u+=' %'
done

for ((z=1;z<x;++z));do
	printf '%*s\n' "$((x+z-1))" "${m//\%/.}"
	m+=' %'
done
