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
		cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php \
&&		sed -i "s/database_name_here/$WORDPRESS_DB_NAME/" /var/www/html/wordpress/wp-config.php \
&&		sed -i "s/username_here/$WORDPRESS_DB_USER/" /var/www/html/wordpress/wp-config.php \
&&		sed -i "s/password_here/$WORDPRESS_DB_PASSWORD/" /var/www/html/wordpress/wp-config.php \
&&		sed -i "s/localhost/$WORDPRESS_DB_HOST/" /var/www/html/wordpress/wp-config.php

	
	wp core install	--allow-root \
					--url=$DOMAIN_NAME \
					--title="$WP_SITE_TITLE" \
					--admin_user=$WP_ADMIN \
					--admin_password=$WP_ADMIN_PASSWORD \
					--admin_email=$WP_ADMIN_EMAIL

fi

# LAUNCH PHP-FPM
php-fpm7.3 -F