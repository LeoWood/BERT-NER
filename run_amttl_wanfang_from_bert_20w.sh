#!/usr/bin/env bash

  python BERT_NER.py\
    --task_name="amttl"  \
    --crf=False \
    --do_train=True   \
    --do_eval=True   \
    --do_predict=True \
    --data_dir=data/data_AMTTL   \
    --vocab_file=/home/leo/lh/BERT/chinese_L-12_H-768_A-12/vocab.txt  \
    --bert_config_file=/home/leo/lh/BERT/chinese_L-12_H-768_A-12/bert_config.json \
    --init_checkpoint=/home/leo/lh/Projects/pre_trained_models/output_r_old_20w/model.ckpt-200000   \
    --max_seq_length=128   \
    --train_batch_size=32   \
    --learning_rate=2e-5   \
    --num_train_epochs=8.0   \
    --output_dir=output/run_amttl_wanfang_from_bert_20w \
    --middle_output=middle_data/amttl \
    --gpu=0


#perl conlleval.pl -d '\t' < ./output/result_dir/label_test.txt
