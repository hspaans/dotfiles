# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
export SYSTEMD_PAGER=

# User specific aliases and functions
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#export PS1="[\u@\h \[\033[32m\]\W]\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="\u@\h \[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

[[ `which gh` ]] && eval "$(gh completion -s bash)"

