#!/bin/bash

# navigate to app folder
cd /server

# install node and npm
curl -sL https://rpm.nodesource.com/setup_14.x | sudo -E bash -
yum -y install nodejs npm