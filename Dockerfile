FROM        nginx
MAINTAINER  Mike Gorianskyi goreanski@gmail.com
COPY        nginx-boilerplate/ /etc/nginx/
COPY        www/ /var/www/nginx.boilerplate/
VOLUME      /etc/nginx/
