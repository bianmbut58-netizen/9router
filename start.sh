#!/bin/bash
set -e

# Menggunakan port bawaan 9router (20128) atau dari env Railway jika dinamis
PORT_TARGET="${PORT:-20128}"

echo "Menjalankan 9router pada port: $PORT_TARGET"

# Jalankan 9router dengan menentukan port-nya
9router --port "$PORT_TARGET"
