# This file is executed on zsh login.
setxkbmap -option apple:badmap
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
