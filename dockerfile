FROM ubuntu

RUN apt update -y | apt install apache2 -y | systemctl start apache2 | systemctl enable apache2

COPY . /var/www/html

