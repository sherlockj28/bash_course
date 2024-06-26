#!/bin/bash

#echo "You entered the argument: $1, $2, $3, and $4."

#the $1 is a variable

lines=$(ls -ls -lh $5 | wc -l)

if [ $# -ne 1 ]
then
    echo "The script requires exactly one directory path passed to it."
    echo "Please try again."
    exit 1
fi

echo "You have $(($lines-1)) objects in the $5 directory."

