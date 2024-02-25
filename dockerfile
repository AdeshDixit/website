FROM ubuntu

RUN sudo apt update | sudo apt install apache2 | sudo systemctl start apache2 | sudo systemctl enable apache2

COPY . /var/www/html

