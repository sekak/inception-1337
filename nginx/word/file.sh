
bash -c "apt install -y sendmail"



mkdir /var/www/wordpress 
chmod 777 /var/www/wordpress
 
cd /var/www/wordpress 
 
 
if [ $(ls | wc -l) -gt 40 ]; then
  echo "File exists"
else
  wp core download --allow-root
fi 

echo "create wp-config"
sed -i "s/username_here/med/g" wp-config-sample.php
sed -i "s/password_here/med/g" wp-config-sample.php
sed -i "s/localhost/db/g" wp-config-sample.php
sed -i "s/database_name_here/med/g" wp-config-sample.php
cp wp-config-sample.php wp-config.php

echo "Installing WordPress deps..."
wp core install --allow-root --url=https://asekkak.42.fr --title=med --admin_user=med --admin_password=med --admin_email=med@gmail.com

echo "Creating users..."
wp user create med med@gmail.com --role=administrator --user_pass=med --path=/var/www/wordpress --allow-root

wp user create ahmed ahmed@gmail.com --role=editor --user_pass=ahmed --path=/var/www/wordpress --allow-root 

php-fpm8.2 -F
# sleep infinity