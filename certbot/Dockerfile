FROM certbot/certbot:v2.5.0
RUN apk add --no-cache cron docker-cli
COPY renew_script.sh /etc/periodic/daily/certbot-renew
RUN chmod +x /etc/periodic/daily/certbot-renew
CMD ["crond", "-f", "-L", "/dev/stdout"]