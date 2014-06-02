FROM      ubuntu
MAINTAINER srinivas srinivas.iyer@relevancelab.com

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list
RUN apt-get update

RUN apt-get install -y apache2
RUN apt-get install telnet redis-server




RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10



EXPOSE 80 6379

CMD ["/etc/init.d/redis-server", "start"]