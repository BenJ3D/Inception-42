FROM alpine:3.17.1

RUN apk update && apk add nginx bash

ADD ./conf/default.conf /etc/nginx/conf.d/default.conf
ADD ./conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443
RUN mkdir -p /etc/nginx/ssl && mkdir -p /var/run/nginx

# CMD ["exec /bin/bash"]
# RUN chmod 777 /etc/nginx/ssl/*
# RUN chmod 777 -R /var/www 
# RUN chown -R www-data:www-data /var/www/
CMD	[ "nginx", "-g", "daemon off;" ]