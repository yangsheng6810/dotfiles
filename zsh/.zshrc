# POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

# Initialize command prompt
export PS1="%n@%m:%~%# "

CASE_SENSITIVE="true"

ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.zshrc.d}
source $ZSH_CUSTOM/bootstrap.zsh

eval $(dircolors -b)

autoload bashcompinit
bashcompinit
export SUDO_EDITOR=vim

