# This is build my own apache
FROM centos:latest
MAINTAINER mohan@y2ytech.com
RUN yum  -y update
RUN yum -y install httpd
EXPOSE 80
ADD code /var/www/html
CMD ["apachectl","-D","FOREGROUND"]
