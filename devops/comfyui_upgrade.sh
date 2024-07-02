# Description: This script is used to upgrade the ComfyUI project.
# Usage: bash comfyui_upgrade.sh

cd ComfyUI

# Upgrade the ComfyUI repo
git pull

## Setup virtual environment
# 1. If you have another UI installed and working with its own python venv,
# you can use that venv to run ComfyUI. 
# source path_to_other_sd_gui/venv/bin/activate
source ../../app/stable-diffusion-webui/venv/bin/activate

# 2. Else
# python3 -m venv myenv
# source myenv/bin/activate

# Upgrade python dependencies
python3 -m pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

# Kill the process

# Restart the WebUI
nohup python3 main.py --listen '0.0.0.0' &
