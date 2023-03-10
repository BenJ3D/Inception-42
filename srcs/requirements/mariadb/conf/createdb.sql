-- CREATE DATABASE IF NOT EXISTS ${DB_NAME}; \
CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}'; \
GRANT ALL ON *.* TO '${MYSQL_USER}'@'%'; \
FLUSH PRIVILEGES; \
ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';

--# Start MariaDB service
-- service mysql start

-- # Wait for MariaDB to start
-- until mysqladmin ping --silent; do
--     echo "Waiting for MariaDB to start..."
--     sleep 1
-- done

-- # Create database and user
-- mysql -e "CREATE DATABASE mydb;"
-- mysql -e "CREATE USER 'myuser'@'%' IDENTIFIED BY 'mypassword';"
-- mysql -e "GRANT ALL PRIVILEGES ON mydb.* TO 'myuser'@'%';"
-- mysql -e "FLUSH PRIVILEGES;"

-- # Stop MariaDB service
-- service mysql stop