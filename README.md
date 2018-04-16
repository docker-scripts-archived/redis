redis

Installation
------------

 + First install `ds` (docker scripts):
   https://github.com/docker-scripts/ds#installation

 + Then get redis from github: `ds pull redis`

 + Init a container directory for redis: `ds init redis @redis`

 + Initialize and fix the settings:
   ```
   cd /var/ds/redis
   vim settings.sh
   ds info
   ```

 + Build image, create the container and configure it:
   ```
   ds build
   ds create
   ds config
   ```


Usage
-----

 + Create the containers of each webserver using commands like this:
 to run
   ```
   docker run --name redis_instance -t redis-server
   ```

   redis is available at port 6379


 + To stop

   ```
   docker stop redis_instance
   ```