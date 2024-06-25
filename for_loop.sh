#1/bin/bash

#for n in {1..10}
#do
#    echo $n
#    sleep 0.75
#done
#
#echo "This is outside of the for loop."i
#
#
#compress files that end in .log
#
for file in logfiles/*.log
do
    tar -czvf $file.tar.gz $file
done


