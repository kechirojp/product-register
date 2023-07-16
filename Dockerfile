FROM ruby:2.5
RUN  apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /product-register

# GemfileはRails専用ライブラリインストールツール
COPY Gemfile Gemfile.lock /product-register/
# bundle install　はRails専用インストール記述方法
RUN bundle install