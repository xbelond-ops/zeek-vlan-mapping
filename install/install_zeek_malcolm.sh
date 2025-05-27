#!/bin/bash
apt update && apt install -y docker.io docker-compose git
git clone https://github.com/idaholab/Malcolm.git /opt/malcolm
cd /opt/malcolm
./scripts/install.py --configure
docker-compose up -d
echo "Accès à l'interface : https://<IP>:443 (admin:changeme)"
