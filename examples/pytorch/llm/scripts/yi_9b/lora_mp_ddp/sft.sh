# Experimental environment: 4 * 3090
# 4 * 22GB GPU memory
# Train a chat model with agent capabilities and self-awareness from the base.

CUDA_VISIBLE_DEVICES=0,1,2,3 \
NPROC_PER_NODE=2 \
swift sft \
    --model_type yi-9b \
    --sft_type lora \
    --tuner_backend swift \
    --template_type yi \
    --dtype AUTO \
    --output_dir output \
    --dataset ms-agent \
    --train_dataset_sample -1 \
    --train_dataset_mix_ratio 2 \
    --num_train_epochs 3 \
    --max_length 2048 \
    --check_dataset_strategy warning \
    --lora_rank 8 \
    --lora_alpha 32 \
    --lora_dropout_p 0.05 \
    --lora_target_modules ALL \
    --lora_modules_to_save EMBEDDING LN \
    --gradient_checkpointing true \
    --batch_size 1 \
    --weight_decay 0.1 \
    --learning_rate 1e-4 \
    --gradient_accumulation_steps 16 \
    --max_grad_norm 0.5 \
    --warmup_ratio 0.03 \
    --eval_steps 100 \
    --save_steps 100 \
    --save_total_limit 2 \
    --logging_steps 10 \
    --use_flash_attn false \
    --model_name 小黄 'Xiao Huang' \
    --model_author 魔搭 ModelScope \
