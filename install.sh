#!/usr/bin/sh

set -e


if [ -f ~/.rcrc ]
then
    rm ~/.rcrc
fi

if [ -f ~/dotfiles/rcrc ]
then
    ln -s ~/dotfiles/rcrc ~/.rcrc
    rcup -d ~/dotfiles
fi

if [ -f ~/.dotfiles/rcrc ]
then
    ln -s ~/.dotfiles/rcrc ~/.rcrc
    rcup -d ~/.dotfiles
fi
