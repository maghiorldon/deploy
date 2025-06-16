#!/bin/bash
set -e

echo "[*] 開始安裝必要套件..."
sudo apt update
sudo apt install -y \
    wget curl unzip git vim \
    shadowsocks-libev \
    libhwloc-dev cmake build-essential

echo "[*] 下載並解壓 xmrig..."
wget https://github.com/xmrig/xmrig/releases/download/v6.21.3/xmrig-6.21.3-linux-x64.tar.gz
tar -xzvf xmrig-6.21.3-linux-x64.tar.gz
mv xmrig-6.21.3 xmrig

echo "[*] 建立啟動腳本..."
chmod +x run.sh
