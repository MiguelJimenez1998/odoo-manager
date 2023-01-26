cd
CURRENT_PATH=$(pwd)

# 1. Get parameters
echo '===== Enter odoo ADMIN_PASSWD'
read ADMIN_PASSWD

echo '===== Enter odoo DB_HOST'
read DB_HOST

echo '===== Enter odoo DB_PASSWORD'
read DB_PASSWORD


ADDONS_PATH=$CURRENT_PATH/src/odoo/addons
SERVICE_NAME=$1

# 2. Replace params in config file
sed 's|<addons_path>|'$ADDONS_PATH'|' templates/config.conf > $SERVICE_NAME
sed -i 's/<admin_passwd>/'$ADMIN_PASSWD'/' $SERVICE_NAME
sed -i 's/<db_host>/'$DB_HOST'/' $SERVICE_NAME
sed -i 's/<db_name>/'$SERVICE_NAME'/' $SERVICE_NAME
sed -i 's/<db_password>/'$DB_PASSWORD'/' $SERVICE_NAME

# 3. Sort as real config
sudo mkdir /etc/odoo
sudo cp $SERVICE_NAME /etc/odoo/$SERVICE_NAME.conf
rm $SERVICE_NAME
