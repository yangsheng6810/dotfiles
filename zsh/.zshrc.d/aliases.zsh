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

alias e="emacsclient -c -nw"
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

alias l='ls'

# rsync
alias rsync-copy="rsync -avz --info=progress2 -h"
alias rsync-move="rsync -avz --info=progress2 -h --remove-source-files"
alias rsync-update="rsync -avzu --info=progress2 -h"
alias rsync-synchronize="rsync -avzu --delete --info=progress2 -h"
