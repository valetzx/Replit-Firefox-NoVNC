#!/bin/bash
pid_list=`xdotool search --name "Mozilla Firefox"`
main=`date "+%Y-%m-%d+%H:%M:%S"`
date=`date +%s%N | md5sum |cut -c 1-9`
rad=`head /dev/urandom |cksum |md5sum |cut -c 1-9`
timecn=`date +'%Y-%m-%d+%H:%M:%S' -d "+8 hour"`
site=${1}
for i in $pid_list 
do
name=`xdotool getwindowname "$i"`
echo $i
echo $name
xdotool windowfocus $i
xdotool key "alt+d"
sleep 5
xdotool type $site
xdotool key "Return"
sleep 10
xdotool key "alt+d"
echo $i
echo done
done
