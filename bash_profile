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

##
# Section: DotNet
#
# The .NET SDK telemetry feature is enabled by default. To opt out of the
# telemetry feature, set the DOTNET_CLI_TELEMETRY_OPTOUT environment variable
# to 1 or true.
# See https://docs.microsoft.com/nl-nl/dotnet/core/tools/telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1

