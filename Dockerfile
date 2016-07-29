FROM nginx:latest


RUN echo 'deb http://ftp.debian.org/debian jessie-backports main'>>/etc/apt/sources.list
RUN apt-get update
RUN apt-get --yes install cron
RUN apt-get --yes install certbot -t jessie-backports
RUN  openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048

COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d /etc/nginx/conf.d
COPY run.sh /bin/run.sh
COPY certbot.cron /etc/cron.d/certbot

CMD ["/bin/run.sh"]
