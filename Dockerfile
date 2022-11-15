# Define the base image on top of which we are going to customize
FROM devopsedu/webapp

# Define the Createor and Maintainer of this image
MAINTAINER Sandeep Reddy <sandeee2403@gmail.com>

# Run the command to install apache as a prerequisite
RUN apt-get update && apt-get install -y apache2

# Run the command to Create a DocumentRoot
RUN mkdir -p /var/www/html

COPY . /  

VOLUME ["proj1"]

# Say that our application is exposing a Port
EXPOSE 80

# the Default command and the Command to start the app in our container
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
