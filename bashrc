# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

##
# Section: systemd
#
# Uncomment the following line if you don't like systemctl's auto-paging feature:
#
export SYSTEMD_PAGER=

##
# Section: Command-line
#
# User specific aliases and functions
#

# Get git-branch for current directory
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Select specific layout to show current git branch
#export PS1="[\u@\h \[\033[32m\]\W]\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="\u@\h \[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

##
# Section: BASH-completion
#
# Source completion for GitHub commandline client
#
[[ `which gh` ]] && eval "$(gh completion -s bash)"

