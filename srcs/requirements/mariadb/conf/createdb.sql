-- Créer un utilisateur avec des privilèges d'administrateur
CREATE USER 'ben'@'%' IDENTIFIED BY '1313';
GRANT ALL PRIVILEGES ON *.* TO 'ben'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY '1313';

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