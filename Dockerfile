FROM  centos:latest
MAINTAINER amey@gmail.com
RUN yum install httpd -y 
Run wget https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip
Run tar -cvf 2.tar photogenic.zip
Run gzip 2.tar
ADD 2.tar /var/www/html/
WORKDIR /var/www/html/
RUN cp -rvf photogenic/* .
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
