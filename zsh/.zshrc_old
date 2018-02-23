# Antigen: https://github.com/zsh-users/antigen
ANTIGEN="$HOME/.local/bin/antigen.zsh"
# POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

# Install antigen.zsh if not exist
if [ ! -f "$ANTIGEN" ]; then
	echo "Installing antigen ..."
	[ ! -d "$HOME/.local" ] && mkdir -p "$HOME/.local" 2> /dev/null
	[ ! -d "$HOME/.local/bin" ] && mkdir -p "$HOME/.local/bin" 2> /dev/null
	[ ! -f "$HOME/.z" ] && touch "$HOME/.z"
	URL="http://git.io/antigen"
	TMPFILE="/tmp/antigen.zsh"
	if [ -x "$(which curl)" ]; then
		curl -L "$URL" -o "$TMPFILE"
	elif [ -x "$(which wget)" ]; then
		wget "$URL" -O "$TMPFILE"
	else
		echo "ERROR: please install curl or wget before installation !!"
		exit
	fi
	if [ ! $? -eq 0 ]; then
		echo ""
		echo "ERROR: downloading antigen.zsh ($URL) failed !!"
		exit
	fi;
	echo "move $TMPFILE to $ANTIGEN"
	mv "$TMPFILE" "$ANTIGEN"
fi

# Initialize command prompt
export PS1="%n@%m:%~%# "

CASE_SENSITIVE="true"

# Initialize antigen
source "$ANTIGEN"

if [ -z ${HOSTNAME+x} ]; then
    HOSTNAME=`hostname`;
fi
if [ "${HOSTNAME}" = "carbon" ] || [ "${HOSTNAME}" = "myhost" ]; then
    YANG_HAS_BATTERY=1;
fi
if [ "${HOSTNAME}" = "optimizer.cs.umd.edu" ]; then
    LC_ALL=""
    LANG="en_US.UTF-8"
    LC_COLLATE="C"
    TERM="xterm-256color"
fi

# Initialize oh-my-zsh
antigen use oh-my-zsh

# default bundles
# visit https://github.com/unixorn/awesome-zsh-plugins
my_zsh_plugins=(git github gitignore git-fast
                python pip virtualenv
                golang
                # heroku # svn-fast-info
                z command-not-find thefuck
                history-substring-search # implementation of fish history substring search
                colorize # Plugin highlights file content based on the filename extension.
                zsh-users/zsh-autosuggestions
                zsh-users/zsh-completions
                mosh
                rsync cp gnu-utils extract
                urltools
                archlinux systemd
                battery
                colored-man-pages
                )

for plugin in ${my_zsh_plugins};do
    antigen bundle ${plugin}
done


# custom completion settings
antigen bundle $HOME/.oh-my-zsh/custom/ completion.zsh --no-local-clone

# uncomment the line below to enable theme
# antigen theme fishy
antigen bundle $HOME/.oh-my-zsh/custom/themes/ yang.zsh-theme --no-local-clone
# antigen theme bhilburn/powerlevel9k powerlevel9k

# syntax color definition
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

typeset -A ZSH_HIGHLIGHT_STYLES

# enable syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

export GREP_COLOR="1;33"
alias grep="grep --color=auto"
unset GREP_OPTIONS

export LESS="-R"
eval $(dircolors -b)
alias gmplayer='gnome-mplayer'
alias bc='bc -l'
alias mkdir='mkdir -pv'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'

# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
## this one saved by butt so many times ##
alias wget='wget -c'

if [ "x$DISPLAY" = "x:0" ]; then
	xhost + >/dev/null
fi

export XDG_CONFIG_HOME="$HOME/.config/"
export EDITOR="vim"
export ALTERNATE_EDITOR=""

autoload bashcompinit
bashcompinit
export SUDO_EDITOR=vim

# to fix emacs tramp hang
if [[ $TERM == "dumb" ]]; then	# in emacs
    # for tramp to not hang, need the following. cf:
    # http://www.emacswiki.org/emacs/TrampMode
    unsetopt zle
    unsetopt prompt_cr
    unsetopt prompt_subst
    unfunction precmd
    unfunction preexec
    PS1='$ '
else
    # your prompt stuff
fi

bindkey '^[p' history-substring-search-up
bindkey '^[n' history-substring-search-down

alias ee="emacsclient -c "

PATH="$PATH:$HOME/bin"

function countdown(){
   date1=$((`date +%s` + $1));
   while [ "$date1" -ge `date +%s` ]; do
     echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
     sleep 0.1
   done
}
function stopwatch(){
  date1=`date +%s`;
   while true; do
    echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r";
    sleep 0.1
   done
}
export PYTHONSTARTUP="$(python -m jedi repl)"
MACHINE_SPECIFIC="$HOME/.machine_specific/$HOST/profile.sh"
[[ -f $MACHINE_SPECIFIC ]] && . $MACHINE_SPECIFIC
