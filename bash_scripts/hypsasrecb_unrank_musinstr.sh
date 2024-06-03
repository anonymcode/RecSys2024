#!/bin/bash

study_name="HFPS_MusInst_HR"
model_name="hypsasrec"

dataset="Musical_Instruments_5"
offset=0.95

grids_dir="./grids/unrank/MUSINSTR"
num_steps=30

# Array containing paths IDs to different config files
rank_values=(8 16 32 64 128 256 512)

for num in "${rank_values[@]}"
do
    path="${grids_dir}/${model_name}_${num}.py"
    python tune.py --model="$model_name" --dataset="$dataset" --time_offset="$offset" --config_path="$path" --grid_steps="$num_steps" --study_name="$study_name" --dump_results --check_best
done
