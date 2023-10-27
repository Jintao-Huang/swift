# Experimental environment: A10, 3090
PYTHONPATH=../../.. \
CUDA_VISIBLE_DEVICES=0 \
python llm_infer.py \
    --model_id_or_path qwen/Qwen-7B-Chat \
    --model_revision master \
    --sft_type lora \
    --template_type chatml \
    --dtype bf16 \
    --ckpt_dir "output/qwen-7b-chat/vx_xxx/checkpoint-xxx" \
    --eval_human false \
    --dataset leetcode-python-en \
    --max_length 4096 \
    --quantization_bit 4 \
    --bnb_4bit_comp_dtype bf16 \
    --use_flash_attn false \
    --max_new_tokens 2048 \
    --temperature 0.9 \
    --top_k 20 \
    --top_p 0.9 \
    --do_sample true \
    --merge_lora_and_save false \
