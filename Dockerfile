FROM debian:stable-slim

ENV DEBIAN_FRONTEND noninteractive

RUN	apt update && \
	apt install -y curl apache2 php php-mysql && \
    a2enmod rewrite && \
    a2dismod status && \
    cd /var/www && \
    curl https://wordpress.org/latest.tar.gz | tar -xz && \
    rm -rf html && \
    mv wordpress html && \
    ln -sf /dev/stdout /var/log/apache2/access.log && \
    ln -sf /dev/stderr /var/log/apache2/error.log && \
    rm  -r /var/log/apt/* /var/cache/apt/archives/ /usr/share/doc/ /usr/share/man /usr/include

EXPOSE 80

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]