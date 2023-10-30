# Use the base image (make sure it contains Apache and PHP)
FROM devopsedu/webapps

# Copy your PHP application files to the web server's directory
ADD proj /var/www/html

# Remove the default index.html (if necessary)
RUN rm /var/www/html/index.html

# Start Apache with the foreground option
CMD ["apachectl", "-D", "FOREGROUND"]
