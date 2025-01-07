#!/bin/bash

#for i in * 
#do
#    echo "Number: $i"
#done

#counter=1
#while [ $counter -le 5 ]
#do
#    echo "Counter: $counter"
#    ((counter++))
#done

# for i in {1..5}; do date +'%H-%M-%S' > ./File-$i.txt; sleep 1; done

#while true
#do 
#    echo "Alive"
#    sleep 1
#done

DATE=date 

#echo $DATE

for i in {1..5}
do
    date +'%H-%M-%S' > ./File-$i.txt
    sleep 1
done


mkdir -p /opt/$DATE

cp ./File*.txt /opt/$DATE
#cd $DATE

for FILE in /opt/$DATE/*
do
    cat $FILE
done

