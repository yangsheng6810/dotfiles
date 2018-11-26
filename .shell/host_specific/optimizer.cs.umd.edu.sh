alias suroot="sudo -E -s"
export PYTHONSTARTUP="$(python -m jedi repl)"
LC_ALL=""
LANG="en_US.UTF-8"
LC_COLLATE="C"
TERM="xterm-256color"
# added by Anaconda3 installer
export PATH="/fs/optimizer/styang/anaconda3/bin:$PATH"

# for gurobi
export GRB_LICENSE_FILE="$XDG_CONFIG_HOME/gurobi.lic"
PATH="${PATH}:${GUROBI_HOME}/bin"
