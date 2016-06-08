FROM        nginx
MAINTAINER  Mike Gorianskyi goreanski@gmail.com
COPY        nginx-boilerplate/ /etc/nginx/
COPY        www/ /var/www/nginx.boilerplate/
VOLUME      /var/www/nginx.boilerplate/
EXPOSE      80 443
RUN         apt-get update && apt-get install -y wget unzip && \
            wget -O /tmp/ct.zip https://releases.hashicorp.com/consul-template/0.14.0/consul-template_0.14.0_linux_amd64.zip && \
            unzip /tmp/ct.zip && \
            mv consul-template /usr/bin/
