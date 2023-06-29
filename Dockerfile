FROM ruby:3.2-alpine

ARG RAILS_ROOT=/budget_tracker
ARG PACKAGES="vim openssl-dev postgresql-dev build-base curl nodejs yarn less tzdata git postgresql-client bash screen gcompat python3 imagemagick"

RUN apk update \
  && apk upgrade \
  && apk add --update --no-cache $PACKAGES

RUN gem install bundler:2.1.4

RUN mkdir $RAILS_ROOT
WORKDIR $RAILS_ROOT

COPY Gemfile Gemfile.lock  ./
RUN bundle install --jobs 5

ADD . $RAILS_ROOT
ENV PATH=$RAILS_ROOT/bin:${PATH}

EXPOSE 4444
CMD bundle exec rails s -b '0.0.0.0' -p 4444

