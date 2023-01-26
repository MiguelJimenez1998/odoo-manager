WKHTMLTOPDF_INSTALLER=https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb

wget -O wkhtmltopdf_installer.deb $WKHTMLTOPDF_INSTALLER

sudo apt install ./wkhtmltopdf_installer.deb

rm wkhtmltopdf_installer.deb
 