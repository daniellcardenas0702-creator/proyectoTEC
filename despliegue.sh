#!/usr/bin/env bash
set -euo pipefail

echo ">>> Iniciando automatización del entorno DokuWiki + Prometheus..."

# 1. Detener y limpiar el entorno si ya existe
echo "[-] Limpiando despliegues anteriores..."
docker compose down 2>/dev/null || true

# 2. Levantar el entorno con Docker Compose
echo "[+] Desplegando la infraestructura..."
docker compose up -d

# 3. Validar el estado
echo ">>> Estado de los contenedores:"
sleep 3
docker ps

echo "[OK] Despliegue finalizado exitosamente."
