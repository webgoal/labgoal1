FROM ruby:latest
WORKDIR /opt/app

RUN apt-get update -qq && apt-get install -y --no-install-recommends -qq \
    apt-transport-https nano build-essential libcurl4-gnutls-dev

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
RUN chmod +x nodesource_setup.sh && ./nodesource_setup.sh

RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    mysql-client yarn nodejs

EXPOSE 3000
CMD rails s -b '0.0.0.0'
