#!/usr/bin/env bash

set -e

if which rcup >/dev/null; then
    if [ -f /.dockerenv ]; then
        if [ ! -f ~/.rcrc ]; then
            cp ~/dotfiles/rcrc ~/.rcrc
        fi
        rcup -C -v
    else
        if [ ! -f ~/.rcrc ]; then
            ln -s ~/dotfiles/rcrc ~/.rcrc
        fi
        rcup -v
    fi
fi

