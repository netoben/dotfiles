#!/usr/bin/env bash

set -e

ask() {
  while true; do
    if [ "${2:-}" = "Y" ]; then
      prompt="Y/n"
      default=Y
    elif [ "${2:-}" = "N" ]; then
      prompt="y/N"
      default=N
    else
      prompt="y/n"
      default=
    fi
    read -p "$1 [$prompt] " REPLY </dev/tty
    if [ -z "$REPLY" ]; then
      REPLY=$default
    fi
    case "$REPLY" in
      Y*|y*) return 0 ;;
      N*|n*) return 1 ;;
    esac
  done
}

dir=`pwd`

echo "Don't forget to manually cp mbpfan.conf to /etc/mbpfan.conf!"

if ask "Install symlink for .zshrc?" Y; then
  ln -sf ${dir}/.zshrc ${HOME}/.zshrc
  ln -sf ${dir}/.aliases ${HOME}/.aliases
fi

if ask "Install symlink for .config/nvim?" Y; then
  ln -sfn ${dir}/.config/nvim ${HOME}/.config/nvim
fi

if ask "Install symlink for .Xresources?" Y; then
  ln -sf ${dir}/.Xresources ${HOME}/.Xresources
fi

if ask "Install symlink for .xinitrc?" Y; then
  ln -sf ${dir}/.xinitrc ${HOME}/.xinitrc
fi

if ask "Install symlink for .config/i3/i3blocks.conf?" Y; then
  ln -sf ${dir}/.config/i3/i3blocks.conf ${HOME}/.config/i3/i3blocks.conf
fi

if ask "Install symlink for .config/i3/config?" Y; then
  ln -sfn ${dir}/.config/i3/config ${HOME}/.config/i3/config
fi

if ask "Install symlink for .local/share/fonts?" Y; then
  ln -sf ${dir}/.local/share/fonts ${HOME}/.local/share/fonts
fi

if ask "Install symlink for .scripts?" Y; then
  ln -sfn ${dir}/.scripts ${HOME}/.scripts
fi

if ask "Install symlink for .zlogin?" Y; then
  ln -sf ${dir}/.zlogin ${HOME}/.zlogin
fi
