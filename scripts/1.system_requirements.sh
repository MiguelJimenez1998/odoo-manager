# 1. Focal-security 
echo "deb http://security.ubuntu.com/ubuntu focal-security main" | sudo tee /etc/apt/sources.list.d/focal-security.list

# 1. Update system
echo '===== Update system'
sudo apt-get update

# 2. Install ngnix
echo '===== Installing nginx'
sudo apt install nginx

# 3. GCC
sudo apt install build-essential

# 4. Python tools
sudo apt-get install libsasl2-dev libldap2-dev libssl-dev

# 5. Postgres
sudo apt install postgresql postgresql-contrib

# 6. Wkhtmltopdf dependencies
sudo apt-get install libssl1.1