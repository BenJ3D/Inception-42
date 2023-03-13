FROM debian:buster

EXPOSE 3306

ARG DB_NAME
ARG MYSQL_USER
ARG MYSQL_PASSWORD
ARG MYSQL_ROOT_PASSWORD

RUN apt-get update -y && apt-get install -y mariadb-server

RUN mkdir -p /var/run/mysqld \
	&& chown -R mysql:mysql /var/run/mysqld 

RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf 
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY	./conf/db.sql ./
COPY	./conf/entrypoint.sh ./

# START
ENTRYPOINT	["sh", "./entrypoint.sh"]

# RUN	echo "CREATE DATABASE IF NOT EXISTS wordpress; \
# 	CREATE USER 'bducrocq'@'%' IDENTIFIED BY '4242'; \
# 	GRANT ALL ON wordpress.* TO 'bducrocq'@'%'; \
# 	FLUSH PRIVILEGES; \
# 	ALTER USER 'root'@'localhost' IDENTIFIED BY '4242';" > db.sql
# RUN	service mysql start && mysql < db.sql

# CMD ["/usr/bin/mysqld_safe"]