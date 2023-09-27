
# echo  create wordpress directory
# bash -c "mkdir /var/www/wordpress"

mkdir /var/www/wordpress

echo  give permissions wordpress directory
# bach -c "chmod 777 /var/www/wordpress"
 chmod 777 /var/www/wordpress 

cd /var/www/wordpress


echo download wp
wp core download --allow-root


echo "cp wp-config-simple.php to wp-config.php"
cp wp-config-sample.php wp-config.php

# echo "create config"
# wp config create --dbname=med --dbuser=med --dbpass=med  --dbhost=db --allow-root
# php-fpm8.2 -F


# sleep infinity 
# echo download wordpress
# if [ $(ls | wc -l) -gt 10 ]; then
#   echo "File exists"
# else
#   wp core download --allow-root
# fi


# echo "create config"
# # wp config create --dbname=med --dbuser=med --dbpass=med  --dbhost=db --allow-root
# if [ "$(ls | grep "wp-config.php")" ]; then
#   echo "wp-config.php exists."
# else