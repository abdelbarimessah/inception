FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade && apt-get install nginx -y && apt-get install openssl -y

RUN mkdir -p /etc/nginx/ssl

# RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=login.42.fr/UID=login"
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=KH/O=1337/CN=127.0.0.1"

RUN mkdir -p /var/run/nginx

COPY ./conf/default /etc/nginx/sites-enabled/default

RUN chmod 755 /var/www/html

RUN chown -R www-data:www-data /var/www/html 

CMD ["nginx", "-g", "daemon off;"]