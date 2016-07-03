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
alias grep='grep --color=auto'
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
alias pacman='pacman-color'
TEXMFMAIN="/usr/share/texmf-dist/"
alias nvidia-settings='optirun nvidia-settings -c :8'
#[ -n "$WINDOWID" ] && transset-df -i $WINDOWID >/dev/null
alias fbv='fbv -f'
[ -n "$WINDOWID" ] && transset-df -i $WINDOWID >/dev/null
alias gmplayer='gnome-mplayer'
