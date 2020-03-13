#!/usr/bin/env bash

  python BERT_NER.py\
    --task_name="ccks"  \
    --crf=False \
    --do_train=True   \
    --do_eval=True   \
    --do_predict=True \
    --data_dir=data/data_CCKS   \
    --vocab_file=/home/leo/lh/BERT/chinese_L-12_H-768_A-12/vocab.txt  \
    --bert_config_file=/home/leo/lh/BERT/chinese_L-12_H-768_A-12/bert_config.json \
    --init_checkpoint=/home/leo/lh/Projects/bert/models/pre3_old   \
    --max_seq_length=128   \
    --train_batch_size=32   \
    --learning_rate=2e-5   \
    --num_train_epochs=6.0   \
    --output_dir=output/run_ccks_pre3_old \
    --middle_output=middle_data/ccks \
    --gpu=1


#perl conlleval.pl -d '\t' < ./output/result_dir/label_test.txt