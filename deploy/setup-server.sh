#!/usr/bin/env bash
# One-time server bootstrap for the Arbitriologia deployment pipeline.
# Targets Ubuntu/Debian. Run as root or with sudo.
#
# Usage:
#   sudo ./setup-server.sh <your-domain.com> [certbot-email]
#
# After this script finishes:
#   1. Generate an SSH key pair locally (ssh-keygen), then add the PUBLIC key
#      to /home/deploy/.ssh/authorized_keys on this server.
#   2. Add GitHub repo secrets: SERVER_HOST (IP), SERVER_USER (deploy),
#      SERVER_SSH_KEY (the PRIVATE key contents).
#   3. Push to main -> GitHub Actions builds + deploys automatically.

set -euo pipefail

DOMAIN="${1:-arbitriologia.example.com}"
EMAIL="${2:-}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ "$(id -u)" -ne 0 ]; then
  echo "Run as root (sudo)." >&2
  exit 1
fi

echo "==> Installing Docker"
curl -fsSL https://get.docker.com | sh
systemctl enable --now docker

echo "==> Creating deploy user"
if ! id -u deploy &>/dev/null; then
  useradd -m -s /bin/bash deploy
fi
usermod -aG docker deploy

echo "==> Preparing app directory"
mkdir -p /opt/arbitriologia
install -m 0644 docker-compose.yml /opt/arbitriologia/docker-compose.yml
chown -R deploy:deploy /opt/arbitriologia

echo "==> Installing nginx + certbot"
apt-get update -qq
apt-get install -y -qq nginx python3-certbot-nginx curl

echo "==> Writing nginx site config for $DOMAIN"
sed "s/__DOMAIN__/$DOMAIN/g" "$SCRIPT_DIR/nginx-arbitriologia.conf" > /etc/nginx/sites-available/arbitriologia
ln -sf /etc/nginx/sites-available/arbitriologia /etc/nginx/sites-enabled/arbitriologia
rm -f /etc/nginx/sites-enabled/default
nginx -t
systemctl enable --now nginx
systemctl reload nginx

echo "==> Provisioning HTTPS (Let's Encrypt)"
if [ -n "$EMAIL" ]; then
  certbot --nginx -d "$DOMAIN" -m "$EMAIL" --agree-tos --redirect --non-interactive
else
  certbot --nginx -d "$DOMAIN" --register-unsafely-without-email --agree-tos --redirect --non-interactive
fi
# certbot.timer (installed with the package) auto-renews certificates.

mkdir -p /home/deploy/.ssh
chmod 700 /home/deploy/.ssh
touch /home/deploy/.ssh/authorized_keys
chmod 600 /home/deploy/.ssh/authorized_keys
chown -R deploy:deploy /home/deploy/.ssh

echo
echo "Server ready."
echo "Next: add your public key to /home/deploy/.ssh/authorized_keys, then set the"
echo "GitHub secrets (SERVER_HOST, SERVER_USER=deploy, SERVER_SSH_KEY)."