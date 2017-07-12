FROM httpd:alpine

MAINTAINER Garrett
MAINTAINER Nelson

RUN echo "Include conf/extra/httpd.conf" >> /usr/local/apache2/conf/httpd.conf

RUN echo "Include conf/extra/override/*.conf" >> /usr/local/apache2/conf/httpd.conf

RUN mkdir /usr/local/apache2/conf/extra/override

COPY httpd.conf /usr/local/apache2/conf/extra/httpd.conf

COPY server.crt /var/www/server_certs/

COPY server.key /var/www/server_certs/
