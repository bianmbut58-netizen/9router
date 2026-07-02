#!/bin/bash
set -e

apt-get update -qq && apt-get install -y -qq curl git unzip

# Hapus dulu kalau sudah ada
rm -rf /app/9router
git clone https://github.com/decolua/9router.git /app/9router
cd /app/9router

cp .env.example .env

npm install
npm run build

HOSTNAME=0.0.0.0 PORT=${PORT:-8080} npm run start
