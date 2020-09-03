#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#if [ $COLORTERM ]; then
#	echo "yes"
#	echo "$COLORTERM"
#	PS1="\[\033[0;32m\][\u@\h \W]\$ \[\e[0m\]"
#	echo "yes"
#else
#	echo "no"
#	echo "$COLORTERM"
#	PS1="\[\033[0;32m\][\u@\h \W]\[\033[0;40m\]\$ "
#fi
PS1="\[\e[1;32m\][\u@\h \W] \$ \[\e[0m\]"
#PS1='[\u@\h \W]\$ '
# alias fbterm="export DISPLAY=:0;LANG=zh_CN.UTF-8 fbterm -i fcitx-fbterm"
#alias fbterm="LANG=zh_CN.UTF-8 fbterm"
#alias emacs='emacsclient -t -a "" -c'
### chsdir start ###
#. $HOME/bin/chs_completion
#export CHSDIR="{'n':'l'}"
PATH="$PATH:$HOME/bin"
### chsdir finish. ###
export GREP_COLOR="1;33"
export LESS="-R"
export EDITOR="vim"
eval $(dircolors -b)
man() {
        env \
                LESS_TERMCAP_mb=$(printf "\e[1;31m") \
                LESS_TERMCAP_md=$(printf "\e[1;31m") \
                LESS_TERMCAP_me=$(printf "\e[0m") \
                LESS_TERMCAP_se=$(printf "\e[0m") \
                LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
                LESS_TERMCAP_ue=$(printf "\e[0m") \
                LESS_TERMCAP_us=$(printf "\e[1;32m") \
                        man "$@"
}
TEXMFMAIN="/usr/share/texmf-dist/"
# alias nvidia-settings='optirun nvidia-settings -c :8'
alias fbv='fbv -f'
# [ -n "$WINDOWID" ] && transset-df -i $WINDOWID >/dev/null

# list all completions if there are more than one
set show-all-if-ambiguous on
LANG="en_US.UTF-8"
if [ -z ${HOSTNAME+x} ]; then
    HOSTNAME="`hostname`"
fi
if [ "$HOSTNAME" = "optimizer.cs.umd.edu" ] ||
   [ "$HOSTNAME" = "osprey.cs.northwestern.edu" ] ;then
    if [ "$SHELL" == "/bin/bash" ] ;then
        export LC_ALL=""
        export LANG="en_US.UTF-8"
        export LC_COLLATE="C"
        exec env SHELL="$(which zsh)" ~/gentoo/startprefix
        # exec ~/gentoo/startprefix
    else
        exec zsh
    fi
fi

# append to history file, don't overwrite it
shopt -s histappend
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=10000000

# ignore certain commands from the history
HISTIGNORE="ls:ll:cd:pwd:bg:fg:history"

LOAD_FILE="${HOME}/.shell/load.sh"
[[ -f $LOAD_FILE ]] && . $LOAD_FILE
