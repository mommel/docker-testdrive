FROM ubuntu:14.04

RUN apt-get update && apt-get -y install nodejs libsass default-jre libxpm4 libxrender1 libgtk2.0-0 libnss3 libgconf-2-4 google-chrome-stable 

WORKDIR /var/www/html

ADD scripts/setup.sh /tmp/setup.sh
CMD ["/tmp/setup.sh"]