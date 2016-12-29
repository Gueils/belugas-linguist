# 1: Use ruby 2.3.3 as base:
FROM ruby:2.3.3

# 2: We'll set the application path as the working directory
WORKDIR /usr/src/app

# 3: We'll add the app's binaries path to $PATH, and set the environment name to 'production':
ENV HOME=/usr/src/app PATH=/usr/src/app/bin:$PATH

# 4: Copy just the Gemfile & Gemfile.lock, to avoid the build cache failing whenever any other
# file changed and installing dependencies all over again - a must if your'e developing this
# Dockerfile...
ADD ./Gemfile* /usr/src/app/

# 5: Install build + runtime dependencies, install/build the app gems, and remove build deps:
RUN set -ex \
  && apt-get update \
  && apt-get install -y libicu-dev cmake \
  && bundle install --without development test

# 6: Copy the rest of the application code, then change the owner of the code to 'app':
ADD . /usr/src/app

VOLUME /code
WORKDIR /code

# 4: Set the default command:
CMD [ "/usr/src/app/bin/sonar", "/code" ]
