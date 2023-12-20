#!/usr/bin/env bash

cd $(dirname $(readlink -f "$0"))

for i in `ls -A | grep -Ev '^(.git|.github|LICENSE|README.md|install.sh)$'`
do
    [[ ! -e "${HOME}/${i}" ]] && ln -s $(realpath "${i}") "${HOME}/"
done

