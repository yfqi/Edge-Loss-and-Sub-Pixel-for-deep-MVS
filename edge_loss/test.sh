#!/usr/bin/env bash
TESTPATH="/media/public/disk2/qiuke/dtu"
TESTLIST="/media/public/yan2/yfq/CasMVSNet/lists/dtu/test2.txt"
CKPT_FILE="/media/public/yan2/yfq/cas_gttdt_dilate/model_000010.ckpt"
CUDA_VISIBLE_DEVICES=4 python /media/public/yan2/yfq/cas_gttdt_dilate/test_0_9.py --dataset=general_eval --batch_size=1 --testpath=$TESTPATH  --testlist=$TESTLIST --loadckpt $CKPT_FILE ${@:2}

