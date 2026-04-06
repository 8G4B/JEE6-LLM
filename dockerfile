FROM vllm/vllm-openai:latest

# Cloudtype environment variables:
# - MODEL_NAME (required): Hugging Face model id
# - PORT (optional, default 8000): service port
ENV MODEL_NAME=meta-llama/Meta-Llama-3-8B-Instruct
ENV PORT=8000

CMD ["sh", "-c", "python -m vllm.entrypoints.openai.api_server --model ${MODEL_NAME} --host 0.0.0.0 --port ${PORT}"]
