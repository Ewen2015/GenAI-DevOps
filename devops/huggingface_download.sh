# Assume you are in China

## Huggingface Setup
# Install Huggingface Command Line Interface (CLI)
python3 -m pip install -U huggingface_hub -i https://pypi.tuna.tsinghua.edu.cn/simple

# Login
huggingface-cli login
huggingface-cli whoami

# Set up Mirror
export HF_ENDPOINT=https://hf-mirror.com


## Download models
huggingface-cli download adept/fuyu-8b model-00001-of-00002.safetensors --local-dir Your/Local/Dir/
