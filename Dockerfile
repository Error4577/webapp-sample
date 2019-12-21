FROM ruby:2.6.3

ENV APP_ROOT /app

WORKDIR $APP_ROOT

ADD Gemfile $APP_ROOT
ADD Gemfile.lock $APP_ROOT

RUN \
  rm Gemfile.lock && \
  gem install bundler -v 2.0.2 && \
  bundler 2.0.2 install && \
  rm -rf ~/.gem

ADD . $APP_ROOT

EXPOSE 4567
CMD ["bundle", "exec", "ruby", "app.rb", "-o", "0.0.0.0"]