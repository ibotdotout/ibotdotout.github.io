FROM ruby:2.2
MAINTAINER ibotdotout

RUN bundle install

VOLUME /src
EXPOSE 4000

WORKDIR /src
CMD ["jekyll"]
