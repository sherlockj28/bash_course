#!/bin/bash

#Check to make sure the user has entered exactly two arguments.
if [ $# -ne 2 ]
then
    echo "Usage: backup.sh <source_directory> <target_directory>"
    echo "Please try again."
    exit 1
fi

#Check to see if rsync is installed.Using exit code 2 for logic,
#different codes for different problems.
if ! command -v rsync > /dev/null 2>&1
then
    echo "This script requires rsync to be installed."
    echo "Please use your distro's package manager to install it and retry."
    exit 2
fi

#capture the current date, and store it in the format YYY-MM-DD
current_date=$(date +%Y-%m-%d)

#-abv =a is archive mode, v is verbose, b means don't replace files on target.
#dry run is very important, it won't copy anything, it creates a simulation
#once dry run tests fine, you need to remove it to actually create a backup.
rsync-options="-avb --backup-dir $2/$current_date --delete --dry-run"

$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log


