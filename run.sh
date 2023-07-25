#!/bin/bash
# Setup vault-dump env
# Usage: source run.sh [-u]

if [ ! -d ".venv" ] || [ "$1" = "-u" ]; then
  python3 -m venv --prompt="vault-dump" .venv
  source .venv/bin/activate
  pip3 install -U -r requirements.txt
else
  source .venv/bin/activate
fi

# Download reviwed version of vault-dump
if [ ! -f "vault-dump" ]; then
    wget -O vault-dump https://raw.githubusercontent.com/danielpops/vault-dump/79ed45d8c9f8bfc47393609843c789c68d496fa6/vault_dump/main.py
fi
