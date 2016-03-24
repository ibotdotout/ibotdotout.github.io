# Custom from https://hub.docker.com/r/grahamc/jekyll/

FROM ruby:2.2
MAINTAINER ibotdotout

WORKDIR /src
ADD Gemfile /src/Gemfile

RUN bundle install

VOLUME /src
EXPOSE 4000
CMD ["jekyll", "serve"]
