# Create db if dont existe
if [ ! -d "/var/lib/mysql/wordpress" ]
then 
	service mysql start && mysql < /tmp/db.sql
fi
# launch db
/usr/bin/mysqld_safe
