# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# https://github.com/pypa/pipenv/issues/259
#export PIPENV_VENV_IN_PROJECT=1

[[ `which gh` ]] && eval "$(gh completion -s bash)"

