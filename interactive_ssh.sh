#!/usr/bin/env bash

# ec2_connect
    remote_host=$1
    win_auth=$2
    key_pass='****'

    if [[ $# < 2 ]]; then
        echo 'Usage: login_emr [input remote host] [win auth path]'
        exit
    fi

    expect -c "
        spawn ssh ${remote_host}
        expect \"Enter passphrase for key *\"
        send \"${key_pass}\n\"
        expect \"OTP Code:\"
        send \"${win_auth}\n\"
        expect \"Enter passphrase for key *\"
        send \"${key_pass}\n\"
        interact
    "

echo ${remote_host}
#cmd=$(cat << EOT
#    spawn  ssh  ${remote_host}
#
#    expect {Enter passphrase for key *}
#    send "${key_pass}\n"
#
#    expect {OTP Code:}
#    send "${win_auth}\n"
#
#    expect {Enter passphrase for key *}
#    send "${key_pass}\n"
#
#    interact
#EOT
#)
#echo ${cmd}
#expect -c ${cmd}
