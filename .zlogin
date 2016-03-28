# This file is executed on zsh login.

# Apple Macbook Pro Keyboard
setxkbmap -option apple:badmap

# Display 
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
