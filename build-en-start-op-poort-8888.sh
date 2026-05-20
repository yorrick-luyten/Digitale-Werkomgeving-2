#!/bin/bash

docker build --no-cache -t demo-site-missing-manual .

docker stop demo-site-container
docker rm demo-site-container

docker run -d \
	--name demo-site-container \
	-p 8888:80 \
	demo-site-missing-manual
