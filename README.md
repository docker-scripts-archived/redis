# Redis in a Container

## Installation

  - First install `ds`: https://github.com/docker-scripts/ds#installation

  - Then get the scripts from github: `ds pull redis`

  - Create a directory for the container: `ds init redis @redis`

  - Go to /var/ds/redis with `cd /var/ds/redis/ `

  - Edit settings if necessary `vim settings.sh`
    - Default Redis port is 6379

  - Build image, create the container and configure it: 
  
```
ds build
ds create
ds config
```

## Test Redis server connection from other container

You can test whether other docker containers can access the Redis server

Example: If you installed docker-scripts wsproxy, start its shell
```
cd /var/ds/wsproxy
ds shell
```

Then inside the container shell:
Install `redis-tools`

```
apt install -y redis-tools
```

After that run `redis-cli -h redis` inside ds shell, then run `ping` inside the `redis-cli`

```
redis root@redis:/host
==> # redis-cli -h redis
redis:6379> ping
PONG
redis:6379> 
```

