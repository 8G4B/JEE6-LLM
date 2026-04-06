# JEE6-LLM

Cloudtype deployment repo for a standalone vLLM OpenAI-compatible server.

## Deploy on Cloudtype

1. Create a new app from this GitHub repository.
2. Use `dockerfile` as build file.
3. (Recommended) Attach a persistent volume and mount it to `/data`.
4. Set environment variables:
   - `MODEL_NAME` (required), example: `meta-llama/Meta-Llama-3-8B-Instruct`
   - `PORT` (optional), default: `8000`
   - `HF_HOME` (optional), default: `/data/huggingface`
   - `HUGGING_FACE_HUB_TOKEN` (optional): required for gated/private models
5. Deploy and copy the app URL.

## Why persistent volume?

Model weights are large (often multiple GB). This repo intentionally does **not** bake weights into the Docker image.
Instead, vLLM downloads the model at runtime and caches it under `HF_HOME`.
Mounting `/data` as a persistent volume prevents re-downloading on every deploy.

## Connect from JEE6 bot

Set the bot environment variable:

`VLLM_BASE_URL=https://<your-cloudtype-vllm-url>/v1`

Then redeploy the bot service.
