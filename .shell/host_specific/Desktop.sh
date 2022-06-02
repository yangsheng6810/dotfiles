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

function old_guix_config(){
    # export GUIX_LOCPATH="$HOME/.guix-profile/lib/locale"
    export GUIX_PROFILE="$HOME/.guix-profile"
    # export PATH="${PATH}:${HOME}/.config/guix/current/bin"
    # export GUIX_PROFILE="$HOME/.config/guix/current"
    source "$GUIX_PROFILE/etc/profile"
}

function new_guix_config(){
    # Arrange so that ~/.config/guix/current comes first.
     for profile in "$HOME/.guix-profile" "$HOME/.config/guix/current"
     do
       if [ -f "$profile/etc/profile" ]
       then
         # Load the user profile's settings.
         GUIX_PROFILE="$profile"
         . "$profile/etc/profile"
       else
         # At least define this one so that basic things just work
         # when the user installs their first package.
         export PATH="$profile/bin:$PATH"
       fi
     done
}

function setup_guix() {
    export GUIX_LOCPATH="$HOME/.guix-profile/lib/locale"
    # old_guix_config
    new_guix_config

    export PATH="${PATH}:${GUIX_PROFILE}/bin"
    hash guix

    # use only 12 out of 16 cores
    export GUIX_BUILD_OPTIONS="-c 12"
    unset XDG_DATA_DIRS
}
# USE_GUIX=1
if [ -n "${USE_GUIX+x}" ]; then
    setup_guix
fi

# include custom packages
export GUIX_PACKAGE_PATH=~/git/guix_package

# remove guix from path
# export PATH=${PATH//:\/home\/yangsheng\/.guix-profile\/bin/}

if command -v atuin &> /dev/null; then
    if [ -n "${ZSH_VERSION+x}" ]; then
        eval "$(atuin init zsh)"
    fi
    if [ -n "${BASH_VERSION+x}" ]; then
        eval "$(atuin init bash)"
    fi
fi
