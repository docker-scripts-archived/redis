APP=redis

IMAGE=redis
CONTAINER=redis

### Uncomment PORTS if you want this redis container to be accessed from
### the internet. In this case make sure that PASS is uncommented too.
#PORTS="6379:6379"

### Use something like `pwgen 32` to generate a strong password.
### Since Redis is pretty fast an outside user can try up to 150k
### passwords per second against a good box. This means that you should
### use a very strong password otherwise it will be very easy to break.
PASS='ohhebahQuahghaingeef1ifeitah5yei'

### Gmail account for notifications. This will be used by ssmtp.
### You need to create an application specific password for your account:
### https://www.lifewire.com/get-a-password-to-access-gmail-by-pop-imap-2-1171882
GMAIL_ADDRESS=
GMAIL_PASSWD=
