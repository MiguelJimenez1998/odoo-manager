# 1. Create and go to src folder
cd
mkdir src
cd src

# 2. Clone Odoo Communyty V15
git clone -b 15.0 --single-branch https://github.com/odoo/odoo.git

# 3. Install odoo dependencies
pip install -r odoo/requirements.txt

pip install psycopg2-binary

# 4. Create Odoo Symbolic Link
sudo ln -s /home/odoo/src/odoo/odoo-bin /usr/bin/odoo
