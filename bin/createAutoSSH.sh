#!/bin/bash

# Add the following using `crontab -e`
# */1 * * * * $HOME/bin/createAutoSSH.sh >> /tmp/createAutoSSH.log 2>&1

HOSTNAME=`hostname`
PORT=15522
SSH_PORT=8022
LOCAL_SSH_PORT=8022
USER=yangsheng
AUTOSSH=autossh
echo $(date)
# echo "$HOSTNAME"
case "$HOSTNAME" in
    "t420")
        PORT=15023
        echo "in myhost"
        ;;
    "carbon")
        PORT=15123
        echo "in carbon"
        ;;
    "pi_yangsheng")
        PORT=15223
        echo "in raspberry"
        LOCAL_SSH_PORT=9022
        ;;
    "HPE")
        PORT=15323
        echo "in HPE"
        LOCAL_SSH_PORT=7022
        ;;
    "Desktop")
        PORT=15423
        echo "in Desktop"
        LOCAL_SSH_PORT=22
        ;;
    "osprey.cs.northwestern.edu")
        PORT=15523
        echo "in ospery"
        LOCAL_SSH_PORT=22
        AUTOSSH=/home/syi3741/gentoo/usr/bin/autossh
        ;;
    *) PORT=15923
esac
if [[ $(pgrep -l autossh) == *"autossh"* ]]; then
    echo "Autossh already running"
else
    ${AUTOSSH} -M 0 \
        -o "ServerAliveInterval 30" -o "ServerAliveCountMax 3" \
        -p "$SSH_PORT" -f -N \
        -R "$PORT":localhost:"$LOCAL_SSH_PORT" \
        yangsheng@dimlight.tk
fi
