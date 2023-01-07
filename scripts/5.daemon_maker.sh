#cd 
CURRENT_PATH=$(pwd)

# 1. Get parameters
PYTHON_ENV=$CURRENT_PATH/miniconda/envs/odoo/bin
SERVICE_NAME=$1

# 2. Replace params in config file
sed 's|<python_env>|'$PYTHON_ENV'|' templates/init > $SERVICE_NAME
sed -i 's/<service_name>/'$SERVICE_NAME'/' $SERVICE_NAME

# 3. Sort as real config
sudo cp $SERVICE_NAME /etc/init.d
sudo chmod 755 /etc/init.d/$SERVICE_NAME
rm $SERVICE_NAME

# 4. Setup log file
sudo mkdir /var/log/odoo
sudo touch /var/log/odoo/$SERVICE_NAME.log
sudo chown odoo:root /var/log/odoo/$SERVICE_NAME.log

# 5. Add service
sudo update-rc.d $SERVICE_NAME defaults
