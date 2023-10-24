# Experimental environment: V100, A10, 3090
PYTHONPATH=../../.. \
CUDA_VISIBLE_DEVICES=0 \
python llm_infer.py \
    --model_type qwen-7b-chat-int4 \
    --sft_type lora \
    --template_type chatml \
    --dtype fp16 \
    --ckpt_dir "output/qwen-7b-chat-int4/vx_xxx/checkpoint-xxx" \
    --eval_human false \
    --dataset damo-agent-mini-zh \
    --max_length 4096 \
    --use_flash_attn false \
    --max_new_tokens 2048 \
    --temperature 0.9 \
    --top_k 20 \
    --top_p 0.9 \
    --do_sample true \
    --merge_lora_and_save false \
