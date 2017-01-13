#!/usr/bin/env bash

#echo -ne '#####                     (33%)\r'
#sleep 1
#echo -ne '#############             (66%)\r'
#sleep 1
#echo -ne '#######################   (100%)\r'
#echo -ne '\n'

marks=('|' '/' '-' '|' '\\')
#for mark in '|' '/' '-' '|' '\\'
cnt=0
while true
do
#    cnt=$((cnt++))
    let cnt++
#    echo ${cnt}
#    i=$((${cnt}%4))
#    echo $((${cnt} % 4))
#    echo ${I}
    mark=${marks[$((${cnt} % 5))]}
    echo -ne "${mark}\r"
    sleep 0.5
done
echo -ne '\n'
