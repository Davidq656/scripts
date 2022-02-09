#!/bin/zsh
HOST="www.accurate-3d.com"


ping -c 1 $HOST
if ["$?" -ne "0"]
	echo "$HOST unreachable"
	exit 1
fi
exit 0
