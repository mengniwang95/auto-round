#!/bin/bash
set -x
model_name="yujiepan/llama-2-tiny-3layers-random"

python3 main.py \
  --model_name $model_name \
  --group_size 32 \
  --bits 4 \
  --deployment_device "fake" \
  --output_dir "./tmp_autoround"


