#!/bin/bash
#SBATCH -p normal
#SBATCH -N 1
#SBATCH -J ccks_base
#SBATCH -o ccks_base.out

python BERT_NER.py\
 --data_dir=data/data_CCKS\
 --bert_config_file=/public/home/zzx6320/lh/Projects/bert/models/chinese_L-12_H-768_A-12/chinese_L-12_H-768_A-12/bert_config.json\
 --task_name=ccks\
 --vocab_file=/public/home/zzx6320/lh/Projects/bert/models/chinese_L-12_H-768_A-12/chinese_L-12_H-768_A-12/vocab.txt\
 --output_dir=output/run_ccks_base\
 --init_checkpoint=/public/home/zzx6320/lh/Projects/bert/models/chinese_L-12_H-768_A-12/chinese_L-12_H-768_A-12/bert_model.ckpt\
 --max_seq_length=128\
 --do_train=True\
 --do_eval=True\
 --do_predict=True\
 --crf=False \
 --middle_output=middle_data/ccks\
 --train_batch_size=32\
 --learning_rate=2e-5\
 --num_train_epochs=6.0\
 --gpu=0\