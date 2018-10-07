# -*- mode: shell-script;-*-
export GREP_COLOR="1;33"
unset GREP_OPTIONS

export LESS="-R"

export XDG_CONFIG_HOME="$HOME/.config/"
export EDITOR="vim"
export ALTERNATE_EDITOR=""

PATH="$PATH:$HOME/bin"

if [ -z ${HOSTNAME+x} ]; then
    HOSTNAME=`hostname`;
fi