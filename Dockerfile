FROM ruby:2.5-alpine

LABEL maintainer="Ivan de la Beldad Fernandez <ivandelabeldad@gmail.com>"

RUN apk add --update build-base && \
    gem install travis

COPY entrypoint.sh /usr/local/bin/

WORKDIR /travis

ENTRYPOINT [ "entrypoint.sh" ]
