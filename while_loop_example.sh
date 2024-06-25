#!/bin/bash

myvar=1

while [ $myvar -le 10 ]
do
    echo $myvar
    myvar=$(( $myvar +1 ))
    sleep 0.5
done

myvar=1

while [ -f ~/bash_course/testfile ]
do
	echo "As of $(date), the test file exists"
    sleep 5
done

echo "As sof $(date), th file has gone missing."


