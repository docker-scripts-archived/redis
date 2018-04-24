#!/bin/bash -x

source /host/settings.sh
apt-get update

### install redis while keeping any existing config files unchanged
DEBIAN_FRONTEND=noninteractive apt-get -y install \
	redis-server \
   -o Dpkg::Options::="--force-confdef" \
   -o Dpkg::Options::="--force-confold" \

### allow requests from the network
sed -e 's/^bind/#bind/' -i /etc/redis/redis.conf 

# runs redis server
#redis-server --port $REDIS_PORT & # default at 6379 