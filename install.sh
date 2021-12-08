#!/usr/bin/env bash

set -e

if ! which rcup >/dev/null; then
    # Install `rcm` on Debian
    if [ -f /etc/debian_version ]; then
        sudo apt update
        sudo apt install rcm
    fi
fi

if which rcup >/dev/null; then
    if [ ! -f ~/.rcrc ]; then
        ln -s ~/dotfiles/rcrc ~/.rcrc
    fi
    if [ -f /.dockerenv ]; then
        rcup -f -v
    else
        rcup -v
    fi
fi

