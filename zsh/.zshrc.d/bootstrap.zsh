# Load zsh custom sources
source "$ZSH_CUSTOM/functions.zsh"

# Load all environment variables
# First it tries to load default env.zsh then the custom .env..*.zsh
# This is useful if you want to have custom (not versioned) environment configs,
# such as .env.work.zsh or .env.private.zsh.
#load "$ZSH_CUSTOM/.env.zsh" "$ZSH_CUSTOM/.env..*.zsh"
# ^ adds 0.01s for some reason
source "$ZSH_CUSTOM/.env"

MACHINE_SPECIFIC="${ZSH_CUSTOM}/machines/${HOSTNAME}.zsh"
[[ -f $MACHINE_SPECIFIC ]] && . $MACHINE_SPECIFIC

export ANTIGEN="$HOME/.local/bin/antigen.zsh"

# Load antigen and bootstrap the configuration
# Install antigen
source "$ZSH_CUSTOM/install.sh"
# Initialize antigen
source "$ANTIGEN"
source "$ZSH_CUSTOM/.antigenrc"

# Finally set up aliases and key bindings
source "$ZSH_CUSTOM/bindings.zsh"
source "$ZSH_CUSTOM/aliases.zsh"
