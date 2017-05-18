#!/usr/local/bin/zsh


# Assuming all the gifs are in a certain folder

if [ "$#" -eq 0 ]; then
	echo "Need a folder."
	exit
fi

if [ -d $1 ]; then
	for i in $1/*.gif; do
		gifsicle -b $i --resize-width 100 
	done
else
	echo "Not a folder."
fi
