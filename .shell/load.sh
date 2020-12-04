# Load all environment variables
# First it tries to load default env.zsh then the custom .env..*.zsh
# This is useful if you want to have custom (not versioned) environment configs,
# such as .env.work.zsh or .env.private.zsh.
#load "$ZSH_CUSTOM/.env.zsh" "$ZSH_CUSTOM/.env..*.zsh"
# ^ adds 0.01s for some reason
source "$HOME/.shell/env.sh"
source "$HOME/.shell/functions.sh"
source "$HOME/.shell/alias.sh"

MACHINE_SPECIFIC="${HOME}/.shell/host_specific/${HOSTNAME}.sh"
[[ -f $MACHINE_SPECIFIC ]] && . $MACHINE_SPECIFIC

# source "$HOME/.shell/fzf.sh"

if type starship > /dev/null; then
    if [ -n "${ZSH_VERSION+x}" ]; then
        eval "$(starship init zsh)"
    fi
    if [ -n "${BASH_VERSION+x}" ]; then
        eval "$(starship init bash)"
    fi
fi

