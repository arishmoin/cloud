FROM centos:latest
MAINTAINER arishmoin@gmail.com
RUN yum install -y \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page274/branding.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip branding.zip
RUN cp -vrf branding/* .
RUN rm -rf branding branding.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUNG"
EXPOSE 80
