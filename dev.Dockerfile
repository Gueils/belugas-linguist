FROM ruby:2.3.1

RUN apt-get update && apt-get install -y libicu-dev cmake

RUN mkdir -p /usr/src/app
ADD ./Gemfile* /usr/src/app/
ADD . /usr/src/app
WORKDIR /usr/src/app

RUN gem install bundler --no-ri --no-rdoc

RUN bundle
