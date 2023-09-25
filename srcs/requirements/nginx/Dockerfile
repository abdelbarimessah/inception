FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y nginx

RUN apt-get update && apt-get install -y openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/amessah_private_key.key \
    -out /etc/ssl/certs/amessah_self_signed_Certif.crt \
    -subj "/CN=amessah.42.fr"

RUN chmod +x /etc/ssl/private/amessah_private_key.key
RUN chmod +x /etc/ssl/certs/amessah_self_signed_Certif.crt

RUN rm /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]