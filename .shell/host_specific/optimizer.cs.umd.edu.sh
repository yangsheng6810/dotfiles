alias suroot="sudo -E -s"
export PYTHONSTARTUP="$(python -m jedi repl)"
LC_ALL=""
export LANG="en_US.UTF-8"
LC_COLLATE="C"
# TERM="xterm-256color"
# added by Anaconda3 installer
# export PATH="/fs/optimizer/styang/anaconda3/bin:$PATH"

# for gurobi
export GUROBI_HOME="$HOME/gurobi/gurobi811/linux64"
export PATH="${PATH}:${GUROBI_HOME}/bin"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib"
export GRB_LICENSE_FILE="$XDG_CONFIG_HOME/gurobi.lic"
