#!/usr/bin/env sh

set -e

# Determine path of repository
REPOPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# Check if the command exists
[[ -x `which rcup` ]] && rcup -d "$REPOPATH" -x "README*.md LICENSE install.sh"
