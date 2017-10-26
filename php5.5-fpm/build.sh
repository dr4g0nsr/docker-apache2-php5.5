#!/bin/bash
docker images -q --filter dangling=true | xargs docker rmi
docker build -t php55 .
# --rm . --no-cache=true
