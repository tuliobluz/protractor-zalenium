FROM node:8.9.3

RUN mkdir -p /usr/app/protractor

WORKDIR /usr/app/protractor

ADD . .

# install Java
RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y -t jessie-backports openjdk-8-jre
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN npm install
RUN npm run webdriver-update
CMD npm run e2e