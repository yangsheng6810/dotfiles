# -*- mode: shell-script;-*-
export GREP_COLOR="1;33"
unset GREP_OPTIONS

export LESS="-R"

export XDG_CONFIG_HOME="$HOME/.config/"
export EDITOR="vim"
export VISUAL="vim"
export SYSTEMD_EDITOR="vim"
export ALTERNATE_EDITOR=""

export PATH="$HOME/bin/.evm/bin:$HOME/bin:$HOME/.local/bin:$PATH:$HOME/.go/bin"

export GOPATH="$HOME/.go"

if [ -z ${HOSTNAME+x} ]; then
    HOSTNAME=`hostname`;
fi

# pyenv
if [ -x "$(command -v pyenv)" ]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"
fi
export PYTHONSTARTUP="${HOME}/.pythonrc.py"
# for startdict
export XDG_DATA_HOME="${HOME}/.local/share"
