# Rubyのバージョンを指定した公式イメージをベースに使用
FROM ruby:3.2.3

# 必要なパッケージのインストール
RUN apt-get update -qq \
  && apt-get install -y nodejs postgresql-client npm vim \
  && rm -rf /var/lib/apt/lists/* \
  && npm install --global yarn

# コンテナの作業ディレクトリを指定
RUN mkdir /myapp
WORKDIR /myapp

# ホストのGemfileとGemfile.lockをコンテナにコピー
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

# bundle installを実行
RUN bundle install

# カレントディレクトリのファイルをコンテナにコピー
ADD . /myapp

# コンテナ起動時に実行されるスクリプトをコピーして実行可能にする
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

# コンテナが外部に公開するポート番号を指定
EXPOSE 3000

# コンテナ起動時に実行されるメインプロセスを指定
ENTRYPOINT ["entrypoint.sh"]
CMD ["rails", "server", "-b", "0.0.0.0"]