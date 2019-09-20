FROM debian:stretch

RUN apt-get update -yy \
    && apt-get -yy install \
      build-essential \
      default-libmysqlclient-dev \
      ruby2.3 \
      git \
      patch ruby2.3-dev \
      zlib1g-dev \
      liblzma-dev \
      nodejs

RUN gem install bundler
RUN gem install rake

ENV BUNDLE_GEMFILE=/tmp/Gemfile
WORKDIR /tmp
ADD Gemfile Gemfile.lock ./
RUN bundle

WORKDIR /app
