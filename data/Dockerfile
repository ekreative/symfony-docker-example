FROM busybox

RUN mkdir -p /var/www/app/cache
RUN chown -R 1000 /var/www/app/cache
RUN mkdir -p /var/www/app/logs
RUN touch /var/www/app/logs/prod.log
RUN chown -R 1000 /var/www/app/logs

CMD tail -f /var/www/logs/prod.log
