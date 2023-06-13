sudo echo "Root access granted"

if ! command -v npm &> /dev/null
then
    echo "npm not found. Exiting."
    exit
fi

# Download and build site
cd /var/www
sudo git clone https://github.com/onyasumi/website.git
sudo chown -R kaneki website
cd website
npm install
npm run build

# Set up nginx
sudo cp franktao.com /etc/nginx/sites-available
sudo ln -sf /etc/nginx/sites-available/franktao.com /etc/nginx/sites-enabled/franktao.com
sudo systemctl restart nginx

if ! command -v <the_command> &> /dev/null
then
    echo "Certbot not found. SSL certificates will not be installed."
    exit
fi

# Run certbot
sudo certbot --nginx -n -d franktao.com,www.franktao.com,kaneki.dev,www.kaneki.dev --agree-tos -m spam@kaneki.dev
sudo systemctl restart nginx
