FROM debian:bullseye

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y mariadb-server

RUN mkdir -p /var/run/mysqld \
    && chmod 777 /var/run/mysqld

COPY config.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/config.sh

EXPOSE 3306

CMD [ "/usr/local/bin/config.sh" ]