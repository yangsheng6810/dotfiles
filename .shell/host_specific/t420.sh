alias addon-sdk="cd /opt/addon-sdk && source bin/activate; cd -"
alias tllocalmgr="tllocalmgr --mirror='http://mirrors.tuna.tsinghua.edu.cn/CTAN/systems/texlive/tlnet'"

TEXMFMAIN="/usr/share/texmf-dist/"
alias 'git_latexdiff'="git latexdiff --bibtex --ignore-latex-errors --latexdiff-flatten"

# alias nvidia-settings='optirun nvidia-settings -c :8'
export MAKEFLAGS="${MAKEFLAGS} -j8"

YANG_HAS_BATTERY=1;
# export DISTCC_HOSTS="localhost/2 192.168.1.254/12"
# export PATH="/usr/lib/distcc/bin:$PATH"
