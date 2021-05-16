#!/bin/bash

cd dockerfiles && docker-compose exec php-fpm "$@" && cd ..