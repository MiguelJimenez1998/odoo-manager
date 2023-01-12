wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb

sudo apt install ./wkhtmltox_0.12.6-1.focal_amd64.deb

# Si falla la instalacion con:
#   wkhtmltox : Depends: libssl1.1 but it is not installable
#
# echo "deb http://security.ubuntu.com/ubuntu focal-security main" | sudo tee /etc/apt/sources.list.d/focal-security.list
# sudo apt-get update
# sudo apt-get install libssl1.1