FROM debian:bullseye

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y mariadb-server mariadb-client


RUN mkdir -p /var/run/mysqld \
    && chown -R mysql:mysql /var/run/mysqld \
    && chmod 777 /var/run/mysqld

COPY config.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/config.sh

EXPOSE 3306

ENTRYPOINT [ "/usr/local/bin/config.sh" ]

CMD ["mysqld", "--bind-address=0.0.0.0"]
