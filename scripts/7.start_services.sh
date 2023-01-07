SERVICE_NAME=$1

# 1. Star odoo service
sudo systemctl restart $1.service

# 2. Restar nginx service
sudo systemctl restart nginx.service
