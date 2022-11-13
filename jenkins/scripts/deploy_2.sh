#!/usr/bin/env sh

set -x
docker run -d -p 80:80 --name my-apache-php-app php:7.2-apache
sleep 1
docker cp /php_selenium_test/src/. my-apache-php-app:/var/www/html
set +x

echo 'Now...'
echo 'Visit http://172.17.0.2 to see your PHP application in action.'

