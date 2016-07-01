#!/bin/sh
FILE="file-list"
function usage
{
    echo "usage: bootstrap.sh [[ -f FILE ] [-d ]| -h]"
}

dry_run=0
while [ "$1" != "" ]; do
    case $1 in
        -f | --file )           shift
                                FILE=$1
                                ;;
        -d | --dry-run )        dry_run=1
                                ;;
        -h | --help )           usage
                                exit
                                ;;
        * )                     usage
                                exit 1
    esac
    shift
done

while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "running: \`ln -s ${line} ~/${line}'"
    # if [ -L ~/${i} && $(readlink ~/${i})]
    if [ ${dry_run} -eq 0 ]; then
        ln -s ${i} ~/${i}
    fi
done < "$FILE"
