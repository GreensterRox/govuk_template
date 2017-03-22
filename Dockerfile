FROM ruby:2.1

# Tools
RUN gem install rake
RUN gem install bundler

# Java
RUN apt-get update
RUN apt-get install default-jre
RUN apt-get install default-jdk
RUN apt-get install python-pip python-dev build-essential
RUN apt-get install npm

# Add required programs to PATH
RUN ln -s /root/.local/bin/virtualenv /usr/local/bin/virtualenv
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Add application source
ADD . /app
WORKDIR /app

# Install dependencies
RUN bundle install

#CMD ["./your-daemon-or-script.rb"]
