#!/usr/bin/env bash

set -e

if which rcup >/dev/null; then
    if [ ! -f ~/.rcrc ]; then
        ln -s ~/.dotfiles/rcrc ~/.rcrc
    fi
    rcup -v
fi

