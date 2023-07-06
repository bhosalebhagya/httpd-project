FROM  rockylinux:8
MAINTAINER amey@gmail.com
RUN yum install httpd -y
ADD 2.tar.gz /var/www/html/
WORKDIR /var/www/html/
RUN cd /var/www/html/
RUN yum install unzip -y
RUN unzip photogenic.zip
RUN cp -r /var/www/html/photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

 
 
# FROM  centos:latest
# MAINTAINER vikashashoke@gmail.com
# RUN yum install -y httpd \
#  zip\
#  unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip shine.zip
# RUN cp -rvf shine/* .
# RUN rm -rf shine shine.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80   
