# Create db if dont existe
# if [ ! -d "/var/lib/mysql/wordpress" ]
# then 

echo "HELLO ENTRYPOINT MARIADB"
cat db.sql

service mysql start && mysql < db.sql
# fi
# launch db
/usr/bin/mysqld_safe
