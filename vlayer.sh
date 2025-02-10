#!/bin/bash

set -e

clear
curl -s https://raw.githubusercontent.com/zidanaetrna/unichain/refs/heads/main/button_logo_script.sh | bash

echo "🚀 Starting vlayer Installation on Ubuntu 24 LTS..."

#!/bin/bash

# Update system and install dependencies
echo "Updating system and installing required packages..."
apt update && apt install -y git curl wget unzip tar build-essential

# Install Foundry
echo "Installing Foundry..."
curl -L https://foundry.paradigm.xyz | bash
source /root/.bashrc
foundryup
forge --version

# Install vlayer
echo "Installing vlayer..."
curl -SL https://install.vlayer.xyz | bash
source /root/.bashrc
vlayerup
vlayer --version

# Install Bun
echo "Installing Bun..."
curl -fsSL https://bun.sh/install | bash
source /root/.bashrc

echo "✅ Installation and setup complete!"
echo "🫡 Full Details: https://book.vlayer.xyz/getting-started/installation.html"
