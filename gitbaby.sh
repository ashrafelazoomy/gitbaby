#!/bin/sh

#TODO
#add a removal mechanism
#add some arguments validation

gitRepos=~/scripts/gitbaby/gitRepos

if [ "$1" = "ls" ]
then
	while read i; do
		echo $i | cut -d ':' -f 2
	done <$gitRepos
elif [ "$1" = "cd" ]
then
	cd "$(cat $gitRepos | grep $2 | cut -d ':' -f 1)"
elif [ "$1" = "add" ]
then
	dir=$(realpath $2)
	echo "$dir:$3" >> $gitRepos
elif [ "$1" = "init" ]
then
	gitbaby add . $2
	git init
fi
