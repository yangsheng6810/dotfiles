alias addon-sdk="cd /opt/addon-sdk && source bin/activate; cd -"
alias tllocalmgr="tllocalmgr --mirror='http://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/tlnet'"
export SPARKHOME=/home/yangsheng/Documents/PhD/724/CMSC724-Spring16/Assignment3/spark-1.6.0-bin-cdh4
export JPM_FIREFOX_BINARY=/usr/bin/firefox

# for gurobi
export GUROBI_HOME="$HOME/.gurobi/gurobi651/linux64"
export PATH="${PATH}:${GUROBI_HOME}/bin"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib"
export GRB_LICENSE_FILE="$GUROBI_HOME/gurobi.lic"

source /usr/share/bash-completion/completions/tlp

export PYTHONSTARTUP="$(python -m jedi repl)"

BAT_CHARGE="$HOME/bin/battery.py"
function battery_charge {
	echo `$BAT_CHARGE` 2>/dev/null
}
RPROMPT='$(battery_charge)'
DEFAULT_USER="yangsheng"


export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.node_modules/bin"
export npm_config_prefix=~/.node_modules

MACHINE_SPECIFIC="$HOME/.machine_specific/config.sh"
[[ -f $MACHINE_SPECIFIC ]] && . $MACHINE_SPECIFIC
