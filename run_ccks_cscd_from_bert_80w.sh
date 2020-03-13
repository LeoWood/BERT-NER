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
    --init_checkpoint=/home/leo/lh/Projects/bert/outputs/Pre2_cscd_R_128_from_bert/model.ckpt-2000000   \
    --max_seq_length=128   \
    --train_batch_size=32   \
    --learning_rate=2e-5   \
    --num_train_epochs=10.0   \
    --output_dir=output/run_ccks_cscd_from_bert_80w \
    --middle_output=middle_data/ccks \
    --gpu=1


#perl conlleval.pl -d '\t' < ./output/result_dir/label_test.txt
