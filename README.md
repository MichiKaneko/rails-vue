# rails-vue
RailsとVue.jsを利用したアプリケーションのサンプル

# Ruby version
2.7.4

# Deployment instructions
1. Dockerイメージをビルド
```
$ docker-compose　build
```
2. DBを作成
```
$ docker-compose run web rails db:create
```

3. コンテナを起動
```
$ docker-compose up
```
バックグラウンドで起動する場合は -d　オプションをつける

4. コンテナの停止（-dオプションをつけて起動した場合）

```
docker stop rails-vue-web rails-vue-db
```
# そのほか使い方
## Railsのコンテナに入る
```
$ docker exec -it rails-vue-web bash
```
## DBのコンテナに入る
```
$ docker exec -it rails-vue-db bash
```

