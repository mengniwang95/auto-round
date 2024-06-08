#!/bin/bash
set -x
# model_name="yujiepan/llama-2-tiny-3layers-random"
# model_name="EleutherAI/gpt-j-6b"
# model_name="databricks/dolly-v2-3b"
model_name="mistralai/Mistral-7B-v0.1"
python3 main.py \
  --model_name $model_name \
  --group_size 32 \
  --bits 4 \
  --deployment_device "fake" \
  --output_dir "./tmp_autoround" \
  --disable_minmax_tuning


