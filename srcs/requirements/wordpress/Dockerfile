FROM	debian:buster

ARG WORDPRESS_DB_HOST
ARG WORDPRESS_DB_USER
ARG WORDPRESS_DB_PASSWORD
ARG WORDPRESS_DB_NAME


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

# CONFIGURE WORDPRESS WITH DATABASE INFOS
# RUN		cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php \
# &&		sed -i "s/database_name_here/wordpress/" /var/www/html/wordpress/wp-config.php \
# &&		sed -i "s/username_here/bducrocq/" /var/www/html/wordpress/wp-config.php \
# &&		sed -i "s/password_here/4242/" /var/www/html/wordpress/wp-config.php \
# &&		sed -i "s/localhost/mariadb/" /var/www/html/wordpress/wp-config.php

# # CONFIGURE WORDPRESS WITH DATABASE INFOS
# RUN		cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php \
# &&		sed -i "s/database_name_here/$WORDPRESS_DB_NAME/" /var/www/html/wordpress/wp-config.php \
# &&		sed -i "s/username_here/$WORDPRESS_DB_USER/" /var/www/html/wordpress/wp-config.php \
# &&		sed -i "s/password_here/$WORDPRESS_DB_PASSWORD/" /var/www/html/wordpress/wp-config.php \
# &&		sed -i "s/localhost/$WORDPRESS_DB_HOST/" /var/www/html/wordpress/wp-config.php

# COPY ./conf/wp-config.php /var/www/html/wordpress/ 

# PORTS
EXPOSE	9000 3306

# START
COPY	./conf/entrypoint.sh /tmp
ENTRYPOINT	["sh", "/tmp/entrypoint.sh"]