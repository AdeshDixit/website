FROM ubuntu

# Install Apache and update packages
RUN apt update -y && \
    apt install apache2 -y && \
    apt clean

# Start Apache and enable it to start on boot
RUN systemctl start apache2 && \
    systemctl enable apache2

# Copy files into the web server's document root directory
COPY . /var/www/html

