FROM	debian:buster

# UPDATE & UPGRADE THE SYSTEM
RUN		apt-get update -y \
&&		apt-get upgrade -y \
&&		apt-get install -y wget

# INSTALL & CONFIGURE PHP
RUN		apt-get install -y php-fpm php-mysql \
&&		service php7.3-fpm start && service php7.3-fpm stop \
&&		sed -i "s/\/run\/php\/php7.3-fpm.sock/wordpress:9000/" /etc/php/7.3/fpm/pool.d/www.conf

# INSTALL WORDPRESS
ADD		https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar /usr/local/bin/wp
RUN		chmod +x /usr/local/bin/wp \
&&		mkdir -p /var/www/html/wordpress \
&&		cd /var/www/html/wordpress \
&&		wp core download --allow-root

# PORTS
EXPOSE	9000 3306

# START
COPY	./conf/entrypoint.sh /tmp
ENTRYPOINT	["sh", "/tmp/entrypoint.sh"]