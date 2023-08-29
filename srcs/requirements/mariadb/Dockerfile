FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt-get install mariadb-server -y

COPY ./conf/50-server.conf /etc/mysql/mariadb.conf.d/50-server.conf

COPY conf/config.sh /auto_config.sh

ENTRYPOINT ["bash", "auto_config.sh"]

EXPOSE 3306