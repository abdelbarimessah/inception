#!/bin/bash

sleep 10

sed -i -e 's/listen =.*/listen = 9000/' /etc/php/7.4/fpm/pool.d/www.conf
mkdir -p  /var/www/html/wordpress
cd /var/www/html/wordpress

wp core download --allow-root --path=/var/www/html/wordpress

cat wp-config-sample.php > wp-config.php

wp config set DB_NAME $DB_NAME --allow-root --path=/var/www/html/wordpress
wp config set DB_USER $DB_USER --allow-root --path=/var/www/html/wordpress
wp config set DB_PASSWORD $DB_PASSWORD --allow-root --path=/var/www/html/wordpress
wp config set DB_HOST mariadb --allow-root --path=/var/www/html/wordpress

wp core install --url=$URL --title=$MY_INCEPTION --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASS --admin_email=$ADMIN_EMAIL --skip-email --allow-root --path=/var/www/html/wordpress

wp user create $MY_USER $MY_EMAIL --role=editor --user_pass=$MY_PASS --allow-root --path=/var/www/html/wordpress

mkdir -p /run/php

php-fpm7.4 -F