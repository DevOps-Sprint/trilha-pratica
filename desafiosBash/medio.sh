#!/bin/bash
docker network create devops_net
docker run -d --name nginx_container --network devops_net nginx
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' nginx_container