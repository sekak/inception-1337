FROM debian:bookworm

RUN apt update && apt install -f -y \
    php8.2-cli \
    php8.2-fpm \
    php8.2-mysql \
    php-json \
    php8.2-curl curl \
    mariadb-client 
 
 
 
#install wp-cli.phar and give permission to execute and put in this path /usr/local/bin/wp , for use such a cmd;
RUN  curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar 
COPY file.sh /home/file.sh
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

#change in file www.conf from listen in that path "run/php/php8.2-fpm.sock" to 0.0.0.0:9000
# s|pattern|replacement|g to listen from machine to any ip address
RUN sed -i "s|listen = /run/php/php8.2-fpm.sock|listen = 0.0.0.0:9000|g" /etc/php/8.2/fpm/pool.d/www.conf

ENTRYPOINT [ "sh", "/home/file.sh" ]
 
CMD [ "php-fpm8.2","-F" ]



 

