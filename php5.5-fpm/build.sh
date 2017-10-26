#!/bin/bash

chmod 777 docker-*
docker images -q --filter dangling=true | xargs docker rmi
docker build -t php55 .
docker create php55
