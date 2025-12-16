RUN apt-get update && apt-get install -y cron curl
COPY firefly-cron /etc/cron.d/firefly-cron
RUN chmod 0644 /etc/cron.d/firefly-cron && crontab /etc/cron.d/firefly-cron
CMD cron && php-fpm
