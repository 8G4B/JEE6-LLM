FROM vllm/vllm-openai:latest

ENV MODEL_NAME=meta-llama/Meta-Llama-3-8B-Instruct
ENV PORT=10000
ENV HF_HOME=/data/huggingface

CMD ["--host", "0.0.0.0", "--port", "10000"]
