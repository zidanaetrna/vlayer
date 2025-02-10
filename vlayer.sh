#!/bin/bash

set -e

clear
curl -s https://raw.githubusercontent.com/zidanaetrna/unichain/refs/heads/main/button_logo_script.sh | bash

echo "🚀 Starting vlayer Installation on Ubuntu 24 LTS..."

#!/bin/bash

echo "Updating system and installing dependencies..."
apt update && apt install -y git curl wget unzip tar build-essential

echo "Installing Foundry..."
curl -L https://foundry.paradigm.xyz | bash
source /root/.bashrc

# Ensure Foundry binaries are in PATH
if [ ! -f "$HOME/.foundry/bin/foundryup" ]; then
    echo "Foundry installation failed or PATH is incorrect. Manually adding Foundry to PATH..."
    export PATH="$HOME/.foundry/bin:$PATH"
    echo 'export PATH="$HOME/.foundry/bin:$PATH"' >> ~/.bashrc
    source ~/.bashrc
fi

# Verify Foundry installation
if command -v foundryup &> /dev/null; then
    echo "Running foundryup..."
    foundryup
    forge --version
else
    echo "Error: Foundry installation failed. Please check the logs."
    exit 1
fi

echo "Installing Vlayer..."
curl -SL https://install.vlayer.xyz | bash
source /root/.bashrc
vlayerup
vlayer --version

echo "Installing Bun..."
curl -fsSL https://bun.sh/install | bash
source /root/.bashrc

echo "✅ Installation and setup completed!"

echo "🫡 Full Details: https://book.vlayer.xyz/getting-started/installation.html"
