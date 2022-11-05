#!/usr/bin/env bash
TESTPATH="/media/public/disk4/pengr/tankandtemples/intermediate"
TESTLIST="all"
CKPT_FILE="/media/public/yan2/yfq/exp/ec/cas_pointrend_0.9/model_000010.ckpt"
CUDA_VISIBLE_DEVICES=0 python /media/public/yan2/yfq/exp/ec/cas_pointrend_0.9/test_0_9.py --dataset=general_eval --batch_size=1 --testpath=$TESTPATH  --testlist=$TESTLIST --loadckpt $CKPT_FILE ${@:2}

