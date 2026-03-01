#!/usr/bin/env bash
set -euo pipefail

echo "--- Iniciando Bootstrap do Fabiano ---"

# 1. Instalar FFmpeg se não existir
if ! command -v ffmpeg &> /dev/null; then
    echo "FFmpeg não encontrado. Instalando..."
    apt-get update && apt-get install -y ffmpeg
else
    echo "FFmpeg já está pronto para uso."
fi

# 2. Criar ambiente virtual Python persistente (opcional, mas recomendado)
if [ ! -d "/data/venv" ]; then
    echo "Criando ambiente virtual Python em /data/venv..."
    python3 -m venv /data/venv
fi

echo "--- Bootstrap finalizado com sucesso ---"
