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

# Load local bash/zsh compatible settings
[ -f "$HOME/.local/etc/init.sh" ] && source "$HOME/.local/etc/init.sh"


if [ -z ${HOSTNAME+x} ]; then
    HOSTNAME=`hostname`;
fi
if [ "${HOSTNAME}" = "carbon" ] || [ "${HOSTNAME}" = "myhost" ]; then
    YANG_HAS_BATTERY=1;
fi

# Initialize oh-my-zsh
antigen use oh-my-zsh

# default bundles
# visit https://github.com/unixorn/awesome-zsh-plugins
antigen bundle git
antigen bundle github
antigen bundle gitignore
antigen bundle git-fast
# antigen bundle heroku
antigen bundle pip
antigen bundle virtualenv
antigen bundle golang
# antigen bundle svn-fast-info

# suggest package to install
antigen bundle command-not-find

# Plugin highlights file content based on the filename extension.
antigen bundle colorize


antigen bundle python

antigen bundle z

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# implementation of fish history substring search
antigen bundle history-substring-search

# allow SSH tab completion for mosh hostnames
antigen bundle mosh
antigen bundle $HOME/.oh-my-zsh/custom/ completion.zsh --no-local-clone

# alias for rsync
antigen bundle rsync

# antigen bundle tmux
# 
antigen bundle urltools

antigen bundle gnu-utils
antigen bundle archlinux
antigen bundle systemd
antigen bundle battery

# thefuck
antigen bundle thefuck

antigen bundle colored-man-pages

# uncomment the line below to enable theme
# antigen theme fishy
antigen bundle $HOME/.oh-my-zsh/custom/themes/ yang.zsh-theme --no-local-clone
# antigen theme bhilburn/powerlevel9k powerlevel9k

# check login shell
if [[ -o login ]]; then
	[ -f "$HOME/.local/etc/login.sh" ] && source "$HOME/.local/etc/login.sh"
	[ -f "$HOME/.local/etc/login.zsh" ] && source "$HOME/.local/etc/login.zsh"
fi

# syntax color definition
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

typeset -A ZSH_HIGHLIGHT_STYLES

# ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
# ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'

# ZSH_HIGHLIGHT_STYLES[default]=none
# ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=009
# ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
# ZSH_HIGHLIGHT_STYLES[alias]=fg=cyan,bold
# ZSH_HIGHLIGHT_STYLES[builtin]=fg=cyan,bold
# ZSH_HIGHLIGHT_STYLES[function]=fg=cyan,bold
# ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
# ZSH_HIGHLIGHT_STYLES[precommand]=fg=white,underline
# ZSH_HIGHLIGHT_STYLES[commandseparator]=none
# ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
# ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
# ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
# ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
# ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
# ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
# ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
# ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=063
# ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063
# ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=009
# ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
# ZSH_HIGHLIGHT_STYLES[assign]=none

# load local config
[ -f "$HOME/.local/etc/config.zsh" ] && source "$HOME/.local/etc/config.zsh" 
[ -f "$HOME/.local/etc/local.zsh" ] && source "$HOME/.local/etc/local.zsh"

# enable syntax highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# Customize to your needs...
# for android-sdk
# export PATH="$PATH:/opt/android-sdk/tools:/opt/android-sdk/platform-tools:$HOME/bin"

export GREP_COLOR="1;33"
export LESS="-R"
eval $(dircolors -b)
function man() {
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
# alias pacman='pacman --color=auto'
TEXMFMAIN="/usr/share/texmf-dist/"
# alias nvidia-settings='optirun nvidia-settings -c :8'
alias fbv='fbv -f'
alias gmplayer='gnome-mplayer'
alias cpufreq='sudo cpupower -c all frequency-info'
alias cpuset_performance='sudo cpupower -c all frequency-set -r -g performance'
alias cpuset_ondemand='sudo cpupower -c all frequency-set -r -g ondemand'
alias screenshot='gnome-screenshot -i'
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
# xgamma -rgamma 0.83 -ggamma 0.83 -bgamma 0.83 2> /dev/null
# export PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"
# export PATH="$PATH:$(ruby -rubygems -e 'puts Gem.user_dir')/bin"


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
alias grep="grep --color=auto"
unset GREP_OPTIONS
export WINEARCH=win32


alias 'git_latexdiff'="git latexdiff --bibtex --ignore-latex-errors --latexdiff-flatten"
alias ee="emacsclient -c "
alias npm='npm -g'
alias npm8gb='npm --max-old-space-size=8192 --prefix ~/.node_modules'

PATH="$PATH:$HOME/bin:$HOME/.node_modules/bin:$HOME/.go/bin"
export npm_config_prefix="$HOME/.node_modules"
alias firefox-nightly="firefox-nightly -p nightly -no-remote"

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
alias suroot="sudo -E -s"
export GOPATH="$HOME/.go"
export MAKEFLAGS="${MAKEFLAGS} -j8"
export GRB_LICENSE_FILE="$XDG_CONFIG_HOME/gurobi.lic"
