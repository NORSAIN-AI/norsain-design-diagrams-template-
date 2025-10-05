#!/usr/bin/env bash
set -euo pipefail

sudo apt-get update -y
sudo apt-get install -y --no-install-recommends ca-certificates fonts-liberation

# Slå av npm-støy og installer mmdc (pin versjon for reproduserbarhet)
npm config set fund false
npm config set audit false
npm i -g @mermaid-js/mermaid-cli@10.9.1

echo "Devcontainer klar ✅"
