FROM debian:bullseye

RUN apt-get -y update && apt-get -y upgrade && apt-get install mariadb-server -y

COPY config.sh .

RUN chmod +x config.sh

EXPOSE 3306

ENTRYPOINT ["./config.sh"]