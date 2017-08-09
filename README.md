# Deprecated

Please see [nginx boilerplate](https://github.com/nginx-boilerplate/nginx-boilerplate) instead.







# Nginx Boilerplate Docker image

[![Chat](https://img.shields.io/gitter/room/gitterHQ/gitter.svg)](https://gitter.im/nginx-boilerplate/nginx-boilerplate-docker)

Pre-configured Nginx-boilerplated Docker setup

## Requirements
 * [Docker toolbox](https://www.docker.com/docker-toolbox) (just [Docker Engine](https://www.docker.com/docker-engine) is sufficient for Linux) 
 * [Docker Compose](https://docs.docker.com/compose/install/)
 * `/etc/hosts` might need a change for local development (see `.hosts`) 

## Usage
 * `git submodule update --init`
 * Modify `nginx-boilerplate/` contents according to your needs
 * Modify `docker-compose.yml` as you see fit
 * Run `docker-compose up`
 * Open `http://127.0.0.1` in browser
 * Auto-reload nginx config for convenience `watch docker-compose exec nginx nginx -s reload`
