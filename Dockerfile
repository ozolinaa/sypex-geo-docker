FROM php:7.4.28-zts-alpine3.15
RUN apk add zip unzip php-zip
RUN mkdir -p /opt/app
WORKDIR /opt/app

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

COPY . . 
RUN composer install

RUN php -r "copy('https://sypexgeo.net/files/SxGeoCity_utf8.zip', 'SxGeoCity_utf8.zip');" && unzip SxGeoCity_utf8.zip && rm SxGeoCity_utf8.zip

CMD [ "php", "./server.php", "--host=0.0.0.0", "--port=16001", "--file=SxGeoCity.dat" ]
EXPOSE 16001
