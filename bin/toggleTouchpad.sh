#!/bin/sh
answer=`synclient -l|grep -i touchpadoff|sed 's/TouchpadOff *= //'`
if ((answer)); then
	synclient touchpadoff=0
else
	synclient touchpadoff=1
fi
