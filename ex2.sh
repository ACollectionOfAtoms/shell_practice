#!/bin/zsh

#1.) Problem: A folder contains files with various extensions, and
# they are required to be in separate, corresponding folders.
# (e.g all .doc files are in a one folder, all .jpgs in another etc.)
# Solution: 

for f in *.*; do [[ -f "$f" ]] || continue; ext="${f##*.}"; mkdir ../"$ext"; mv *."$ext" ../"$ext"; done

#2.) Problem: I would like to return all function and class names within a python source file? Yes, I would. 
# Solution: (Note: This needs to be modified comment out single line tripple quotes)

echo "Type the python file you wish to parse: ";read f; cat $f | sed '/"""/,/"""/d' | sed "/'''/,/'''/d" | grep -v '^ *#.*|^\t*#.*' | grep -o '^[ ,\t]*class.[^#]*\|^[ ,\t]*def.[^#]*'

#3.) Problem: I'd like to stay in the terminal but I also want to know if the world is ending. 
# Solution: (Returns the latest RSS feed from the New York Times)

wget http://rss.nytimes.com/services/xml/rss/nyt/World.xml -qO- | xmllint --xpath '//channel/item[position()<2]/*[self::title]/node()' - | read head; tput setaf 1; echo "Latest New York Times RSS feed:\n" ${head:-1}

#4.) Problem: In the current directory how may I find the largest folders?
# Solution: I invoke...

du -m -d 1 | sort -rn

#5.) Problem: Which was the last modified file/folder?!
# Solution: 
ls -lrt | tail -1
