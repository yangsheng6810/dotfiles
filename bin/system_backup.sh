#!/bin/bash
USER=`whoami`
if [ "x$USER" != "xroot" ]; then
    echo "Not root!"
    exit 1
fi

# Basic snapshot-style rsync backup script
# Config
# OPT="-aPh"
OPT="-aAXH --info=progress2"
SRC="/"
DEST_ROOT="/media/8T_Backup/Mine"
SNAP="${DEST_ROOT}/FullSystem_newer"
LAST="${SNAP}/last"
LINK="--link-dest=${LAST}" 
# EXCLUDE="--exclude-from=${DEST_ROOT}/exclude-list.txt"
EXCLUDE="--exclude-from=/home/yangsheng/bin/system_backup_exclude-list.txt"
date=`LC_ALL=en_US.utf8 date "+%Y-%b-%d:_%T"`

# Run rsync to create snapshot
rsync $OPT $LINK $EXCLUDE $SRC ${SNAP}/$date

cd ${SNAP}
# Remove symlink to previous snapshot
rm -f last

# Create new symlink to latest snapshot for the next backup to hardlink
ln -s $date last 

# sudo rsync -aAXH --delete --info=progress2 --exclude-from="exclude-list.txt" --link-dest=/run/media/yangsheng/Mine/FullSystem/ / /run/media/yangsheng/Mine/FullSystem_new
