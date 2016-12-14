# DockerEnv
Simple Docker container set for backend (PHP7) and frontend (JS MV* frameworks) apps development. 

## Containers included
* php-fpm 7 (mysql, mcrypt, gd, curl, intl, redis, mbstring, mongodb extensions)
* nginx with two virtual hosts: box.dev (root - /var/app/frontend/web) and backend.box.dev (root - /var/app/backend/web)
* nginx-proxy for handling virtual hosts ([https://github.com/jwilder/nginx-proxy](https://github.com/jwilder/nginx-proxy))
* MariaDB 10 on port 3306. root passwd: root. Kickstart db: db_box
* MongoDB 3.2 on port 27017. Web console available at `http://127.0.0.1:28017/`. No auth by default. Check container docs for more options [https://hub.docker.com/r/tutum/mongodb/](https://hub.docker.com/r/tutum/mongodb/)
* Redis 3.2 alpine on port 6379
* Elasticsearch 5 alpine on port 9200
* Kibana 5 on port 5601

## Usage
1. Install [Docker](https://www.docker.com/products/overview)
2. `git clone https://github.com/RagnarIndie/DockerEnv.git`;
3. Add lines to your hosts file: 
```
127.0.0.1 box.dev
127.0.0.1 backend.box.dev
```
4. Run *.sh script to start/stop containers inside box root dir:
`./run.sh` to start containers and
`./stop.sh` to stop and delete containers
5. You can put your PHP app inside ./app/backend (./app/backend/web - backend app webroot)
6. You can put your frontend app (i.e. Ember.js or any other JS MV* app) inside ./app/frontend/web
7. Both virtual hosts (box.dev and backend.box.dev) are available on 8080 port. I.e.: http://backend.box.dev:8080/ will open PHP backend app
8. To remove container images completely run `./remove-images.sh`
9. To show all image sizes run `./images.sh`
10. You can always get containers status with `docker ps`
