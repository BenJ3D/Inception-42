# Create db if dont existe
if [ ! -d "/var/lib/mysql/wordpress" ]
then 

	sed -i "s/\$WORDPRESS_DB_NAME/$WORDPRESS_DB_NAME/g" /db.sql
	sed -i "s/\$WORDPRESS_DB_USER/'$WORDPRESS_DB_USER'/g" /db.sql
	sed -i "s/\$WORDPRESS_DB_PASSWORD/'$WORDPRESS_DB_PASSWORD'/g" /db.sql
	sed -i "s/\$MARIADB_ROOT_PASSWD/'$MARIADB_ROOT_PASSWD'/g" /db.sql

	service mysql start && mysql < db.sql
fi
# launch db
/usr/bin/mysqld_safe
