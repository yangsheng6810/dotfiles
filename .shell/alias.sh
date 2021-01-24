# make alias work with sudo
alias 'sudo=sudo '
alias grep="grep --color=auto"

alias gmplayer='gnome-mplayer'
alias bc='bc -l'
alias mkdir='mkdir -pv'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'

# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
## this one saved by butt so many times ##
alias wget='wget -c'

# alias e="TERM=xterm-24bit emacsclient -c -nw -s terminal"
alias e="TERM=xterm-24bit emacsclient -c -nw"
alias E="TERM=xterm-24bit emacs -nw"
alias ee="emacsclient -c "
# for testing new emacs configuration
alias en='export GDK_SCALE=1
export GDK_DPI_SCALE=1
emacs'

# Basic directory operations
alias .....='cd ../../../..'
alias ....='cd ../../..'
alias ...='cd ../..'
alias -- -='cd -'

# ls
alias l='ls -l'
alias la='ls -a'
alias lla='ls -lah'
alias lt='ls --tree'

# rsync
alias rsync-copy="rsync -avz --info=progress2 -h"
alias rsync-move="rsync -avz --info=progress2 -h --remove-source-files"
alias rsync-update="rsync -avzu --info=progress2 -h"
alias rsync-synchronize="rsync -avzu --delete --info=progress2 -h"

alias rsync-copy-local="rsync -avW --no-compress --info=progress2 -h"
alias rsync-move-local="rsync -avW --no-compress --info=progress2 -h --remove-source-files"
alias rsync-update-local="rsync -avWu --no-compress --info=progress2 -h"
alias rsync-synchronize-local="rsync -avWu --no-compress --delete --info=progress2 -h"

# magit
alias magit='emacsclient -c -nw -e "(progn (magit-status) (delete-other-windows))"'

# doom emacs
alias doom='~/.emacs.d/bin/doom'

# curl
alias curl-download="curl -L -O -C -"

# htop
alias htop='TERM=screen-256color htop'

# sdcv
alias sdcv='sdcv --utf8-output --color'

alias tmux='tmux -u'

alias rsync-emacs="rsync -avzu --delete --info=progress2 -h --include='.local/straight/repos/magit/.git' --exclude='.git' --exclude='xenops' --exclude='.local/straight/build*' --exclude='.local/cache' --exclude='*.elc' --exclude='*.gif' --exclude='.local/etc/url/cache' --exclude='.local/elfeed/db' ~/.emacs.d_doom"
