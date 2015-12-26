FROM        nginx
MAINTAINER  Mike Gorianskyi goreanski@gmail.com
COPY        nginx-boilerplate/ /etc/nginx/
VOLUME      /etc/nginx/
