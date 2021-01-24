# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
export PATH=$PATH:$HOME/.local/bin:$HOME/bin

##
# Sectio: Golang
#
# See https://github.com/golang/go/wiki/SettingGOPATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

##
# Section: Python
#
# Uncomment if the virtual environment needs to in $PROJECT_ROOT/.venv
# See https://github.com/pypa/pipenv/issues/259
#export PIPENV_VENV_IN_PROJECT=1

