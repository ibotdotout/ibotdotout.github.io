# Custom from https://hub.docker.com/r/grahamc/jekyll/

FROM ruby:2.2
MAINTAINER ibotdotout

ENV RUBYOPT "-KU -E utf-8:utf-8"

WORKDIR /src
ADD Gemfile /src/Gemfile
# ADD Gemfile.lock /src/Gemfile.lock

RUN bundle install

VOLUME /src
EXPOSE 4000
CMD ["jekyll", "serve"]
