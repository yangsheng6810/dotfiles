#!/bin/sh
#$HOME/.monicarc   #monitor calibration

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi
#exec openbox-session
#exec ck-launch-session openbox-session
export LC_ALL=zh_CN.UTF-8
export LANGUAGE=zh_CN.UTF-8
export LANG=zh_CN.UTF-8
source $HOME/.xprofile
#exec openbox-session
# xrandr --setprovideroutputsource modesetting NVIDIA-0
# xrandr --auto
# exec openbox-session
exec gnome-session
# exec startkde
# exec enlightenment_start
