FROM ruby:2.2
MAINTAINER ibotdotout


ADD Gemfile /src
WORKDIR /src

RUN bundle install

VOLUME /src
EXPOSE 4000
CMD ["jekyll"]
