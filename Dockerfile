FROM ruby:2.3.5

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      nodejs

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install

ADD . /usr/src/app
RUN rails db:migrate

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]

# docker build -t rspecdockerappimage .
# docker run -p 3000:3000 rspecdockerappimage
