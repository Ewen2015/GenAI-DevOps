# Description: This script is used to configure the ComfyUI project.
# Usage: bash configure_comfyui.sh

# Clone the ComfyUI repo
git clone https://github.com/comfyanonymous/ComfyUI.git

# Assume you have setup the stable-diffusion-webui
# Put your SD checkpoints (the huge ckpt/safetensors files) in: models/checkpoints
# Put your VAE in: models/vae
cp stable-diffusion-webui/models/Stable-diffusion/* ComfyUI/models/checkpoints/
cp stable-diffusion-webui/models/VAE-approx/* ComfyUI/models/vae/

cd ComfyUI

# Setup virtual environment
python3 -m venv myenv
source myenv/bin/activate

# Install python dependencies
python3 -m pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu121
python3 -m pip install -r requirements.txt

# Running
nohup python3 main.py --listen '0.0.0.0' &