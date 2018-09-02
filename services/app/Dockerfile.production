FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
ENV PROJECT_ROOT /usr/src/app
WORKDIR $PROJECT_ROOT

COPY Gemfile $PROJECT_ROOT
COPY Gemfile.lock $PROJECT_ROOT

RUN bundle install --system

COPY . $PROJECT_ROOT
RUN bundle install --system

CMD ["bundle", "exec", "ruby", "app.rb"]