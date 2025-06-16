#!/bin/bash

echo "[*] 啟動 Shadowsocks 客戶端..."
ss-local -s 3.81.227.209-p 443 -l 1080 -k abc123 -m chacha20-ietf-poly1305 &

sleep 5

echo "[*] 開始挖礦！"
./xmrig/xmrig -o pool.supportxmr.com:3333 -u 43cx2hYimLw9YkAYxLG8Vg2TStTL3r6XmbfDfBiCY9MCViYCCaYpEzr1BUCmZTquQwLpg7Sb1FhrV4qR5EXWwvkgKdSHVLd -k --tls -x 127.0.0.1:1080
