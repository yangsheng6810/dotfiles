#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

PS1='\[\033[0;32m\][\u@\h \W]\[\033[0;40m\]\$ '
#/home/yangsheng/bin/startup.sh
# export XMODIFIERS="@im=fcitx"
# export QT_IM_MODULE=fcitx
# export GTK_IM_MODULE=fcitx
export ALTERNATE_EDITOR=emacs EDITOR=emacsclient VISUAL=emacsclient
if [ $DISPLAY ];then
    source "$HOME/.xprofile"
fi


export PATH="$HOME/.cargo/bin:$PATH"
