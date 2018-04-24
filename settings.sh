APP=redis

#VERSION=10.2    # 10.0 / 10.1 / 10.2 / 10.3

IMAGE=redis
CONTAINER=redis
REDIS_PORT=6379
PORTS=$REDIS_PORT:$REDIS_PORT

### Gmail account for notifications.
### Make sure to enable less-secure-apps:
### https://support.google.com/accounts/answer/6010255?hl=en
GMAIL_ADDRESS=
GMAIL_PASSWD=
