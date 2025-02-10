#!/bin/bash

set -e

clear
curl -s https://raw.githubusercontent.com/zidanaetrna/unichain/refs/heads/main/button_logo_script.sh | bash

echo "🚀 Starting vlayer Installation on Ubuntu 24 LTS..."

# Update & Install Dependencies
echo "🔄 Updating system and installing required dependencies..."
apt update -y && apt upgrade -y
apt install -y git curl iptables build-essential wget lz4 jq make gcc nano automake autoconf \
    tmux htop nvme-cli pkg-config libssl-dev libleveldb-dev tar clang bsdmainutils ncdu unzip

# Install Foundry
echo "🟢 Installing Foundry..."
cd $HOME && mkdir -p foundry && cd foundry
curl -L https://foundry.paradigm.xyz | bash
source ~/.bashrc
foundryup

# Install RISC Zero
echo "🟢 Installing RISC Zero..."
curl -L https://risczero.com/install | bash
rzup install

# Install Bun
echo "🟢 Installing Bun..."
curl -fsSL https://bun.sh/install | bash
source ~/.bashrc

# Install vlayer
echo "🟢 Installing vlayer..."
curl -SL https://install.vlayer.xyz | bash
source /root/.bashrc
vlayerup

# Verify installation
echo "🔍 Verifying vlayer installation..."
vlayer --version

echo "✅ vlayer installation completed!"

echo "📌 Next Steps:"
echo "➡️ Initialize a new project: vlayer init your-project-name"
echo "➡️ Add to an existing project: cd your-project-name && vlayer init --existing"
echo "➡️ Run sample project: vlayer init simple --template simple"
echo "➡️ More details: https://book.vlayer.xyz/getting-started/installation.html"
