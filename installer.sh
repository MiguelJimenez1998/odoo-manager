#!/bin/bash

set -e
set -u

# 1. Set service name
echo 'Enter service name'
read SERVICE_NAME

# 2. Create Odoo user
sudo useradd -m -s /bin/bash -G sudo odoo
echo 'odoo ALL=(ALL) NOPASSWD:ALL' | sudo tee /etc/sudoers.d/odoo

# 3. Odoo task
sudo cp -r templates /home/odoo
sudo cp -r scripts /home/odoo
sudo chown odoo:odoo /home/odoo/templates
sudo chown odoo:odoo /home/odoo/scripts

ls scripts | while read script 
do
    sudo su odoo -c "/home/odoo/scripts/${script} ${SERVICE_NAME}" 
done

echo '===== Your odoo service is ready'
