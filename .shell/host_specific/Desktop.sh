# for gurobi
export GUROBI_HOME="$HOME/Downloads/gurobi/gurobi911/linux64"
export PATH="${PATH}:${GUROBI_HOME}/bin:${HOME}/.gem/ruby/2.7.0/bin"
# export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib"
export LD_LIBRARY_PATH="${GUROBI_HOME}/lib"
export GRB_LICENSE_FILE="$XDG_CONFIG_HOME/gurobi.lic"
# for conda
# [ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

alias ls='exa'
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi
# alias emacs='~/git/emacs/src/emacs'

export WINEARCH=win32

if [ -n "${ZSH_VERSION+x}" ]; then
    unalias z
    eval "$(zoxide init zsh)"
fi

# if [ -e /home/yangsheng/.nix-profile/etc/profile.d/nix.sh ]; then . /home/yangsheng/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
