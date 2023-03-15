FROM	debian:buster

ARG WORDPRESS_DB_NAME
ARG WORDPRESS_DB_USER
ARG WORDPRESS_DB_PASSWORD
ARG MARIADB_ROOT_PASSWD

# UPDATE & UPGRADE THE SYSTEM
RUN		apt-get update -y \
&&		apt upgrade -y

# INSTALL MARIADB
RUN		apt-get install -y mariadb-server

# CREATE THE WORDRPRESS DATABASE
RUN		service mysql start \
&&	mysql -e "CREATE DATABASE IF NOT EXISTS $WORDPRESS_DB_NAME; \
		  ALTER USER 'root'@'localhost' IDENTIFIED BY '$MARIADB_ROOT_PASSWD'; \
		  GRANT ALL PRIVILEGES ON $WORDPRESS_DB_NAME.* TO '$WORDPRESS_DB_USER'@'%' IDENTIFIED BY '$WORDPRESS_DB_PASSWORD'; \
		  FLUSH PRIVILEGES;"

# RUN		service mysql start \
# &&	mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE; \
# 		  ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'; \
# 		  GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD'; \
# 		  FLUSH PRIVILEGES;"



# PORTS
EXPOSE	3306

# START
ENTRYPOINT	["mysqld", "--bind-address=0.0.0.0"]


# FROM debian:buster

# EXPOSE 3306

# ARG WORDPRESS_DB_NAME
# ARG WORDPRESS_DB_USER
# ARG WORDPRESS_DB_PASSWORD
# ARG MARIADB_ROOT_PASSWD

# RUN apt-get update -y && apt-get install -y mariadb-server

# RUN mkdir -p /var/run/mysqld \
# 	&& chown -R mysql:mysql /var/run/mysqld 

# RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf 
# COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
# COPY	./conf/db.sql ./
# COPY	./tools/entrypoint.sh ./

# # START
# ENTRYPOINT	["sh", "./entrypoint.sh"]

# RUN	echo "CREATE DATABASE IF NOT EXISTS wordpress; \
# 	CREATE USER 'bducrocq'@'%' IDENTIFIED BY '4242'; \
# 	GRANT ALL ON wordpress.* TO 'bducrocq'@'%'; \
# 	FLUSH PRIVILEGES; \
# 	ALTER USER 'root'@'localhost' IDENTIFIED BY '4242';" > db.sql
# RUN	service mysql start && mysql < db.sql

# CMD ["/usr/bin/mysqld_safe"]