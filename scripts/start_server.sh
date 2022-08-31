#!/bin/bash

# navigate to app folder
cd server

# Set env variables
source /etc/profile

# initial startup by running react-script "start", name process "cra_starter"
# --watch watches and restarts if files change
pm2 start src/index.js --name "node_express_starter" --watch

# auto restart server if shut down
pm2 startup

# freeze process list for automatic respawn
pm2 save

# restart all processes - necessary to do this again?
pm2 restart all