FROM debian:buster

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -yqq update

RUN apt-get -yqq install nginx openssl

RUN mkdir -p /etc/nginx/ssl \
&& openssl req -x509 -nodes -days 365 -subj "/C=FR/ST=LY/O=42, Inc./CN=bducrocq.42.fr" \
-newkey rsa:2048 -keyout /etc/ssl/private/bducrocq.42.fr.key -out /etc/ssl/certs/bducrocq.42.fr.crt;

ADD ./conf/bducrocq.42.fr.conf /etc/nginx/sites-available/bducrocq.42.fr.conf
ADD ./conf/index.html	/var/www/bducrocq.42.fr/

RUN		ln -s /etc/nginx/sites-available/bducrocq.42.fr.conf /etc/nginx/sites-enabled/bducrocq.42.fr.conf

EXPOSE 443 9000
ENTRYPOINT	[ "nginx", "-g", "daemon off;" ]
