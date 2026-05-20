FROM nginx:1.27.3-alpine

COPY html/ /usr/share/nginx/html/

RUN date > /usr/share/nginx/html/buildtime.txt
