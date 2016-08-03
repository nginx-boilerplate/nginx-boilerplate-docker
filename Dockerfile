FROM        nginx
MAINTAINER  Michael Gorianksyi <goreanski@gmail.com>
ADD         nginx-boilerplate   /etc/nginx
ADD         www/                /var/www/nginx.boilerplate/
