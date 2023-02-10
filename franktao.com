server {
    listen 80;
    listen [::]:80;

    server_name franktao.com www.franktao.com kaneki.dev www.kaneki.dev;
    
    location / {
        try_files $uri $uri/ /index.html;
    }

    root /var/www/website/dist;
    index index.html;
}
