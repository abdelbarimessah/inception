FROM debian:bullseye

RUN apt update && apt upgrade -y && apt install -y nginx 

COPY  index.html /var/www/html/

CMD ["nginx", "-g", "daemon off;"]