# Redis in a Container

## Installation

  - First install `ds`: https://github.com/docker-scripts/ds#installation

  - Then get the scripts from github: `ds pull redis`

  - Create a directory for the container: `ds init redis @redis`

  - Edit the settings if necessary: `cd /var/ds/redis/ && vim settings.sh`

  - Build image, create the container and configure it: `ds make`
