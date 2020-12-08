# This file contains fixes that need to be done before zgen is loaded

# Prepare FZF_BASE for fzf to use on optimizer
if [ "$(hostname)" = "optimizer.cs.umd.edu" ] || [ "$(hostname)" = "osprey.cs.northwestern.edu" ]; then
    export FZF_BASE="${HOME}/bin/.fzf"
    # Need this for FZF oh-my-zsh module to work
    export PATH="${HOME}/bin:$PATH"
fi
