FROM 	debian:stretch-slim

ENV	DEBIAN_FRONTEND noninteractive
RUN set -eux ; \
	apt update ; \
    apt -y install php-bcmath php-curl php-imagick     \
        php-gd php-mbstring php-xml php-zip php-mysql  \
        libapache2-mod-php php-redis ; \
    rm -rf /var/lib/apt/lists/* ; \
    a2enmod rewrite ; \
    a2dismod status ; \
    sed -i 's/session.save_handler = files/session.save_handler = redis/g' /etc/php/7.0/apache2/php.ini ; \
    sed -i '/session.save_handler/a session.save_path = "tcp://redis"' /etc/php/7.0/apache2/php.ini

ADD	https://wordpress.org/latest.tar.gz /var/www

RUN	set -eux ; \
	tar xzf /var/www/latest.tar.gz -C /var/www ; \
	rm -rf /var/www/latest.tar.gz ; \
        rm -rf /var/www/html ; \
	mv /var/www/wordpress /var/www/html ; \
	chown -R www-data. /var/www/html ; \
	ln -sfT /dev/stdout /var/log/apache2/access.log ; \
	ln -sfT /dev/stderr /var/log/apache2/error.log 

VOLUME /var/www/html

EXPOSE	80
ENTRYPOINT [ "/usr/sbin/apachectl", "-D", "FOREGROUND"]