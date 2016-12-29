# 1: Use ruby 2.3.3 as base:
FROM ruby:2.3.3

# 2: We'll set this app path as the working directory
WORKDIR /usr/src/app

# 3: We'll set the working dir as HOME and add the app's binaries path to $PATH:
ENV HOME=/usr/src/app PATH=/usr/src/app/bin:$PATH

# 4: Install project dependencies:
RUN apt-get update \
  && apt-get install -y --no-install-recommends libicu-dev cmake \
  && rm -rf /var/lib/apt/lists/*

# 4: Set the default command:
CMD ["guard"]
