#!/usr/bin/env bash

if [ ${CODESPACES} ]; then
    [[ ! -e ~/git ]] && ln -s /workspaces/.codespaces/.persistedshare/dotfiles/git ~/git
fi
