FROM ruby:2.1

# Tools
RUN gem install rake
RUN gem install bundler

# Java
RUN apt-get update
RUN apt-get install default-jre
RUN apt-get install default-jdk

# Add application source
ADD . /app
WORKDIR /app

# Install dependencies
RUN bundle install

#CMD ["./your-daemon-or-script.rb"]
