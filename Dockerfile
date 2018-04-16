FROM ubuntu
ENV container docker
# Don't start any optional services except for the few we need.


#RUN apt-get update; apt-get -y upgrade
#RUN apt-get -y install \
#        rsyslog logrotate ssmtp logwatch \
#        cron apache2 wget vim openssh-server net-tools

# install the Redis server. 
RUN apt-get update && apt-get install -y redis-server

### install certbot (for getting ssl certs with letsencrypt)
#RUN wget https://dl.eff.org/certbot-auto; \
#    chmod +x certbot-auto ; \
#    mv certbot-auto /usr/local/bin/certbot ; \
#    certbot --os-packages-only --non-interactive ; \
#    certbot --version

# Expose default port
EXPOSE 6379
# Set the default command
ENTRYPOINT ["/usr/bin/redis-server"]