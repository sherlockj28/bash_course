#!/bin/bash

command=nmap

if command -v $command
then
    echo "$command is present, let's run it...."
else
    echo "$command is NOT availalable, installing it...."
    sudo pamac update && sudo pamac install -y $command
fi

$command


