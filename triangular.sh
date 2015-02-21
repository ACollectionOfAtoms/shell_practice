#/bin/zsh
nums="1 2 3 4 5"
tabs="\t\t\t\t\t"
tabs2=5
for i in $nums;do
	printf $tabs"%*s\n" "$i" | tr ' ' "$i"
	tabs2=$tabs2-2
	tabs=${tabs:$tabs2}
done

