#!/bin/bash

source .env
containerName="php81_$APP_NAME"
docker exec -it -u 0 $containerName pecl install xdebug

docker cp ./docker/configs/phpfpm/init-xdebug.sh $containerName:/usr/local/etc/php/conf.d