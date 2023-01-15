FROM ruby:3.1.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

ENV APP_HOME /home/www/pg_search
WORKDIR $APP_HOME

COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock
RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

COPY . $APP_HOME
