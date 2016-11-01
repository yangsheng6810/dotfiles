# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="yang"
# ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gitignore git-fast tmux history-substring-search)

fpath=($ZSH/custom_completion $fpath)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# for android-sdk
# export PATH="$PATH:/opt/android-sdk/tools:/opt/android-sdk/platform-tools:$HOME/bin"

export GREP_COLOR="1;33"
export LESS="-R"
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
alias pacman='pacman --color=auto'
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

MACHINE_SPECIFIC="$HOME/.machine_specific/config.sh"
[[ -f $MACHINE_SPECIFIC ]] && . $MACHINE_SPECIFIC

alias 'git_latexdiff'="git latexdiff --bibtex --ignore-latex-errors --latexdiff-flatten"
alias ee="emacsclient -c "
