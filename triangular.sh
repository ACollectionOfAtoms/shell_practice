#!/bin/zsh

n=6
u=%
for ((i=1;i<n;++i));do
	printf '%*s\n' "$((n+i-1))" "${u//\%/$i}"
	u+=' %'
done

