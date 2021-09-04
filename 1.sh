sudo apt update
sudo add-apt-repository -y ppa:ondrej/php
sudo apt install -y apache2 openssl php7.4 php7.4-common php7.4-curl php7.4-json php7.4-mbstring php7.4-mysql php7.4-xml php7.4-zip php7.4-redis ruby-full
sudo a2enmod rewrite