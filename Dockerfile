# Custom from https://hub.docker.com/r/grahamc/jekyll/

FROM ruby:2.2
MAINTAINER ibotdotout

RUN apt-get update -y && apt-get install -y nodejs python-pygments && apt-get clean

WORKDIR /src
ADD Gemfile /src/Gemfile

RUN bundle install

VOLUME /src
EXPOSE 4000
CMD ["jekyll"]
