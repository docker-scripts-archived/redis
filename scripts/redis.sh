#!/bin/bash -x

### install redis while keeping any existing config files unchanged
apt update && apt -y upgrade
export DEBIAN_FRONTEND=noninteractive
apt -y install redis-server \
    -o Dpkg::Options::="--force-confdef" \
    -o Dpkg::Options::="--force-confold"

### allow requests from the network
sed -i /etc/redis/redis.conf \
    -e 's/^bind/#bind/'
