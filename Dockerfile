FROM ruby:2.2
MAINTAINER ibotdotout

RUN apt-get update -y && apt-get install nodejs

WORKDIR /src
ADD Gemfile /src/Gemfile

RUN bundle install

VOLUME /src
EXPOSE 4000
CMD ["jekyll"]
