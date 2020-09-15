# # start zsh profiling
# zmodload zsh/zprof

# POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

# Fix tramp hang, and early return if in tramp
[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return

# Initialize command prompt
export PS1="%n@%m:%~%# "

CASE_SENSITIVE="true"
ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.zshrc.d}
ZSH_THEME="yang"

source "$HOME/.shell/pre-fix.sh"
source "$HOME/.zgen/zgen.zsh"
source $ZSH_CUSTOM/bootstrap.sh
source "$HOME/.shell/load.sh"

if [ -f "$HOME/.dir_colors" ]; then
    eval $(dircolors -b $HOME/.dir_colors)
else
    eval $(dircolors -b);
fi

# autoload bashcompinit
# bashcompinit
export SUDO_EDITOR=vim
# compinit

# # end zsh profiling
# zprof
