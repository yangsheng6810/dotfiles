alias addon-sdk="cd /opt/addon-sdk && source bin/activate; cd -"
alias tllocalmgr="tllocalmgr --mirror='http://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/tlnet'"
export SPARKHOME=/home/yangsheng/Documents/PhD/724/CMSC724-Spring16/Assignment3/spark-1.6.0-bin-cdh4
export JPM_FIREFOX_BINARY=/usr/bin/firefox

# for gurobi
export GRB_LICENSE_FILE="$XDG_CONFIG_HOME/gurobi.lic"
PATH="${PATH}:${GUROBI_HOME}/bin"

DEFAULT_USER="yangsheng"

export GOPATH="$HOME/.go"
PATH="$PATH:$HOME/.go/bin"

export npm_config_prefix="$HOME/.node_modules"
PATH="$PATH:$HOME/.node_modules/bin"
alias npm='npm -g'
alias npm8gb='npm --max-old-space-size=8192 --prefix ~/.node_modules'

export WINEARCH=win32

alias firefox-nightly="firefox-nightly -p nightly -no-remote"

# xgamma -rgamma 0.83 -ggamma 0.83 -bgamma 0.83 2> /dev/null
# export PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"
# export PATH="$PATH:$(ruby -rubygems -e 'puts Gem.user_dir')/bin"

alias fbv='fbv -f'
alias cpufreq='sudo cpupower -c all frequency-info'
alias cpuset_performance='sudo cpupower -c all frequency-set -r -g performance'
alias cpuset_ondemand='sudo cpupower -c all frequency-set -r -g ondemand'

alias screenshot='gnome-screenshot -i'

TEXMFMAIN="/usr/share/texmf-dist/"
alias 'git_latexdiff'="git latexdiff --bibtex --ignore-latex-errors --latexdiff-flatten"

export MAKEFLAGS="${MAKEFLAGS} -j8"

export PYTHONSTARTUP="$(python -m jedi repl)"
YANG_HAS_BATTERY=1;
