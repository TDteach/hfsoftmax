#!/bin/bash

trained_model=$1
dataset_path=$2
output_dir=$3
GPU=0,1,2,3

CUDA_VISIBLE_DEVICES=$GPU python eval.py --load-path=$trained_model --bin-file=$dataset_path/lfw.bin --output-path=$output_dir/lfw.npy
CUDA_VISIBLE_DEVICES=$GPU python eval.py --load-path=$trained_model --bin-file=$dataset_path/agedb_30.bin --output-path=$output_dir/agedb_30.npy
CUDA_VISIBLE_DEVICES=$GPU python eval.py --load-path=$trained_model --bin-file=$dataset_path/cfp_ff.bin --output-path=$output_dir/cfp_ff.npy
CUDA_VISIBLE_DEVICES=$GPU python eval.py --load-path=$trained_model --bin-file=$dataset_path/cfp_fp.bin --output-path=$output_dir/cfp_fp.npy
