#!/bin/sh

#TODO
#add a removal mechanism
#add some arguments validation

gitRepos=~/scripts/gitbaby/gitRepos

if [ "$1" = "ls" ]
then
	cat $gitRepos | cut -d ':' -f 2
elif [ "$1" = "cd" ]
then
	cd "$(cat $gitRepos | grep $2 | cut -d ':' -f 1)"
elif [ "$1" = "add" ]
then
	dir=$(realpath $2)
	name=$(echo $dir | sed "s|[0-9A-Za-z/\-\_.\!@#$%^&*()+=]*/||g")
	echo "$dir:$name" >> $gitRepos
elif [ "$1" = "init" ]
then
	gitbaby add . $2
	git init
fi
