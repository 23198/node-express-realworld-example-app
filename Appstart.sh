#!/bin/bash
cd /apps
 MONGODB_URI=$(<uri.txt)
# export NODE_ENV=production
# export SECRET=secret
sudo apt-get update -y
sudo apt get install curl -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash 
sudo apt-get install nodejs -y
sudo npm i -g pm2
sudo pm2 start -f ./app.js --env MONGODB_URI
#sudo rm -rf /etc/nginx/sites-available/default
#sudo mv default   /etc/nginx/sites-available/
#sudo systemctl restart nginx
