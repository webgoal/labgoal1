FROM ruby:latest
WORKDIR /opt/app

RUN apt-get update -qq && apt-get install -y --no-install-recommends -qq \
    apt-transport-https nano build-essential libcurl4-gnutls-dev mysql-client

EXPOSE 3000
CMD rails s -b '0.0.0.0'
