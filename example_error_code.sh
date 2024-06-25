#!/bin/bash

directory=/etc

if [ -d $directory ]
then
    echo "Exit code: $?"
    echo "The $directory exists."
else
    echo "Exit code:  $?"
    echo "The directory $directory doesn't exist."
fi



