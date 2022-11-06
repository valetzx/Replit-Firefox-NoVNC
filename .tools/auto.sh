#!/bin/bash
while true
do
cat ./site.md | while  read LINE
do
sleep 1
echo $LINE 
sleep 1
sh nice.sh $LINE
sleep 5
echo replace
sleep 5
done
done
