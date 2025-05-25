#!/bin/bash
# Author: KevinZonda
# Copyright(c) 2025 KevinZonda

if [[ "$OSTYPE" == "darwin"* ]]; then
    if command -v gsed &> /dev/null; then
        SED_CMD="gsed"
        echo "[+] detected macOS, use gsed"
    else
        echo "[!] gsed not found, please install via Homebrew"
        echo "brew install gnu-sed"
        exit 1
    fi
else
    SED_CMD="sed"
fi

find . -type f -exec $SED_CMD -i 's|https://github\.com|https://git.kevinzonda.com|g' {} +
