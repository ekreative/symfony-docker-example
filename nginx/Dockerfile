FROM nginx:1

RUN usermod -u 1000 www-data

ENV NGINX_VHOST /etc/nginx/conf.d/default.conf

ADD vhost.conf $NGINX_VHOST
ADD start.sh /start.sh

ENTRYPOINT ["/start.sh"]
CMD ["/usr/sbin/nginx", "-g", "\"daemon off;\""]
