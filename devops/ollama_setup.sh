# https://github.com/ollama/ollama/blob/main/docs/linux.md

## Download
curl -fsSL https://ollama.com/install.sh | sh

## Upgrade
systemctl stop ollama.service
curl -fsSL https://ollama.com/install.sh | sh

# Create a service file in /etc/systemd/system/ollama.service
