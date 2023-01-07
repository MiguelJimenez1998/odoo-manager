cd 

# 1. Get parameters
echo '===== Enter odoo service domain'
read DOMAIN

SERVICE_NAME=$1

# 2. Replace params in config file
sed 's/<service_name>/'$SERVICE_NAME'/' templates/nginx > $SERVICE_NAME
sed -i 's/<domain>/'$DOMAIN'/' $SERVICE_NAME

# 3. Sort as real config
sudo cp $SERVICE_NAME /etc/nginx/sites-available
rm $SERVICE_NAME
sudo ln -s /etc/nginx/sites-available/$SERVICE_NAME /etc/nginx/sites-enabled/$SERVICE_NAME 
