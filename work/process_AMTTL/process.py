#!/usr/bin/env python
#-*- coding:utf-8 -*-
# Author: LiuHuan
# Datetime: 2019/12/28 16:38

import os

path = r"D:\UCAS\Phd\Projects\201908CsciBERT\预训练评测\Data\AMTTL"

if __name__ == '__main__':
    for file in ['forum_train.txt','forum_test.txt','forum_dev.txt']:
        with open(os.path.join(path, 'new' + file), 'w', encoding='utf-8') as fw:
            with open(os.path.join(path, file), 'r', encoding='utf-8') as f:
                flag = 1
                for line in f.readlines():
                    line = line.strip()
                    if not line:
                        if flag == 0:
                            continue
                        else:
                            flag = 0
                            fw.write('\n')
                    else:
                        flag = 1
                        line = line.replace('\t',' ')
                        fw.write(line + '\n')
