# JEE6-LLM

Cloudtype deployment repo for a standalone vLLM OpenAI-compatible server.

## Deploy on Cloudtype

1. Create a new app from this GitHub repository.
2. Use `dockerfile` as build file.
3. Set environment variables:
   - `MODEL_NAME` (required), example: `meta-llama/Meta-Llama-3-8B-Instruct`
   - `PORT` (optional), default: `8000`
4. Deploy and copy the app URL.

## Connect from JEE6 bot

Set the bot environment variable:

`VLLM_BASE_URL=https://<your-cloudtype-vllm-url>/v1`

Then redeploy the bot service.
