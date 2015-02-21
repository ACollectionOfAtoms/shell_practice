#!/bin/zsh
numfiles=0
numdirs=0
numexs=0

for f in ~/*(D);do
	if [[ -d "$f" ]];then
		numdirs=$(($numdirs + 1))
	elif [[ -f "$f" ]];then
		numfiles=$(($numfiles +1))
	fi
done

for f in ~/*(D);do
	if [[ -x "$f" ]];then
		numexs=$(($numexs +1))
	fi
done

echo "In the home directory: There are $numfiles files, $numdirs directories, and $numexs executables"
echo "Below is a list of each directories name and size:"
for f in ~/*(D);do
	if [[ -d "$f" ]];then
		du -hs $f
	fi
done

