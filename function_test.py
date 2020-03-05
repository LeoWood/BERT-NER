#! usr/bin/env python3
# -*- coding:utf-8 -*-
"""
@Author:zhoukaiyin
"""

import pickle

def _read_data(input_file):
    """Read a BIO data!"""
    rf = open(input_file, 'r')
    lines = []; words = []; labels = []
    for line in rf:
        word = line.strip().split(' ')[0]
        label = line.strip().split(' ')[-1]
        # here we dont do "DOCSTART" check
        if len(line.strip()) == 0 and words[-1] == '.':
            l = ' '.join([label for label in labels if len(label) > 0])
            w = ' '.join([word for word in words if len(word) > 0])
            lines.append((l, w))
            words = []
            labels = []
        words.append(word)
        labels.append(label)
    return lines

def label_2_id():
    labels = []
    with open(r'D:\UCAS\Phd\Projects\201908CsciBERT\预训练评测\Chinese-clinical-NER-master\bert_bilstm_crf\data\train.txt','r',encoding='utf-8') as f:
        for line in f.readlines():
            line = line.strip()
            if line:
                labels.append(line.split()[1])
    print(set(labels))
    exit()

    a = pickle.load(open("middle_data/label2id.pkl","rb"))
    labels = ["[PAD]","B_疾病和诊断","B_解剖部位","B_影像检查","B_实验室检验","B_手术","B_药物", "I_解剖部位","I_影像检查","I_实验室检验","I_手术","I_药物","X","[CLS]","[SEP]"]
    label2id = {}
    for i in range(len(labels)):
        label2id[labels[i]] = i
    with open("middle_data/ccks/label2id.pkl",'wb') as f:
        pickle.dump(label2id,f)
    print(label2id)

def main():
    label_2_id()
    exit()
    lines =  _read_data("./data/train.txt")
    print(lines)
main()
