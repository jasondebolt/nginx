# BUILD USING build build -t jasondebolt/nginx .
# RUN USING docker run -d -p 80:80 jasondebolt/nginx
# ATTACH using docker exec -it {container sha} bash

FROM jasondebolt/base

RUN apt-get update -y
RUN apt-get install -y nginx

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

CMD nginx -g 'daemon off;'
