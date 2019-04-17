#
# User configuration sourced by interactive shells
#

# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

# local settings
## disable Ctrl-D to close the terminal
set -o ignoreeof

## pyenv
export PATH="/home/yatch/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# Turn off all beeps
unsetopt beep
# # Turn off autocomplete beeps
# # unsetopt LIST_BEEP

# alias
alias rm="rm -i"
export CNG_PATH='/c/Users/ytanaka/Work/contiki-ng'
alias contiker="docker run                                                           \
               --privileged                                                          \
               --mount type=bind,source=$CNG_PATH,destination=/home/user/contiki-ng  \
               -ti contiker/contiki-ng"

## history
HISTSIZE=10000000
SAVEHIST=10000000
