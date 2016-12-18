FROM busybox

ADD config/nginx/conf.d /etc/nginx/
ADD config/php-fpm.conf /usr/local/etc/php-fpm.conf
ADD config/php.ini /usr/local/etc/php/conf.d/php.ini
ADD html /usr/share/nginx/
ADD https://github.com/gboudreau/nest-api/archive/master.zip /usr/share/html
VOLUME /etc/nginx/conf.d
VOLUME /usr/local/etc/php-fpm.conf
VOLUME /usr/local/etc/php/conf.d/php.ini
VOLUME /usr/share/nginx/html
VOLUME /var/lib/mysql
