# Version: 0.0.1
FROM ubuntu:16.04
MAINTAINER Jaime Astarloa "jastarloa@gmail.com"
RUN apt-get update && apt-get install -y nginx
RUN echo "Hi, I am in your new container" > /var/www/html/index.html
EXPOSE 22 80
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-h"]
