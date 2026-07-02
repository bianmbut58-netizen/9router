#!/bin/bash
set -e

# Menyediakan port fallback 20128 jika variabel $PORT dari Railway kosong
export PORT="${PORT:-20128}"

echo "Memulai 9router pada port: $PORT"

# Menjalankan perintah global 9router
9router
