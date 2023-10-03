#FROM debian:bullseye
#
#RUN apt update && apt upgrade -y && apt install -y nginx
#
#RUN apt-get update && apt-get install -y openssl
#
## RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
##     -keyout /etc/ssl/private/amessah_private_key.key \
##     -out /etc/ssl/certs/amessah_self_signed_Certif.crt \
##     -subj "/CN=amessah.42.fr"
#RUN mkdir /etc/nginx/ssl
#RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
#       -out /etc/nginx/ssl/amessah.crt \
#       -keyout /etc/nginx/ssl/amessah.key \
#       -subj "/CN=amessah.42.fr"
#
#COPY nginx.conf /etc/nginx/conf.d
#
## RUN chmod +x /etc/ssl/private/amessah_private_key.key
## RUN chmod +x /etc/ssl/certs/amessah_self_signed_Certif.crt
#
#RUN mkdir -p /run/nginx
## RUN rm /etc/nginx/nginx.conf
#
## COPY nginx.conf /etc/nginx/
#
#EXPOSE 443
#
#ENTRYPOINT ["nginx", "-g", "daemon off;"]


FROM debian:bullseye


RUN apt-get update && apt-get install -y nginx openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=MA/ST=KBN/O=42-Network/CN=amessah.42.fr" -keyout /etc/nginx/nginx.key -out /etc/nginx/nginx.crt

COPY nginx.conf /etc/nginx/conf.d/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
