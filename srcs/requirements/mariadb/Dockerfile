FROM debian:buster-slim 

ARG		MYSQL_ROOT_PASSWORD
ARG		MYSQL_DATABASE
ARG		MYSQL_USER
ARG		MYSQL_PASSWORD

# install mariadb
RUN apt update && \
    apt install mariadb-server -y
	
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN		service mysql start &&		mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;\
		  ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';\
		  GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';\
		  FLUSH PRIVILEGES;"

RUN service mysql start && mysql < createdb.sql && rm -f createdb.sql

EXPOSE 3306

ENTRYPOINT	["mysqld"]