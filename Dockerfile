FROM amazonlinux:latest
RUN yum update -y
RUN yum install httpd -y
COPY ./webpage/index.html /var/www/html
CMD ["httpd", "-D", "FOREGROUND"]
EXPOSE 80
