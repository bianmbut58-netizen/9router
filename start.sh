#!/bin/bash
set -e

# Menjalankan update dan upgrade package di dalam kontainer jika diperlukan
echo "Memperbarui package sistem..."
apt-get update -qq && apt-get upgrade -y -qq

# Memastikan 9router terinstall secara global
if ! command -v 9router &> /dev/null; then
    echo "9router tidak ditemukan, mencoba menginstal..."
    npm install -g 9router
fi

# Menggunakan port bawaan 9router (20128) atau dari env Railway jika dinamis
PORT_TARGET="${PORT:-20128}"

echo "Menjalankan 9router pada port: $PORT_TARGET"

# Jalankan 9router dengan menentukan port-nya
9router --port "$PORT_TARGET"
