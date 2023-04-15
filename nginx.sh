#!/bin/bash

sudo cp -rf nf-app.conf /etc/nginx/sites-available/app
chmod 705 /var/lib/jenkins/workspace/nf-app

sudo ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx has been started"

sudo systemctl status nginx