#!/usr/bin/env bash

  python BERT_NER.py\
    --task_name="amttl"  \
    --crf=Flase \
    --do_train=False   \
    --do_eval=False   \
    --do_predict=True \
    --data_dir=data_AMTTL   \
    --vocab_file=/home/leo/lh/BERT/chinese_L-12_H-768_A-12/vocab.txt  \
    --bert_config_file=/home/leo/lh/BERT/chinese_L-12_H-768_A-12/bert_config.json \
    --init_checkpoint=/home/leo/lh/BERT/chinese_L-12_H-768_A-12/bert_model.ckpt   \
    --max_seq_length=128   \
    --train_batch_size=32   \
    --learning_rate=2e-5   \
    --num_train_epochs=3.0   \
    --output_dir=output/run_amttl_base \
    --middle_output=middle_data/amttl \
    --gpu=0


#perl conlleval.pl -d '\t' < ./output/result_dir/label_test.txt