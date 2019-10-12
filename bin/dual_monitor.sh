#!/bin/bash
X_USER=yangsheng
export DISPLAY=:0
# export XAUTHORITY=/run/user/1000/gdm/Xauthority
export XAUTHORITY=$HOME/.Xauthority

declare -A sys_d
sys_d[0]="card0-DP-1"
sys_d[1]="card0-HDMI-A-2"
declare -A xrandr_d
xrandr_d[0]="DP1"
xrandr_d[1]="HDMI2"

EXT_SCALE="1"
EXT_SCALE_STR="1"
INT_SCALE="1"
INT_SCALE_STR="1"

# INT_MODE="--mode 2560x1440"
INT_MODE="--mode 1920x1080"

# EXT_SCALE="1"
# EXT_SCALE_STR="1"
# INT_SCALE="3/4"
# INT_SCALE_STR="0.75"

# EXT_SCALE="3/2"
# EXT_SCALE_STR="1.5"
# INT_SCALE="1"
# INT_SCALE_STR="1"

# EXT_SCALE="2"
# EXT_SCALE_STR="2"
# INT_SCALE="5/4"
# INT_SCALE_STR="1.25"

function calc_frac()
{
    echo "scale=0; $1 / 1" | bc
}

function connect()
{
    ACTION="ON"
    while true;do
        NUMBER_OF_MONITOR=`xrandr |grep -w connected |wc -l`
        if [ ${NUMBER_OF_MONITOR} -eq 1 ];then
            sleep 0.5
        else
            break
        fi
    done
    EX_MONITOR=${xrandr_d[$1]}
    echo "EX_MONITOR = ${EX_MONITOR}"
    # xrandr --output $EX_MONITOR --primary
    # xrandr --output $EX_MONITOR --scale 2x2
    # xrandr --output eDP1 --scale 1.25x1.25
    # xrandr --output $EX_MONITOR --pos 0x0
    # xrandr --output eDP1 --pos 3840x0

    MAIN_X=${2%%x*}
    MAIN_Y=${2#*x}
    echo $MAIN_X $MAIN_Y

    SCALED_X=$(calc_frac "$MAIN_X * $EXT_SCALE")
    SCALED_Y=$(calc_frac "$MAIN_Y * $EXT_SCALE")
    echo $SCALED_X $SCALED_Y

    # INTERNAL_SCREEN_X=2560
    # INTERNAL_SCREEN_Y=1440
    INTERNAL_SCREEN_Y=1080

    # SCALED_INTERNAL_SCREEN_X=$((INTERNAL_SCREEN_X * 5 / 4))
    SCALED_INTERNAL_SCREEN_Y=$((INTERNAL_SCREEN_Y * INT_SCALE))

    ORIENTATION_OPTION=""

    if [ "${EXT_ORIENTATION}" == "vertical" ];then
        INTERNAL_POS_X=$SCALED_Y
        INTERNAL_POS_Y=$(((SCALED_X - SCALED_INTERNAL_SCREEN_Y) / 2))
        ORIENTATION_OPTION="--rotate left"
    else
        INTERNAL_POS_X=$SCALED_X
        INTERNAL_POS_Y=$(((SCALED_Y - SCALED_INTERNAL_SCREEN_Y) / 2))
        ORIENTATION_OPTION="--rotate normal"
    fi
    echo $INTERNAL_POS_X $INTERNAL_POS_Y

    xrandr --output $EX_MONITOR  --auto --primary --scale "${EXT_SCALE_STR}x${EXT_SCALE_STR}" --pos 0x0 $ORIENTATION_OPTION --set audio on
    xrandr --output eDP1 --auto --scale "${INT_SCALE_STR}x${INT_SCALE_STR}" --pos "${INTERNAL_POS_X}x${INTERNAL_POS_Y}" ${INT_MODE}
    sleep 0.5
    nitrogen ~/Pictures/wallpaper/desktop.png --set-scaled --head=1
    nitrogen ~/Pictures/wallpaper/desktop.png --set-scaled --head=0
    after_hook
}

function disconnect()
{
    echo "disconnecting"
    ACTION="OFF"
    xrandr --output DP1 --off
    xrandr --output HDMI2 --off
    # xrandr --output eDP1 --primary --scale 1.25x1.25
    # xrandr --output eDP1 --primary --scale "${INT_SCALE_STR}x${INT_SCALE_STR}" ${INT_MODE}
    xrandr --output eDP1 --primary --scale "${INT_SCALE_STR}x${INT_SCALE_STR}" ${INT_MODE}
    sleep 0.5
    nitrogen ~/Pictures/wallpaper/desktop.png --set-scaled --head=0
    after_hook
}

function after_hook()
{
    displaycal-apply-profiles
    if [ -n "$(pgrep -l compton)" ]; then
        echo "compton running"
    else
        echo "compton not running"
        compton -b --log-file /tmp/compton.log
    fi
    # $XDG_CONFIG_HOME/polybar/launch.sh
}

LOG_FILE="/tmp/monitor.log"
touch $LOG_FILE
chmod a+w $LOG_FILE
if [ "$1" == "--vertical" ]; then
    EXT_ORIENTATION="vertical"
fi
echo `date` >> $LOG_FILE
SOMETHING_CONNECTED=0
for i in 0 1;do
    MONITOR=${sys_d[$i]}
    SCREEN_LOCATION="/sys/class/drm/${MONITOR}"
    SCREEN_STATUS=`cat ${SCREEN_LOCATION}/status`
    SCREEN_RESOLUTION=`cat ${SCREEN_LOCATION}/modes|head -1`
    echo ${MONITOR} is $SCREEN_STATUS >> $LOG_FILE
    ACTION="default"
    if [ "$SCREEN_STATUS" == "connected" ]; then
        connect $i $SCREEN_RESOLUTION
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
