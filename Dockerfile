FROM centos: latest
RUN yun install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/dowwnload/page247/kinle.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/hhtpd", "-D", " FOREGROUND"]
EXPOSE 80
