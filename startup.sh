#! /bin/bash
cd /var/www
docker build -t digix/sinatra .
docker run --name=digix --rm -it -d -p 3000:3000 digix/sinatra 