# POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

# Fix tramp hang, and early return if in tramp
[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return

# Initialize command prompt
export PS1="%n@%m:%~%# "

CASE_SENSITIVE="true"

ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.zshrc.d}
source $ZSH_CUSTOM/bootstrap.zsh

if [ -f "$HOME/.dir_colors" ]; then
    eval $(dircolors -b $HOME/.dir_colors)
else
    eval $(dircolors -b);
fi

autoload bashcompinit
bashcompinit
export SUDO_EDITOR=vim

