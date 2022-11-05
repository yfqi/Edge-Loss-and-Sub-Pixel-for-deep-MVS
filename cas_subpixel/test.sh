#!/usr/bin/env bash
TESTPATH="/media/public/disk2/qiuke/dtu"
TESTLIST="/media/public/yan222/yfq/Casmvsnet_tdtloss_sobel/list/test.txt"
CKPT_FILE="/media/public/yan222/yfq/exp/aaa/cas_subpixel/out/model_000011.ckpt"
CUDA_VISIBLE_DEVICES=0 python /media/public/yan222/yfq/exp/aaa/cas_subpixel/test_0_9.py --dataset=general_eval --batch_size=1 --testpath=$TESTPATH  --testlist=$TESTLIST --loadckpt $CKPT_FILE ${@:2}

