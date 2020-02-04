#!/bin/bash
HOSTNAME=`hostname`
PORT=15522
SSH_PORT=8022
LOCAL_SSH_PORT=8022
USER=yangsheng
echo $(date)
# echo "$HOSTNAME"
case "$HOSTNAME" in
    "t420")
        PORT=15022
        echo "in myhost"
        ;;
    "carbon")
        PORT=15122
        echo "in carbon"
        ;;
    "pi_yangsheng")
        PORT=15222
        echo "in raspberry"
        LOCAL_SSH_PORT=9022
        ;;
    "HPE")
        PORT=15322
        echo "in HPE"
        LOCAL_SSH_PORT=7022
        ;;
    "Desktop")
        PORT=15422
        echo "in Desktop"
        LOCAL_SSH_PORT=22
        ;;
    "osprey.cs.northwestern.edu")
        PORT=15522
        echo "in ospery"
        LOCAL_SSH_PORT=22
        ;;
    *) PORT=15922
esac
createTunnel() {
    /usr/bin/ssh -p "$SSH_PORT" -f -N \
                 -R "$PORT":localhost:"$LOCAL_SSH_PORT" \
                 yangsheng@dimlight.tk
                 # -L"$LOCAL_PORT":dimlight.tk:"$SSH_PORT" \
    if [[ $? -eq 0 ]]; then
        echo Tunnel to HostA created successfully
    else
        echo An error occurred creating a tunnel to HostA. Return code: $?
    fi
}
if ping -q -c 1 -W 1 8.8.8.8 > /dev/null; then
    echo "Internet connection is working"
    if ping -q -c 1 -W 1 dimlight.tk > /dev/null; then
        echo "linode server available"
        # /usr/bin/ssh -p "$LOCAL_SSH_PORT" "$USER"@localhost ls > /dev/null
        timeout 25 /usr/bin/ssh -o ConnectTimeout=20 -o ProxyCommand="ssh -p $SSH_PORT -q yangsheng@dimlight.tk nc -q0 localhost $PORT" localhost ls > /dev/null
        if [[ $? -ne 0 ]]; then
            echo Creating new tunnel connection to HostA
            createTunnel
        else
            echo tunnel already exists
        fi
    else
        echo "linode server not available"
    fi
else
    echo "Internet connection is not working"
fi

