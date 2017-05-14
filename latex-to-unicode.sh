#!/bin/bash

cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"
text=$(./gui.py)
if test -z "$text"; then
	exit
fi
echo -n "$text" | xclip
echo -n "$text" | xclip -selection clipboard
xdotool key shift+Insert
