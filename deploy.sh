#!/usr/bin/env bash

# https://developer.rackspace.com/blog/dev-to-deploy-with-docker-machine-and-compose/
#export OS_USERNAME=RACKSPACE_USERNAME
#export OS_API_KEY=RACKSPACE_API_KEY
#export OS_REGION_NAME=RACKSPACE_REGION_NAME

echo "creating machine"
docker-machine create --driver rackspace --rackspace-flavor-id general1-2 timbre
echo docker-machine ip timbre

echo "securing machine"
docker-machine ssh timbre "apt-get update"
docker-machine ssh timbre "apt-get -y install fail2ban"
docker-machine ssh timbre "ufw default deny"
docker-machine ssh timbre "ufw allow ssh"
docker-machine ssh timbre "ufw allow http"
docker-machine ssh timbre "ufw allow 2376" # Docker
docker-machine ssh timbre "ufw --force enable"

eval "$(docker-machine env timbre)"
echo "building"
docker-compose build
echo "starting up"
docker-compose up -d
