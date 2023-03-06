FROM debian:buster-slim 

# install mariadb
RUN apt update && \
    apt install mariadb-client -y && \
    apt install mariadb-server -y && \
    apt install procps -y

RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
# copy entrypoint and config of mysql
# COPY ./config/50-server.cnf /etc/mysql/mariadb.conf.d/
# COPY ./scripts/entrypoint.sh ./

EXPOSE 3306

ENTRYPOINT [ "bash", "./entrypoint.sh" ]				