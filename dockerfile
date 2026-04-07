FROM vllm/vllm-openai:latest

ENV MODEL_NAME=Qwen/Qwen2.5-3B-Instruct
ENV PORT=10000
ENV HF_HOME=/data/huggingface

CMD ["--host", "0.0.0.0", "--port", "10000"]
