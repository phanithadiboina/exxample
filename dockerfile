FROM nginx

MAINTAINER Siva <sivathadiboina245@gmail.com>

RUN apt-get update && apt-get install -y unzip

ADD https://github.com/cloudacademy/static-website-example/archive/master.zip  /usr/share/nginx/html/

RUN cd /usr/share/nginx/html && unzip master.zip && mv static-website-example-master/* /usr/share/nginx/html