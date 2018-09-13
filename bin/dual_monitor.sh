#!/bin/bash
X_USER=yangsheng
export DISPLAY=:1
export XAUTHORITY=/run/user/1000/gdm/Xauthority

declare -A sys_d
sys_d[0]="card0-DP-1"
sys_d[1]="card0-HDMI-A-2"
declare -A xrandr_d
xrandr_d[0]="DP1"
xrandr_d[1]="HDMI2"
function connect()
{
    ACTION="ON"
    while true;do
        NUMBER_OF_MONITOR=`xrandr |grep -w connected |wc -l`
        if [ ${NUMBER_OF_MONITOR} -eq 1 ];then
            sleep 0.1
        else
            break
        fi
    done
    EX_MONITOR=${xrandr_d[$1]}
    echo "EX_MONITOR = ${EX_MONITOR}"
    xrandr --output $EX_MONITOR --primary
    xrandr --output $EX_MONITOR --scale 2x2
    xrandr --output eDP1 --scale 1.25x1.25
    xrandr --output $EX_MONITOR --pos 0x0
    xrandr --output eDP1 --pos 3840x0
}

function disconnect()
{
    ACTION="OFF"
    sleep 0.1
    xrandr --output eDP1 --scale 1.25x1.25
}

LOG_FILE="/tmp/monitor.log"
touch $LOG_FILE
chmod a+w $LOG_FILE
echo `date` >> $LOG_FILE
SOMETHING_CONNECTED=0
for i in 0 1;do
    MONITOR=${sys_d[$i]}
    SCREEN_STATUS=`cat /sys/class/drm/${MONITOR}/status`
    echo ${MONITOR} is $SCREEN_STATUS >> $LOG_FILE
    ACTION="default"
    if [ "$SCREEN_STATUS" == "connected" ]; then
        connect $i
        SOMETHING_CONNECTED=1
        echo ${MONITOR} connected >> $LOG_FILE
        break
    fi
done

echo something_connected is ${SOMETHING_CONNECTED} >> $LOG_FILE

if [ "${SOMETHING_CONNECTED}" -eq "0" ];then
    disconnect
    echo all disconnected >> $LOG_FILE
fi

echo "Switching $ACTION" >> $LOG_FILE
