#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
yarn install
yarn build # jsファイルをesbuildでバンドルしているため
yarn build:css
bundle exec rake assets:precompile # cssはsprocketsを使っているため
bundle exec rake assets:clean
# bundle exec rake db:migrate 一旦コメントアウト
# bundle exec ridgepole -c config/database.yml -E production --apply -f db/schemas/Schemafile # migrateはridgepoleを使っているため（標準のmigrateを使うならbundle exec rails db:migrateで良いかと思います）

# 以下の2行を追加
DISABLE_DATABASE_ENVIRONMENT_CHECK=1 bundle exec rake db:migrate:reset
bundle exec rake db:seed