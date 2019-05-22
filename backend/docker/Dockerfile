FROM ruby:2.5.3

ARG RAILS_ENV=production
ENV RAILS_ENV=$RAILS_ENV \
  RAILS_LOG_TO_STDOUT=enabled \
  RAILS_SERVE_STATIC_FILES=enabled

WORKDIR /app

RUN apt-get update -qq \
  && apt-get install -y build-essential libreadline-dev libyaml-dev libxml2-dev \
    mysql-client

COPY Gemfile Gemfile.lock /app/
RUN gem install -N bundler \
  && bundle install --without development test \
    --with production $RAILS_ENV \
    --jobs 2 --retry 3

EXPOSE 3000

COPY docker/bin/startapp.sh /bin/startapp
COPY . /app


CMD ["/bin/startapp"]
