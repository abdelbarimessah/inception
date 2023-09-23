FROM debian:bullseye

RUN apt-get -y update && apt-get -y upgrade && apt-get install nginx -y && apt-get install openssl -y

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/amessah_private_key.key \
    -out /etc/ssl/certs/amessah_self_signed_Certif.crt \
    -subj "/CN=amessah.42.fr"

RUN chmod +x /etc/ssl/private/amessah_private_key.key

RUN chmod +x /etc/ssl/certs/amessah_self_signed_certif.crt


RUN rm /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
