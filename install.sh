#!/usr/bin/env bash

set -e

if which rcup >/dev/null; then
    if [ ! -f ~/.rcrc ]; then
        ln -s ~/dotfiles/rcrc ~/.rcrc
    fi
    if [ -f /.dockerenv ]; then
        rcup -C -v
    else
        rcup -v
    fi
fi

