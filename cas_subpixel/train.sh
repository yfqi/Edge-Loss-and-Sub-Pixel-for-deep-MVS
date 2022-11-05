#!/usr/bin/env bash
MVS_TRAINING="/media/public/disk2/qiuke/cas_training"
LOG_DIR="out"
CUDA_VISIBLE_DEVICES=1,7 python -m torch.distributed.launch --nproc_per_node=2 /media/public/yan222/yfq/exp/aaa/cas_subpixel/train.py \
                 --trainlist=/media/public/yan222/yfq/Casmvsnet_tdtloss/list/train.txt\
                 --trainpath=$MVS_TRAINING\
                 --testlist=/media/public/yan222/yfq/Casmvsnet_tdtloss/list/test.txt\
                 --testpath=$MVS_TRAINING\
                 --dataset=dtu_yao --batch_size=2\
                 --logdir=/media/public/yan222/yfq/exp/aaa/cas_subpixel/out --numdepth=192 ${@:3} | tee -a $LOG_DIR/log.txt