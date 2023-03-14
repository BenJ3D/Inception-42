#!/bin/bash

# WORDPRESS SITE SETUP
# cd /var/www/html/wordpress
# if ! wp core is-installed --allow-root
# then

# echo $DOMAIN_NAME
# echo $WP_SITE_TITLE

# wp core install	--allow-root \
# 				--url=$DOMAIN_NAME \
# 				--title=$WP_SITE_TITLE \
# 				--admin_user=$WP_ADMIN \
# 				--admin_password=$WP_ADMIN_PASSWORD \
# 				--admin_email=$WP_ADMIN_EMAIL

# fi


if  [ ! -f /var/www/wordpress/wp-config.php ]
then 
    wp core --allow-root download --locale=fr_FR --force 
    sleep 2;

    while  [ ! -f /var/www/wordpress/wp-config.php ]; do   
        wp core config --allow-root --dbname=wordpress --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD --dbhost=mariadb:3306
    done 


    wp core install --allow-root --url=$DOMAIN_NAME --title=$WP_SITE_TITLE --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASSWORD  --admin_email=$WP_ADMIN_EMAIL --path='/var/www/wordpress';
    wp  user create --allow-root $WP_USER $WP_USER_EMAIL --user_pass=$WP_ADMIN_PWD --role=author
    
    wp theme install --allow-root dark-mode --activate    
    chmod 666 wp-config.php 
    echo set config wp-config.php
    # add conf to wp-config for redis
    # sed -i "40i define( 'WP_CACHE', true );" wp-config.php
    # sed -i "41i define( 'WP_REDIS_HOST', 'redis' );" wp-config.php
    # sed -i "42i define( 'WP_CACHE_PORT', 6379 );" wp-config.php
    # sed -i "43i define( 'WP_CACHE_KEY_SALT', 'jmilhas.42.fr' );" wp-config.php
    # sed -i "44i define( 'WP_REDIS_TIMEOUT', 1 );"               wp-config.php
    # sed -i "45i define( 'WP_REDIS_READ_TIMEOUT', 1 );"          wp-config.php
    # sed -i "46i define( 'WP_REDIS_DATABASE', 0 );\n"            wp-config.php
    
    # wp plugin install redis-cache --activate --allow-root
    # wp plugin update --all	
    # wp redis enable --allow-root
fi 

# LAUNCH PHP-FPM
php-fpm7.3 -F