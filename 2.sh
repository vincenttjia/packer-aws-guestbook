sudo mv /tmp/guestbook.conf /etc/apache2/sites-available/guestbook.conf
sudo a2ensite guestbook.conf
sudo a2dissite 000-default.conf
git clone https://github.com/vincenttjia/guestbook.git
sudo mv guestbook/ /var/www/guestbook 
sudo chmod -R 755 /var/www/guestbook
sudo chown -R www-data:www-data /var/www/guestbook
sudo cp /var/www/guestbook/.env.prod /var/www/guestbook/.env
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto > /tmp/logfile
sudo systemctl restart apache2
cd /var/www/guestbook
sudo php artisan key:generate