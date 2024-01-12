FROM alpine:latest

RUN apk --no-cache add apache2 php apache2-proxy php-apache2 php-openssl php-session php-mysqli

RUN mkdir -p /run/apache2

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]
