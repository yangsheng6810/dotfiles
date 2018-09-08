#!/bin/sh
ls `echo "$PATH"|sed "s/:/ /g"`|grep -i --color=auto "$1"
