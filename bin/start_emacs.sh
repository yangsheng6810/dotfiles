#!/bin/sh
export ALTERNATE_EDITOR=emacs EDITOR=emacsclient VISUAL=emacsclient
export GDK_SCALE=1
export GDK_DPI_SCALE=1
# if [ -n "$DESKTOP_SESSION" ];then
#     eval $(gnome-keyring-daemon --start)
#     export SSH_AUTH_SOCK
# fi
/usr/bin/emacsclient -c -a ""
