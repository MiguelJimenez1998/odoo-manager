MINICONDA_INSTALLER=https://repo.anaconda.com/miniconda/Miniconda3-py310_22.11.1-1-Linux-x86_64.sh

# 1. Download and install miniconda
cd
wget -O miniconda_installer $MINICONDA_INSTALLER
chmod +x miniconda_installer
bash miniconda_installer

# 2. Set python envs
ORIGINAL_PATH=$PATH
CURRENT_PATH=$(pwd)
PATH=$CURRENT_PATH/miniconda3/bin:$PATH
pip --version

conda create -n odoo python=3.7
PATH=$CURRENT_PATH/miniconda3/envs/odoo/bin:$ORIGINAL_PATH
echo $PATH

pip --version

# 3. remove miniconda installer
rm miniconda_installer

# 4. crear arcivos para activar los entornos
echo 'export PATH=/home/odoo/miniconda3/bin:$PATH' > startCondaBase.sh
echo 'export PATH=/home/odoo/miniconda3/envs/odoo/bin:$PATH' > startCondaOdoo.sh
