# 1. Base Image
FROM centos:latest

# 2.writer
MAINTAINER 0.1 heejong oh

# 3.Apache HTTP Server Install
RUN yum -y install httpd

# 4.Web Contents
ADD html/ /var/www/html/

# 5.Port Number
EXPOSE 80

# 6.httpd Run
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]