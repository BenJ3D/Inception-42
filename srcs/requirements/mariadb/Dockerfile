FROM debian:buster-slim 

# install mariadb
RUN apt update && \
    apt install mariadb-server -y
	
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./conf/createdb.sql /

RUN service mysql start && mysql < createdb.sql && rm -f createdb.sql

EXPOSE 3306

CMD /usr/bin/mysqld_safe