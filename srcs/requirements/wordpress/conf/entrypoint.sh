#!/bin/bash

# if  [ ! -f /var/www/wordpress/wp-config.php ]
# then 
#     wp core --allow-root download --locale=fr_FR --force 
#     sleep 2;

#     while  [ ! -f /var/www/wordpress/wp-config.php ]; do   
#         wp core config --allow-root --dbname=wordpress --dbuser=$MARIADB_USER --dbpass=$MARIADB_PWD --dbhost=mariadb:3306
#     done 

# WORDPRESS SITE SETUP
cd /var/www/html/wordpress
if ! wp core is-installed --allow-root
then
	# cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php
	wp core install	--allow-root \
					--dbname=$WORDPRESS_DB_NAME \
					--dbuser=$WORDPRESS_DB_USER \
					--dbpass=$WORDPRESS_DB_PASSWORD \
					--dbhost=$WORDPRESS_DB_HOST \
					--url=$DOMAIN_NAME \
					--title="$WP_SITE_TITLE" \
					--admin_user=$WP_ADMIN \
					--admin_password=$WP_ADMIN_PASSWORD \
					--admin_email=$WP_ADMIN_EMAIL

fi

# LAUNCH PHP-FPM
php-fpm7.3 -F