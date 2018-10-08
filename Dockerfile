FROM ubuntu:16.04

RUN mkdir -p /usr/app/protractor

WORKDIR /usr/app/protractor

ADD . .
RUN apt-get update
RUN apt-get install -y curl wget dpkg
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y default-jdk
RUN npm install
RUN npm run webdriver-update
CMD npm run e2e