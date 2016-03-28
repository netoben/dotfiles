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

if ask "Install symlink for ~/.zshrc?" Y; then
    ln -sfn ${dir}/.zshrc ${HOME}/.zshrc
    ln -sfn ${dir}/.alias ${HOME}/.alias
fi

if ask "Install symlink for ~/.config/nvim?" Y; then
    ln -sfn ${dir}/.config/nvim ${HOME}/.config/nvim
fi

if ask "Install symlink for ~/.Xresources?" Y; then
    ln -sfn ${dir}/.Xresources ${HOME}/.Xresources
fi

if ask "Install symlink for ~/.xinitrc?" Y; then
    ln -sfn ${dir}/.xinitrc ${HOME}/.xinitrc
fi

if ask "Install symlink for ~/.config/i3/i3blocks.conf?" Y; then
    ln -sfn ${dir}/.config/i3/i3blocks.conf ${HOME}/.config/i3/i3blocks.conf
fi

if ask "Install symlink for ~/.config/i3/config?" Y; then
    ln -sfn ${dir}/.config/i3/config ${HOME}/.config/i3/config
fi

if ask "Install symlink for ~/.local/share/fonts?" Y; then
    ln -sfn ${dir}/.local/share/fonts ${HOME}/.local/share/fonts
fi

if ask "Install symlink for ~/.scripts?" Y; then
    ln -sfn ${dir}/.scripts ${HOME}/.scripts
fi

if ask "Install symlink for ~/.zlogin?" Y; then
    ln -sfn ${dir}/.zlogin ${HOME}/.zlogin
fi

if ask "Install symlink for /etc/mbpfan.conf?" Y; then
    sudo ln -sfn ${dir}/mbpfan.conf /etc/mbpfan.conf
fi

if ask "Install symlink for ~/.ncmpcpp?" Y; then
    ln -sfn ${dir}/.ncmpcpp ${HOME}/.ncmpcpp
fi

if ask "Install symlink for ~/.config/mpd/mpd.conf?" Y; then
    ln -sfn ${dir}/.config/mpd/mpd.conf ${HOME}/.config/mpd/mpd.conf
fi
