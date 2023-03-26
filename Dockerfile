FROM nginx:1.23.3-alpine

RUN apk update && \
    apk add --no-cache openssl && \
    openssl req -x509 -nodes -days 90 \
     -subj  "/C=CA/ST=QC/O=Askbow/CN=teapot.netology.askbow.io" \
     -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key \
     -out /etc/ssl/certs/nginx-selfsigned.crt && \
    curl https://ssl-config.mozilla.org/ffdhe2048.txt -o  /etc/ssl/dhparam;

COPY nginx-sites-enabled-default /etc/nginx/conf.d/default.conf
