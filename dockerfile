FROM ubuntu

# Install Apache and update packages
RUN apt update -y && \
    apt install apache2 -y && \
    apt clean

# Start Apache and enable it to start on boot
RUN service apache2 start && \
    service apache2 enable

# Copy files into the web server's document root directory
COPY . /var/www/html

