FROM debian:bullseye

RUN apt-get update && apt-get install -y nginx openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=MA/ST=KBN/O=42-Network/CN=amessah.42.fr" -keyout /etc/nginx/nginx.key -out /etc/nginx/nginx.crt

COPY nginx.conf /etc/nginx/conf.d/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
