#!/bin/bash
#Update server
sudo apt update && sudo apt upgrade -y
#Install & start running Apache
sudo apt install apache2 -y
sudo service apache2 start
#Download the zipped file
wget https://github.com/waleolajumoke/finance-app/archive/refs/heads/main.zip
#Download the unzip feature
sudo apt install unzip
#Unzip the file and copy its content to the apache directory
unzip main.zip
sudo cp -r finance-app-main/* //var/www/html
#Tell me where i can view the uploaded static website
my_ip=$(ip a | sed -nr '13p' | awk '{print $2}')
echo "Your file has now been uploaded on $my_ip

To view your completed project, enter $my_ip  on your browser"

