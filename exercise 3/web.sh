#!/bin/bash
yum install wget unzip http -y
systemctl start httpd
systemctl enable httpd
wget https://www.tooplate.com/zip-templates/2130_waso_strategy.zip
unzip -o 2130_waso_strategy.zip
cp -r 2130_waso_strategy/* /var/www/html/
systemctl restart httpd