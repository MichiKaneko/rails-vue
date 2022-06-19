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



