FROM devopsedu/webapps
RUN apt update -y
RUN apt install apache2 -y
RUN rm -rf /var/www/html/
COPY . /var/www/html/
CMD apachectl -D FOREGROUND
