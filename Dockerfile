FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.0.0

RUN gem install dbc --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dbcparse.rb"]
CMD ["--help"]
