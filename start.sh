#!/bin/bash
set -e
docker-machine start || true
docker-machine regenerate-certs || true
eval $(docker-machine env) || true
mv ~/Projects ~/.Projects || true
mv ~/projects ~/.projects || true
docker-compose build
docker-compose pull
docker-compose run app bundle install
docker-compose up app
