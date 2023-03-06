FROM debian:buster

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -yqq update
# RUN sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

RUN apt-get -yqq install -y nginx openssl

RUN openssl req -x509 -nodes -days 365 -subj "/C=FR/ST=LY/O=42, Inc./CN=localhost" \
-newkey rsa:2048 -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt;

ADD ./conf/default /etc/nginx/sites-available/
ADD ./conf/index.html	/var/www/localhost/

CMD	[ "nginx", "-g", "daemon off;" ]
EXPOSE 443

# CMD	[ "bash" ]
# RUN  apt-get update
# RUN  apt install curl gnupg2 ca-certificates lsb-release debian-archive-keyring -y

# RUN curl https://nginx.org/keys/nginx_signing.key | gpg --dearmor \
#     | tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null

# RUN echo "deb [signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] \
# http://nginx.org/packages/mainline/debian `lsb_release -cs` nginx" \
#     | tee /etc/apt/sources.list.d/nginx.list

# RUN echo -e "Package: *\nPin: origin nginx.org\nPin: release o=nginx\nPin-Priority: 900\n" \
#     | tee /etc/apt/preferences.d/99nginx

# RUN apt update && apt install nginx -y


# CMD	[ "nginx", "-g", "daemon off;" ]



# FROM alpine:3.17.1

# https://nginx.org/en/linux_packages.html
# RUN apk add openssl curl ca-certificates
# RUN printf "%s%s%s%s\n" \
#     "@nginx " \
#     "http://nginx.org/packages/alpine/v" \
#     `egrep -o '^[0-9]+\.[0-9]+' /etc/alpine-release` \
#     "/main" \
#     | tee -a /etc/apk/repositories

# RUN curl -o /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub

# RUN mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/

# RUN apk add nginx

# # RUN apk add nginx-module-image-filter@nginx nginx-module-njs@nginx


# ADD ./conf/default.conf /etc/nginx/http.d/default.conf
# ADD ./conf/nginx.conf /etc/nginx/nginx.conf

# EXPOSE 443
# RUN mkdir -p /etc/nginx/ssl && mkdir -p /var/run/nginx

# CMD ["exec /bin/bash"]
# RUN chmod 777 /etc/nginx/ssl/*
# RUN chmod 777 -R /var/www 
# RUN chown -R www-data:www-data /var/www/
# CMD	[ "nginx", "-g", "daemon off;" ]
