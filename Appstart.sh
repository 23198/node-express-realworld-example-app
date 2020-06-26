#!/bin/bash
cd /apps
#sudo source /apps/uri.txt
export MONGODB_URI="$( cat /apps/uri.txt )"
#sudo chmod +x script.sh
#source script.sh
# export NODE_ENV=production
# export SECRET=secret
#123
sudo apt-get update -y
sudo apt get install curl -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash 
sudo apt-get install nodejs -y
sudo npm i -g pm2
sudo pm2 stop all
sudo pm2 start -f ./app.js 
#sudo rm -rf /etc/nginx/sites-available/default
#sudo mv default   /etc/nginx/sites-available/
#sudo systemctl restart nginx
