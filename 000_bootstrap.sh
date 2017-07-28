#!/usr/bin/env bash

#sudo pip install boto3

#aws s3 cp realtime-rec-work/rikk-iwanami_yuich/.bashrc /
aws s3 cp s3://realtime-rec-work/rtkk-iwanami_yuich/.vimrc /home/hadoop/
aws s3 cp s3://realtime-rec-work/rtkk-iwanami_yuich/.bashrc_custom /home/hadoop/
aws s3 cp s3://realtime-rec-work/rtkk-iwanami_yuich/.hiverc /home/hadoop/

#echo -e '\n' >> /home/hadoop/.bashrc
#echo "PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ '" >> /home/hadoop/.bashrc
echo -e '\n[[ -f .bashrc_custom ]] && . .bashrc_custom' >> /home/hadoop/.bashrc
