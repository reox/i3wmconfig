#!/bin/bash
( flock -n 9 ) 9>/var/run/user/1000/borg-backup.pid

if [ $? -eq 1 ]; then
    # f085
    echo ""
    echo ""
    echo "#cb4b16"
else
    echo ""
    echo ""
    echo "#859900"
fi


exit 0
