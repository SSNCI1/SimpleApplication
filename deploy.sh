#!/bin/bash
sudo apt update && sudo apt install nodejs npm
# Install pm2 which is a production process manager for Node.js with a built-in load balancer.
sudo npm install -g pm2
# stop any instance of our application running currently 
pm2 stop simple_app
# change directory into folder where applicaion is downloaded
cd SimpleApplication/
# Install application dependencies
npm install
# Start the application with the process name simple_app using pm2
pm2 start ./bin/www --name simple_app