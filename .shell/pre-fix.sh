# This file contains fixes that need to be done before zgen is loaded

# Prepare FZF_BASE for fzf to use on optimizer
if [ "$(hostname)" = "optimizer.cs.umd.edu.sh" ]; then
    export PATH="${HOME}/bin/binary:$PATH"
    export FZF_BASE="${HOME}/bin/.fzf"
fi
