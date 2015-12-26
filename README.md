#Nginx Boilerplate Docker image

Preconfigured Nginx-boilerplated Docker image 

## Requirements
 * [Docker toolbox](https://www.docker.com/docker-toolbox) (just [Docker Engine](https://www.docker.com/docker-engine) is sufficient for Linux) 
 * [Docker Compose](https://docs.docker.com/compose/install/)
 * `/etc/hosts` might need a change for local development (see `.hosts`) 

## Usage
 * `git submodule update --init`
 * Modify `nginx-boilerplate/` contents according to your needs
 * Modify `docker-compose.yml` as you see fit
 * `docker-compose up`
 * Open `http://nginx.boilerplate/` in browser
