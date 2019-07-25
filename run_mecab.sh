#!/usr/bin/env bash

dic=/mnt/c/Users/yiwanami/mecab-ipadic-neologd
user_dic=/mnt/c/Users/yiwanami/userdic/user.dic
#mecab -d mecab-ipadic-neologd -u userdic/hoken.dic
#mecab -x 未知語 -d mecab-ipadic-neologd -u userdic/hoken.dic -N 5
#mecab -x 未知語 -d ${dic} -u ${user_dic} -F "%m\t%F-[0,1,2,3]\t%h\n" #"%m\t%F-[0,1,2,3] %t %h"
# 生起コスト、連接コスト、累積コスト
mecab -x 未知語 -d ${dic} -u ${user_dic} -F '%m\t%H\t%pw,%pC,%pc\n' -E 'EOS\t%pw,%pC,%pc\n'
