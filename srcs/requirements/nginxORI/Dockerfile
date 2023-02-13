FROM alpine:3.17.1

# https://nginx.org/en/linux_packages.html
RUN apk add openssl curl ca-certificates
# RUN printf "%s%s%s%s\n" \
#     "@nginx " \
#     "http://nginx.org/packages/alpine/v" \
#     `egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release` \
#     "/main" \
#     | tee -a /etc/apk/repositories

# RUN curl -o /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub

# RUN mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/

RUN apk add nginx

# RUN apk add nginx-module-image-filter@nginx nginx-module-njs@nginx


ADD ./conf/default.conf /etc/nginx/http.d/default.conf
ADD ./conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443
# RUN mkdir -p /etc/nginx/ssl && mkdir -p /var/run/nginx

# CMD ["exec /bin/bash"]
# RUN chmod 777 /etc/nginx/ssl/*
# RUN chmod 777 -R /var/www 
# RUN chown -R www-data:www-data /var/www/
CMD	[ "nginx", "-g", "daemon off;" ]