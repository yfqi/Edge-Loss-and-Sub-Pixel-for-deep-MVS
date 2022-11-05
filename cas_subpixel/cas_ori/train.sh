#!/usr/bin/env bash
MVS_TRAINING="dtu1.zip"
LOG_DIR="cas_out"
CUDA_VISIBLE_DEVICES=0,1 python -m torch.distributed.launch --nproc_per_node=2 eccv/single_exp/casmvsnet/train.py \
                 --trainlist=dtu1.zip/list/train.txt\
                 --trainpath=$MVS_TRAINING\
                 --testlist=dtu1.zip/list/test.txt\
                 --testpath=$MVS_TRAINING\
                 --dataset=dtu_yao --batch_size=3\
                 --logdir=eccv/single_exp/casmvsnet/out --numdepth=192 ${@:3} | tee -a $LOG_DIR/log.txt