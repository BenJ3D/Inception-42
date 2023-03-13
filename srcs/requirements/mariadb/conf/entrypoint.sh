# Create db if dont existe
service mysql start && mysql < /tmp/db.sql

# launch db
/usr/bin/mysqld_safe
