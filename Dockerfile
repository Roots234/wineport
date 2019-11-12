FROM ruby:2.5.3

RUN curl -sL https://deb.nodesource.com/setup_9.x |bash -
RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs


RUN mkdir /myapp

ENV APP_ROOT /myapp
WORKDIR $APP_ROOT

COPY ./Gemfile $APP_ROOT/Gemfile
COPY ./Gemfile.lock $APP_ROOT/Gemfile.lock

RUN bundle install
COPY . $APP_ROOT

CMD ["rails", "server", "-b", "0.0.0.0"]
