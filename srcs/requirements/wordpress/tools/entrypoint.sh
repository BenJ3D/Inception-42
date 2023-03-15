#!/bin/bash

# WORDPRESS SITE SETUP
# cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php \
# &&		sed -i "s/database_name_here/$WORDPRESS_DB_NAME/" /var/www/html/wordpress/wp-config.php \
# &&		sed -i "s/username_here/$WORDPRESS_DB_USER/" /var/www/html/wordpress/wp-config.php \
# &&		sed -i "s/password_here/$WORDPRESS_DB_PASSWORD/" /var/www/html/wordpress/wp-config.php \
# &&		sed -i "s/localhost/$WORDPRESS_DB_HOST/" /var/www/html/wordpress/wp-config.php

if ! wp core is-installed --allow-root
then
cd /var/www/html/wordpress/
wp core install	--allow-root \
				--url=$DOMAIN_NAME \
				--title="$WP_SITE_TITLE" \
				--admin_user=$WP_ADMIN \
				--admin_password=$WP_ADMIN_PASSWORD \
				--admin_email=$WP_ADMIN_EMAIL
cd /var/www/html/wordpress/
wp  user create --allow-root $WP_USER $WP_USER_EMAIL \
				--user_pass=$WP_USER_PWD --role=editor
wp theme install --allow-root https://downloads.wordpress.org/theme/twentyseventeen.3.1.zip --activate
fi
# LAUNCH PHP-FPM
php-fpm7.3 -F		