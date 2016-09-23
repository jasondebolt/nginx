# BUILD USING build build -t jasondebolt/nginx .
# RUN USING docker run -d -p 80:80 jasondebolt/nginx
# ATTACH using docker exec -it {container sha} bash

FROM jasondebolt/base

RUN apt-get install -y nginx

CMD nginx -g 'daemon off;'
