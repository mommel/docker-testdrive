FROM ubuntu:14.04

RUN apt-get -y install wget
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
RUN sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
RUN apt-get update && apt-get -y install nodejs default-jre libxpm4 libxrender1 libgtk2.0-0 libnss3 libgconf-2-4
RUN apt-get -y install google-chrome-stable
RUN apt-get -y install automake libtool

WORKDIR /var/www/html

ADD scripts/setup.sh /tmp/setup.sh
CMD ["/tmp/setup.sh"]